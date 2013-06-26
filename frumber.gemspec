Gem::Specification.new do |s|
  s.name        = "frumber"
  s.version     = "0.0.0"
  s.date        = "2013-06-26"
  s.summary     = "Frumber"
  s.description = "Framgia's iframe and thumbnail getter"
  s.authors     = ["ChiKim"]
  s.email       = "nguyen.dang.huy@framgia.com"
  s.homepage    = "http://github.com/chikim/frumber"
  s.files       = [
    "lib/frumber.rb",
    "lib/frumber/iframe_getter.rb",
    "lib/frumber/thumbnail_getter.rb",
    "lib/provider.rb",
    "lib/provider/nicovideo.rb",
    "lib/provider/soundcloud.rb",
    "lib/provider/vimeo.rb",
    "lib/provider/youtube.rb",
  ]

  s.add_runtime_dependency "ruby-oembed"
  s.add_runtime_dependency "youtube_it"
  s.add_runtime_dependency "vimeo"
  s.add_runtime_dependency "soundcloud"
  s.add_runtime_dependency "nicovideo"
end
