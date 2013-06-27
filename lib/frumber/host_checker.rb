class Frumber
  module HostChecker
    private
    VALID_DOMAIN_REGEX = /^(https?:\/{2})?(w{3}\.)?(?<domain>youtube|youtu|nicovideo|vimeo|soundcloud)\.(jp|com|be)+\//
    def url_host url
      url.downcase.match(VALID_DOMAIN_REGEX)[:domain]
    end
  end
end
