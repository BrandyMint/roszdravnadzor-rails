class ApplicationController < ActionController::Base
  include ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :build_navigation

  def build_navigation
    @menu = json_file_to_hash 'menu.json'
    @sidebar_menu = {}
  end
end
