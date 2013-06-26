require 'youtube_it'
require 'vimeo'
require 'soundcloud'
require 'nicovideo'

require 'frumber/iframe_getter'
require 'frumber/thumbnail_getter'
require 'provider'

class Frumber
  class << self
    def get url
    end
  end

  private
  VALID_DOMAIN_REGEX = /^(https?:\/{2})?(w{3}\.)?(?<domain>youtube|youtu|nicovideo|vimeo|soundcloud)\.(jp|com|be)+\//
  def self.url_host url
    url.downcase.match(VALID_DOMAIN_REGEX)[:domain]
  end
end
