class DemosController < ApplicationController
  
  def index
  end
  
  def goto_index
    redirect_to demos_url
  end

end
