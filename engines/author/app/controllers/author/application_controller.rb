require_dependency 'application_controller'

module Author
  class ApplicationController < ActionController::Base
    layout 'author'

    before_action :authenticate_user!
  end
end
