class ProfesorlogueadoController < ApplicationController
  def index
#	@ruta = params[:ruta]
  	

    
  	

    @archivo = Archivo.new
  	 
    @clave=params[:clave]

    if(session['clave'].nil?)
      puts "variable session nula"
  	   if (@archivo.validarClave(@clave))
          session['clave'] =@clave
          puts  "holaaaaaaaaaaa"
  		#flash[:notice]="lo logre" 
  		    render 'profesorlogueado/index'
  	   else
          render 'profesorlogin/index'
      end
    else
      puts "variable session nula no nulaa"
      puts session["clave"]
      render 'profesorlogueado/index'
  	end

    #	puts @ruta
    #puts @cedula
    puts @clave

  end
end
