class SubscripcionController < ApplicationController
  def index
  	 	if(!session['cedula'].nil?)
  	puts "estudianteeee"
  	puts session["cedula"]
  	render "subscripcion/index"
  else
  	render "estudiantelogin/index"
  end
  end
end
