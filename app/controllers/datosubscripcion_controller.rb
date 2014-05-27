class DatosubscripcionController < ApplicationController
  def index
    if(!session['cedula'].nil?)
  	
    @materia = params[:nombre_materia]
  	puts @materia

    #@subscripcion=Datosubscripcioncorreo.new(secure_params)
    #@subscripcion.subscribe(session["cedula"])

  	render "datosubscripcion/index"
  else
    render "estudiantelogin/index"
  end

  end
  def secure_params
			params.require(:visitante).permit(:email)
		end
end
