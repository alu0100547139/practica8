require 'practica8.rb'
require 'test/unit'

describe Lista do
    before :each do
        @L1=Lista.new
        @P1=Sel_multiple.new("¿Cual es la salida del sig codigo ruby? ","c",["#<Xyz:0xa020302>","nil","0","ninguna"],'2')
		@P2=Sel_simple.new("La siguiente definicion de un hash es valida?","c","1")
		@P3=Sel_multiple.new("Cual es la salida del siguiente codigo=","c",["1","bob","Hey","Ninguna"],"2")
		@P4=Sel_multiple.new("¿Cual es el tipo del objeto en el siguiente codigo Ruby?","c",["instancia de Class","Constante","Objeto","Ninguna"],"3")
        @P5=Sel_simple.new(" Es apropiado que una clase Tablero herede de una clase Juego","c","2")
       
        @N1=Nodo.new(@P1,nil,nil)
        @N2=Nodo.new(@P2,nil,nil)
        @N3=Nodo.new(@P3,nil,nil)
        @N4=Nodo.new(@P4,nil,nil)
        @N5=Nodo.new(@P5,nil,nil)
        
        @L1.insert(@N1)
        @L1.insert(@N2)
        @L1.insert(@N3)
        @L1.insert(@N4)
        @L1.insert(@N5)
    end
	
	#pruebas para la clase sel_simple y sel_multiple con comparable
	
	it " pertenece a la clase sel_simple" do
	
		expect(@P2.class) ==  Sel_simple
		
	end	
	it " pertenece a la clase sel_simple" do
	
		expect(@P1.class) ==  Sel_multiple
		
	end
	
	it "comparar valor dificultad de la pregunta P2 < P5" do
	
		expect(@P2.dif<@P5.dif).to eq (true)
	
	end
	
	it "comparar valor dificultad de la pregunta P1 = P3" do
	
		expect(@P1.dif==@P3.dif).to eq (true)
	
	end
		
		
	
	
	it " Existe un objeto examen" do
		
		expect(@P1.is_a?Examen).to eq (true)
		
	end        
    
	it " Existe una instancia de la clase lista"do
		
		expect(@L1.is_a?Lista).to eq (true)
		
	end
	
	
	 it " Se puede insertar en una lista por el principio" do
	 	
		 expect(@L1.push(@N1)).to eq (true)
		 
	 end
	 
    
	it " Se puede insertar en una lista por el final" do
		
		 expect(@L1.insert(@N2)).to eq (true)
		 
	 end
    
	it " Se puede extraer de una lista por el principio" do
		
       	expect(@L1.pop).to eq (true)
       	
	end
	
    
	 it " Se puede extraer de una lista por el final"do
	 	
        	expect(@L1.extract).to eq (true)
	end
    
end

