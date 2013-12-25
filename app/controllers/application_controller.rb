class ApplicationController < ActionController::Base
  include ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :build_navigation

  def build_navigation
    @menu = file_to_hash 'menu'
    @sidebar_menu = file_to_hash 'sidebar'
  end
end
