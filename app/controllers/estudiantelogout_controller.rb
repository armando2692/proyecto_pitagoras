class EstudiantelogoutController < ApplicationController
  def index
  	session['cedula']=nil
  	redirect_to root_path
  end
end
