# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "neo-asset_sync/version"
require "zlib"

Gem::Specification.new do |s|
  s.name        = "neo-asset_sync"
  s.version     = AssetSync::VERSION
  s.date        = "2015-10-24"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Paul R. Nash"]
  s.email       = ["prnash@gmail.com"]
  s.homepage    = "https://github.com/paulrnash/asset_sync"
  s.summary     = %q{Synchronizes Assets in a Rails 3/4 application and Amazon S3/Cloudfront, Google Cloud Storage and Rackspace Cloudfiles}
  s.description = %q{After you run assets:precompile your compiled assets will be synchronised with your S3 bucket. This is a fork of rumblelabs/asset_sync which has gone quiet.}

  s.license = 'MIT'

  s.rubyforge_project = "neo-asset_sync"

  s.add_dependency('fog-aws', '~> 0.4', '>= 0.4.0')
  s.add_dependency('unf')
  s.add_dependency('activemodel')

  s.add_development_dependency "rspec"
  s.add_development_dependency "bundler"
  s.add_development_dependency "jeweler"

  s.add_development_dependency "uglifier"
  s.add_development_dependency "appraisal"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
