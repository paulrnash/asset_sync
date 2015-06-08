require 'fog/aws'
require 'active_model'
require 'erb'
require "neo-asset_sync/asset_sync"
require 'neo-asset_sync/config'
require 'neo-asset_sync/storage'
require 'neo-asset_sync/multi_mime'


require 'neo-asset_sync/railtie' if defined?(Rails)
require 'neo-asset_sync/engine'  if defined?(Rails)
