require 'rubygems'
require 'bundler'
Bundler.setup
Bundler.require

RACK_ROOT         = File.expand_path('..', File.dirname(__FILE__))
CREDENTIAL_FILE   = './credentials.yml'
AUTHORIZED_USERS  = YAML.load(File.open(CREDENTIAL_FILE))

class SinatraDavApp < Sinatra::Base
  set :root,              RACK_ROOT 
end

SinatraDavApp = Rack::Builder.new do
  use Rack::ShowExceptions
  use Rack::CommonLogger

  use Rack::Auth::Basic do |username, password|
    AUTHORIZED_USERS.include?([username, password])
  end

  map '/' do
    run RackDAV::Handler.new(:root => '/')
  end

end