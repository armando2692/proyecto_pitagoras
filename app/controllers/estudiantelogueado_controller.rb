class EstudiantelogueadoController < ApplicationController
  def index
  #	@ruta = params[:ruta]

  
  	puts  "holaaaaaaaaaaa"
  	@archivo = Archivo.new
  	@cedula=params[:cedula]

    if(session['cedula'].nil?)

        if (@archivo.validarCedula(@cedula))
      #flash[:notice]="lo logre" 
            session['cedula']=@cedula
            render 'estudiantelogueado/index'
        else
            render 'estudiantelogin/index'
        end
    else
      render 'estudiantelogueado/index'
    end
        
    # puts @ruta

    #puts @cedula
    puts @cedula


    


  	
  	

  end
end
