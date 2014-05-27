class ProfesorlogoutController < ApplicationController
  def index
  	session['clave']=nil
  	redirect_to root_path
  end
end
