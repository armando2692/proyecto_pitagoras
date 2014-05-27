class CargararchivoController < ApplicationController
  def index
  	 if(!session['clave'].nil?)
    	render 'cargararchivo/index'
    else
    	render 'profesorlogin/index'
    end
  end

  def subir_archivo
  @nombreArchivo  =params[:ruta]
  puts "holaaaaaaaaa"
  puts @nombreArchivo

  end

end
