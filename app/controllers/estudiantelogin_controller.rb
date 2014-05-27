class EstudianteloginController < ApplicationController
  def index
  	session['cedula']=nil
  	render 'estudiantelogin/index'
  end
end
