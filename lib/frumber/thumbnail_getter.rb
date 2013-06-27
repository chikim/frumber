class Frumber
  class ThumbnailGetter
    class << self
      include Frumber::HostChecker

      def get url
        begin
          case url_host(url)
          when "youtube", "youtu"
            YouTubeIt::Client.new.video_by(url).thumbnails[3].url
          when "vimeo"
            Vimeo::Simple::Video.info(url.split("/").last).parsed_response.first["thumbnail_large"]
          when "soundcloud"
            Soundcloud.new(client_id: Provider::Soundcloud::CLIENT_ID).
              get('/resolve', url: url).artwork_url.gsub("-large","-t500x500")
          when "nicovideo"
            Nicovideo::Thumbnail.new.get(url.split("/").last)["thumbnail_url"]
          else
            nil
          end
        rescue
          nil
        end
      end
    end
  end
end
