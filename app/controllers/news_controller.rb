class NewsController < ApplicationController
  def show
    @news = select_from_hash(file_to_hash('news'), params[:id].to_i)[0]
  end
end
