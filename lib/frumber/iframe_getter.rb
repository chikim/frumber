require 'oembed'

class Frumber
  class IframeGetter
    class << self
      include Frumber::HostChecker

      def get url, width = 800
        case url_host(url)
        when "youtube", "youtu"
          OEmbed::Providers::Youtube.get(url, width: width).fields["html"]
        when "vimeo"
          OEmbed::Providers::Vimeo.get(url, width: width).fields["html"]
        when "soundcloud"
          Soundcloud.new(client_id: Provider::Soundcloud::CLIENT_ID).
            get('/oembed', url: url).html
        when "nicovideo"
          "<iframe width=\"#{width}\" height=\"#{(width*0.75).to_i}\" src=\"http://ext.nicovideo.jp/thumb_watch/#{url.split("/").last}?thumb_mode=html\" frameborder=\"0\" allowfullscreen></iframe>"
        else
          nil
        end
      end
    end
  end
end
