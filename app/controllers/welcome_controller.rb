class WelcomeController < ApplicationController
  def index
    @news = json_file_to_hash 'news.json'
  end
end
