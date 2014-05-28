class DatosubscripcionController < ApplicationController
  def index
    if(!session['cedula'].nil?)
  	
    @materia = params[:nombre_materia]
    @email = params[:email]
    puts @email
  	puts @materia

    @subscripcion=Datosubscripcioncorreo.new(secure_params)
    @subscripcion.subscribe(session["cedula"],@email)

  	render "datosubscripcion/index"
  else
    render "estudiantelogin/index"
  end

  end
  private
  def secure_params
			#params.require(:cedula).permit(:email)
		end
end
