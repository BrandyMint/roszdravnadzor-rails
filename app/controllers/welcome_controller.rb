class WelcomeController < ApplicationController
  def index
    @news = file_to_hash 'news'
  end
end
