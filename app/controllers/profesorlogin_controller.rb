class ProfesorloginController < ApplicationController
  def index
  	session['clave']=nil
  	render 'profesorlogin/index'
  end
end
