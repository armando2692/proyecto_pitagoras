class EstudiantenotasController < ApplicationController
  def  index
  	if(!session['clave'].nil?)
    @archivo=Archivo.new
    puts "holaaaaaaaaaaaaaaaaa"
    @archivo.leerGoogleDriveAlumno(@archivo.traerNombreMateria(session['clave']))
  	render 'estudiantenotas/index'
  	else
  		render 'profesorlogin/index'
  	end

  end
end
