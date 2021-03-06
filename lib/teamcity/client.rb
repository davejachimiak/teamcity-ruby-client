require_relative 'api'
require 'builder'

module TeamCity
  # Wrapper for the TeamCity REST API
  #
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}

    include TeamCity::Client::Projects
    include TeamCity::Client::BuildTypes
    include TeamCity::Client::Builds
    include TeamCity::Client::Common
    include TeamCity::Client::VCSRoots
  end
end