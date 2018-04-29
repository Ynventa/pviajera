class DocumentController < ApplicationController
  before_action :load_vars
  
  def show
    @document = Document.find(params[:id])
  end
end
