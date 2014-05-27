class NotaparticularprofesorController < ApplicationController
  def index
  	    if(session['clave'].nil?)
  	session['cedulaEstudiante']=params[:cedulaEstudiante]
    @cedula=session['cedulaEstudiante']
    @archivo=Archivo.new
    puts "holaaaaaaaaaaaaaaaaa"
    @archivo.leerGoogleDriveAlumnoParticular(@archivo.traerNombreMateria(session['clave']),@cedula)
  	render 'notaparticularprofesor/index'
  else
  	render 'profesorlogin/index'
  end
  end
end
