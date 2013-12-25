class DocumentsController < ApplicationController

  def show
    @document = select_from_hash(file_to_hash('documents'), params[:id].to_i)[0]
  end

end
