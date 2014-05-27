class ListosubirarchivoprofesorController < ApplicationController
  def index
  	if(!session['clave'].nil?)
   		@archivo=Archivo.new
  		@nombreArchivo=params[:ruta]
  		@archivo. subirGoogleMateria(@nombreArchivo.split(".").first,@nombreArchivo)
  		puts @nombreArchivo
  		render '/listosubirarchivoprofesor/index'
    else
    	render 'profesorlogin/index'
    end
  end
end
