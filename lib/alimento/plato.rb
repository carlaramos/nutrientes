require "alimento/version"

#require_relative "list.rb"
#require_relative "alimento_.rb"

class Plato
    attr_accessor :alimento, :cantidad
    
        def initialize name, &block 
                @name = name 
                @vegetables = {}
                @cereals = {}
                @fruits = {}
                @proteins = {}
                @oils = {}
                @alimentos = [@vegetables, @cereals, @fruits, @proteins, @oils]
                @@equivalencias = {"cucharada"=>15, "cucharadas"=>15, "piezas pequeñas"=>25, "taza"=>185, "cucharón"=>160, "pieza"=>65}
                
                @@list = List.new(nil,nil)
                @@list.insert([  Grupo_alimento.new("Huevo frito",14.1,0.0,19.5,"Huevos, lácteos y helados"),
                                Grupo_alimento.new("Leche vaca",3.3,4.8,3.2,"Huevos, lácteos y helados"),
                                Grupo_alimento.new("Yogurt",3.8,4.9,3.8,"Huevos, lácteos y helados"),
                                Grupo_alimento.new("Cerdo",21.5,0.0,6.3,"Carnes y derivados"),
                                Grupo_alimento.new("Ternera",21.1,0.0,3.1,"Carnes y derivados"),
                                Grupo_alimento.new("Pollo",20.6,0.0,5.6,"Carnes y derivados"),
                                Grupo_alimento.new("Bacalao",17.7,0.0,0.4,"Pescados y mariscos"),
                                Grupo_alimento.new("Atún",21.5,0.0,15.5,"Pescados y mariscos"),
                                Grupo_alimento.new("Salmón",19.9,0.0,13.6,"Pescados y mariscos"),
                                Grupo_alimento.new("Aceite de oliva",0.0,0.2,99.6,"Alimentos grasos"),
                                Grupo_alimento.new("Mantequilla",0.7,0.0,83.2,"Alimentos grasos"),
                                Grupo_alimento.new("Chocolate",5.3,47.0,30.0,"Alimentos grasos"),
                                Grupo_alimento.new("Azúcar",0.0,99.8,0.0,"Alimentos ricos en carbohidratos"),
                                Grupo_alimento.new("Arroz",6.8,77.7,0.6,"Alimentos ricos en carbohidratos"),
                                Grupo_alimento.new("Lentejas",23.5,52.0,1.4,"Alimentos ricos en carbohidratos"),
                                Grupo_alimento.new("Papas",2.0,15.4,0.1,"Alimentos ricos en carbohidratos"),
                                Grupo_alimento.new("Tomate",1.0,3.5,0.2,"Verduras y Hortalizas"),
                                Grupo_alimento.new("Cebolla",1.3,5.8,0.3,"Verduras y Hortalizas"),
                                Grupo_alimento.new("Calabaza",1.1,4.8,0.1,"Verduras y Hortalizas"),
                                Grupo_alimento.new("Manzana",0.3,12.4,0.4,"Frutas"),
                                Grupo_alimento.new("Plátano",1.2,21.4,0.2,"Frutas"),
                                Grupo_alimento.new("Pera",0.5,12.7,0.3,"Frutas")
                            ])
               
                instance_eval(&block)
        end 
        
        def vegetable alimento, options = {}
            cantidad = 0
            if options[:gramos]
                cantidad = options[:gramos]
            elsif options[:porcion]
                cantidad = options[:porcion].split[0].to_r
                
                cadena = ""
                options[:porcion].split[1..cadena.length-1].each do |x|
                    cadena += x + " "
                end
                cadena = cadena.chomp ' '
                cantidad = cantidad * @@equivalencias[cadena]
            end 
            
            vegetable = {alimento=>cantidad.to_f.round(2)}
            @vegetables.merge!(vegetable)
        end 
       
        def cereal alimento, options = {}
            cantidad = 0
            if options[:gramos]
                cantidad = options[:gramos]
            elsif options[:porcion]
                cantidad = options[:porcion].split[0].to_r
                
                cadena = ""
                options[:porcion].split[1..cadena.length-1].each do |x|
                    cadena += x + " "
                end
                cadena = cadena.chomp ' '
                cantidad = cantidad * @@equivalencias[cadena]
            end 
            
            cereal = {alimento=>cantidad.to_f.round(2)}
            @cereals.merge!(cereal)
        end
        
        def protein alimento, options = {}
            cantidad = 0
            if options[:gramos]
                cantidad = options[:gramos]
            elsif options[:porcion]
                cantidad = options[:porcion].split[0].to_r
                
                cadena = ""
                options[:porcion].split[1..cadena.length-1].each do |x|
                    cadena += x + " "
                end
                cadena = cadena.chomp ' '
                cantidad = cantidad * @@equivalencias[cadena]
            end 
            
            protein = {alimento=>cantidad.to_f.round(2)}
            @proteins.merge!(protein)

        end

        def fruit alimento, options = {}
            cantidad = 0
            if options[:gramos]
                cantidad = options[:gramos]
            elsif options[:porcion]
                cantidad = options[:porcion].split[0].to_r
                
                cadena = ""
                options[:porcion].split[1..cadena.length-1].each do |x|
                    cadena += x + " "
                end
                cadena = cadena.chomp ' '
                cantidad = cantidad * @@equivalencias[cadena]
            end 
            
            fruit = {alimento=>cantidad.to_f.round(2)}
            @fruits.merge!(fruit)
        end
        
        def oil alimento, options = {}
            cantidad = 0
            if options[:gramos]
                cantidad = options[:gramos]
            elsif options[:porcion]
                cantidad = options[:porcion].split[0].to_r
                
                cadena = ""
                options[:porcion].split[1..cadena.length-1].each do |x|
                    cadena += x + " "
                end
                cadena = cadena.chomp ' '
                cantidad = cantidad * @@equivalencias[cadena]
            end 
            
            oil = {alimento=>cantidad.to_f.round(2)}
            @oils.merge!(oil)
        end           
        

        def to_s
            cadena = ""
            for i in 0..@alimentos.length-1 do
                for j in 0..@alimentos[i].length-1 do
                    alimento = @@list.detect { |x| @alimentos[i].keys[j] == x.name }
                    cadena += alimento.to_s + " valor energetico:" + (alimento.valor_energetico*@alimentos[i][@alimentos[i].keys[j]]).round(2).to_s + "\n"
                end
            end
            cadena
        end
end                 



