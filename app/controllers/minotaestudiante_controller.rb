class MinotaestudianteController < ApplicationController
  def index
  	if(!session['cedula'].nil?)
  	@archivo=Archivo.new
  
  	render 'minotaestudiante/index'
  else
render 'estudiantelogin/index'
  end

  end
end
