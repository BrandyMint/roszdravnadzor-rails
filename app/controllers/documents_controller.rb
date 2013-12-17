class DocumentsController < ApplicationController

  def show
    @document = select_from_hash(json_file_to_hash('documents.json'), params[:id].to_i)[0]
    build_sidebar
  end

  private

  def build_sidebar
    @sidebar_menu = select_from_hash json_file_to_hash('sidebar.json'), params[:id].to_i
    if @sidebar_menu[0].try('[]','links').blank?
      @sidebar_menu = select_from_hash json_file_to_hash('sidebar.json'), 2
    end
  end

end
