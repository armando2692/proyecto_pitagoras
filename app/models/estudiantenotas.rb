  require 'rubygems'
  require 'roo'
   

class Estudiantenotas < ActiveRecord::Base
	
	
  def leerGoogleDriveAlumno
    materia="calculo"
      $listaAlumnos=[]
      conexion = GoogleDrive.login(ENV["GMAIL_USERNAME"], ENV["GMAIL_PASSWORD"]) 
      archivo = conexion.spreadsheet_by_title('Materia')
     

       numeroHojaTrabajo=0
       hojaTrabajo = archivo.worksheets[numeroHojaTrabajo] 
       tituloHojaTrabajo=archivo.worksheets[numeroHojaTrabajo].title

       while(!(hojaTrabajo.nil?))do
          if (archivo.worksheets[numeroHojaTrabajo].title == materia)
            cantidadAlumno=0
            for i in (1 .. hojaTrabajo.num_rows)
                $listaAlumnos[cantidadAlumno]=[archivo.worksheets[numeroHojaTrabajo].title,hojaTrabajo[i, 1],hojaTrabajo[i, 2],hojaTrabajo[i, 3],hojaTrabajo[i, 4],hojaTrabajo[i, 5],hojaTrabajo[i, 6],hojaTrabajo[i, 7]]
                cantidadAlumno=cantidadAlumno+1
            end 
            break
          end
           numeroHojaTrabajo=numeroHojaTrabajo+1
           hojaTrabajo = archivo.worksheets[numeroHojaTrabajo]
       end    
      
      for i in (0 .. $listaAlumnos.length)
          puts $listaAlumnos[i]
      end

  end

  

  def leerGoogleDriveCedula 
     
      cedula='5555555'
      listaMaterias=[]
      conexion = GoogleDrive.login(ENV["GMAIL_USERNAME"], ENV["GMAIL_PASSWORD"]) 
      archivo = conexion.spreadsheet_by_title('Materia')
     

       numeroHojaTrabajo=0
       hojaTrabajo = archivo.worksheets[numeroHojaTrabajo] 
       tituloHojaTrabajo=archivo.worksheets[numeroHojaTrabajo].title
       cantidadMateria=0
       while(!(hojaTrabajo.nil?))do
           for i in (2 .. hojaTrabajo.num_rows)
              if(hojaTrabajo[i, 3]==cedula)
                puts 'entro' 
                listaMaterias[cantidadMateria]=[archivo.worksheets[numeroHojaTrabajo].title,hojaTrabajo[i, 1],hojaTrabajo[i, 2],hojaTrabajo[i, 3],hojaTrabajo[i, 4],hojaTrabajo[i, 5],hojaTrabajo[i, 6],hojaTrabajo[i, 7]]
                cantidadMateria=cantidadMateria+1
                break
              end
            end 
           numeroHojaTrabajo=numeroHojaTrabajo+1
           hojaTrabajo = archivo.worksheets[numeroHojaTrabajo]
       end    
      
      for i in (0 .. listaMaterias.length)
          puts listaMaterias[i]
      end

  end

  def subirGoogleMateria()
       leerExcel
       #Con la clave del profesor conoceremos su materia
       materia='biologia'

       conexion = GoogleDrive.login(ENV["GMAIL_USERNAME"], ENV["GMAIL_PASSWORD"]) 
       archivo = conexion.spreadsheet_by_title('Materia')
       
       if archivo.nil? 
          archivo= conexion.create_spreadsheet('Materia') 
       end 

       numeroHojaTrabajo=0
       hojaTrabajo = archivo.worksheets[numeroHojaTrabajo] 
       tituloHojaTrabajo=archivo.worksheets[numeroHojaTrabajo].title
   
       while(!(hojaTrabajo.nil?)and((tituloHojaTrabajo<=>materia)!=0)) do
           numeroHojaTrabajo=numeroHojaTrabajo+1
           hojaTrabajo = archivo.worksheets[numeroHojaTrabajo]
           if !(hojaTrabajo.nil?) 
           tituloHojaTrabajo=archivo.worksheets[numeroHojaTrabajo].title
         end
       end    
      

      auxiliar=numeroHojaTrabajo
      if hojaTrabajo.nil? 
         puts 'no existe'
         archivo.add_worksheet(materia,1,1)
         tituloHojaTrabajo=archivo.worksheets[numeroHojaTrabajo].title
         hojaTrabajo=archivo.worksheets[numeroHojaTrabajo]
         controlador=0

         else
          hojaTrabajo.delete
          archivo.add_worksheet(materia,1,1)
          tituloHojaTrabajo=archivo.worksheets[archivo.worksheets.length-1].title
          hojaTrabajo=archivo.worksheets[archivo.worksheets.length-1]
      end

      puts 'holaaaaaaaaaaaaaaaaaaaaaaaaa'
      puts hojaTrabajo.title

      contador=0  
      for i in (1.. ($listaValores.length/7))
        last_row = 1 + hojaTrabajo.num_rows
        for j in (1 .. 7)
           hojaTrabajo[last_row, j] = $listaValores[contador]
          contador=contador+1
         end  
       end 
    hojaTrabajo.save 
end 



  def leerExcel
   $listaValores=[] 
   oo = Roo::Excelx.new("biologia.xlsx")

   oo.default_sheet = oo.sheets.first
   contador=0
   valor=''
   for i in (1 .. oo.last_row)
      for j in (1 .. oo.last_column)
       $listaValores[contador]= oo.cell(i,j)
       puts $listaValores[contador]
       contador=contador+1
   end
   end
     end


   
   #4.upto(12) do |line|
    # date       = oo.cell(line,'A')
    # start_time = oo.cell(line,'B')
     #end_time   = oo.cell(line,'C')
     #pause      = oo.cell(line,'D')
     #sum        = (end_time - start_time) - pause
     #comment    = oo.cell(line,'F')
     #amount     = sum * HOURLY_RATE
     #valor= "#{date}\t#{sum}\t#{amount}\t#{comment}"
     
 #end 

  end