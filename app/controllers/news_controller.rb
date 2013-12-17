class NewsController < ApplicationController
  def show
    @news = select_from_hash(json_file_to_hash('news.json'), params[:id].to_i)[0]
  end
end
