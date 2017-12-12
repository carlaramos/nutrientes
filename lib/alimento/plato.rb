require "alimento/version"

#require_relative "list.rb"
#require_relative "alimento_.rb"

class Plato
    
    attr_reader   :name, :vegetables, :cereals, :proteins, :fruits, :oils, :valor_energetico
    
        def initialize name, &block 
                @name = name 
                @vegetables = []
                @cereals = []
                @fruits = []
                @proteins = []
                @oils = []
                @@equivalencias = {"cucharada"=>15, "cucharadas"=>15, "piezas pequeñas"=>25, "taza"=>185, "cucharón"=>160, "pieza"=>65}
                @valor_energetico = 0
                
                @@list = List.new(nil,nil)
                @@list.insert([  Alimento_.new("Huevo frito",14.1,0.0,19.5),
                                Alimento_.new("Leche vaca",3.3,4.8,3.2),
                                Alimento_.new("Yogurt",3.8,4.9,3.8),
                                Alimento_.new("Cerdo",21.5,0.0,6.3),
                                Alimento_.new("Ternera",21.1,0.0,3.1),
                                Alimento_.new("Pollo",20.6,0.0,5.6),
                                Alimento_.new("Bacalao",17.7,0.0,0.4),
                                Alimento_.new("Atún",21.5,0.0,15.5),
                                Alimento_.new("Salmón",19.9,0.0,13.6),
                                Alimento_.new("Aceite de oliva",0.0,0.2,99.6),
                                Alimento_.new("Mantequilla",0.7,0.0,83.2),
                                Alimento_.new("Chocolate",5.3,47.0,30.0),
                                Alimento_.new("Azúcar",0.0,99.8,0.0),
                                Alimento_.new("Arroz",6.8,77.7,0.6),
                                Alimento_.new("Lentejas",23.5,52.0,1.4),
                                Alimento_.new("Papas",2.0,15.4,0.1),
                                Alimento_.new("Tomate",1.0,3.5,0.2),
                                Alimento_.new("Cebolla",1.3,5.8,0.3),
                                Alimento_.new("Calabaza",1.1,4.8,0.1),
                                Alimento_.new("Manzana",0.3,12.4,0.4),
                                Alimento_.new("Plátano",1.2,21.4,0.2),
                                Alimento_.new("Pera",0.5,12.7,0.3)
                            ])
               
                instance_eval(&block)
        end 
        
        def vegetable n_alimento, options = {}
            cantidad = 0
            alimento = @@list.detect { |x| n_alimento == x.name }
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
            @valor_energetico += alimento.valor_energetico*cantidad
            @vegetables.push([alimento, (alimento.valor_energetico*cantidad).round(2)])
        end 
       
        def cereal n_alimento, options = {}
                        cantidad = 0
            alimento = @@list.detect { |x| n_alimento == x.name }
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
            @valor_energetico += alimento.valor_energetico*cantidad
            @cereals.push([alimento, (alimento.valor_energetico*cantidad).round(2)])
        end
        
        def protein n_alimento, options = {}
            cantidad = 0
            alimento = @@list.detect { |x| n_alimento == x.name }
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
            @valor_energetico += alimento.valor_energetico*cantidad
            @proteins.push([alimento, (alimento.valor_energetico*cantidad).round(2)])
        end

        def fruit n_alimento, options = {}
            cantidad = 0
            alimento = @@list.detect { |x| n_alimento == x.name }
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
            @valor_energetico += alimento.valor_energetico*cantidad
            @fruits.push([alimento, (alimento.valor_energetico*cantidad).round(2)])
        end
        
        def oil n_alimento, options = {}
            cantidad = 0
            alimento = @@list.detect { |x| n_alimento == x.name }
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
            @valor_energetico += alimento.valor_energetico*cantidad
            @oils.push([alimento, (alimento.valor_energetico*cantidad).round(2)])
        end           
        

       def to_s
            cadena = @name + "\n"
            cadena += "\nComposición nutricional: \n"
            for i in 0..@vegetables.length-1 do
                cadena += "%-25s\t%s\n" % [@vegetables[i][0].to_s, @vegetables[i][1].to_s]
            end
            for i in 0..@cereals.length-1 do
                cadena += "%-25s\t%s\n" % [@cereals[i][0].to_s, @cereals[i][1].to_s]
            end
            for i in 0..@fruits.length-1 do
                cadena += "%-25s\t%s\n" % [@fruits[i][0].to_s, @fruits[i][1].to_s]
            end
            for i in 0..@proteins.length-1 do
                cadena += "%-25s\t%s\n" % [@proteins[i][0].to_s, @proteins[i][1].to_s]
            end
            for i in 0..@oils.length-1 do
                cadena += "%-25s\t%s\n" % [@oils[i][0].to_s, @oils[i][1].to_s]
            end
            cadena += "Valor energético:\t" + @valor_energetico.to_s + "\n"
            cadena
        end

end                 



