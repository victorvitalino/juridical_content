require_dependency 'application_controller'

module Dashboard
  class ApplicationController < ActionController::Base
    layout 'author'
  end
end
