require "spec_helper"

RSpec.describe List do
  
  describe "# List attributes" do
    
    before :all do
      @node1=Node.new(1,nil,nil)
      @node2=Node.new(2,nil,@node1)
      @node1.next=@node2
      @list=List.new(@node1,@node2)
    end
    
    it "has a head" do 
      expect(@list.head).not_to be nil
    end
    
    it "has a tail" do 
      expect(@list.tail).not_to be nil
    end
    
  end
  
  describe "# List insert" do
  
    before :each do 
      @list=List.new(nil,nil)
      @alimento = Grupo_alimento.new("Huevo frito",14.1,0.0,19.5,"Huevos, lácteos y helados")
      @alimento2 = Grupo_alimento.new("Leche vaca",3.3,4.8,3.2,"Huevos, lácteos y helados")
    end 
   
    it "can insert an element" do
      @list.insert([@alimento])
      expect(@list.tail.value).to eq(@alimento)
    end
    
    it "can insert elements" do
      vector = [@alimento,@alimento2]
      @list.insert(vector)
      expect(@list.head.value).to eq(@alimento)
      expect(@list.tail.value).to eq(@alimento2)
    end
    
    it "can insert many elements" do
      @list.insert([
        prueba1=Grupo_alimento.new("Huevo frito",14.1,0.0,19.5,"Huevos, lácteos y helados"),
        prueba3=Grupo_alimento.new("Leche vaca",3.3,4.8,3.2,"Huevos, lácteos y helados"),
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
        Grupo_alimento.new("Plátanos",1.2,21.4,0.2,"Frutas"),
        prueba2=Grupo_alimento.new("Pera",0.5,12.7,0.3,"Frutas")
      ])
      expect(@list.tail.value).to eq(prueba2)
      expect(@list.head.value).to eq(prueba1)
      
    end 
    
  end 
  
  describe " # To string" do
    it " list has to_s" do
      @list = List.new(nil,nil)
      @list.insert([Grupo_alimento.new("Ternera",21.1,0.0,3.1,"Carnes y derivados"),
        Grupo_alimento.new("Pollo",20.6,0.0,5.6,"Carnes y derivados"),
        Grupo_alimento.new("Bacalao",17.7,0.0,0.4,"Pescados y mariscos")])
      expect(@list.to_s).to eq("Ternera\tproteinas:21.1\tglúcidos:0.0\tlípidos:3.1\tgrupo alimenticio:Carnes y derivados\nPollo\tproteinas:20.6\tglúcidos:0.0\tlípidos:5.6\tgrupo alimenticio:Carnes y derivados\nBacalao\tproteinas:17.7\tglúcidos:0.0\tlípidos:0.4\tgrupo alimenticio:Pescados y mariscos\n")
    end
  end
  
  describe " # Extract methods " do
  
    it " Extract the first element " do
      @list = List.new(nil,nil)
      alimento1=Grupo_alimento.new("Huevo frito",14.1,0.0,19.5,"Huevos, lácteos y helados")
      alimento2=Grupo_alimento.new("Leche vaca",3.3,4.8,3.2,"Huevos, lácteos y helados")
      @list.insert([alimento1,alimento2])
      @list.shift_first
      expect(@list.head.value).to eq(alimento2)
    end  
    
    it " Extract the last element " do
      @list = List.new(nil,nil)
      alimento1=Grupo_alimento.new("Huevo frito",14.1,0.0,19.5,"Huevos, lácteos y helados")
      alimento2=Grupo_alimento.new("Leche vaca",3.3,4.8,3.2,"Huevos, lácteos y helados")
      @list.insert([alimento1,alimento2])
      @list.shift_last
      expect(@list.tail.value).to eq(alimento1)
    end 
  end
  
  describe " # List is enumerable" do
  
    before :each do
      @list = List.new(nil,nil)
      @list.insert ([Grupo_alimento.new("Huevo frito",14.1,0.0,19.5,"Huevos, lácteos y helados"),
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
        Grupo_alimento.new("Plátanos",1.2,21.4,0.2,"Frutas"),
        Grupo_alimento.new("Pera",0.5,12.7,0.3,"Frutas")
        ])
        @list2 = List.new(nil,nil)
        @list2.insert([nil])
        @list3=List.new(nil,nil)
        @list3.insert([1,2,3])
    end
    
    it "Testing max" do # Devuelve el maximo
      expect(@list.max.to_s).to eq("Aceite de oliva\tproteinas:0.0\tglúcidos:0.2\tlípidos:99.6\tgrupo alimenticio:Alimentos grasos")
    end
  
    it "Testing all?" do # Devuelve true si todos son distintos de false/nil
      expect(@list.all?).to eq(true)
      expect(@list2.all?).to eq(false)
    end
    
    it "Testing any?" do # Devuele true si al menos uno es distinto de false/nil
      expect(@list.any?).to eq(true)
      expect(@list2.any?).to eq(false)
    end
    
    it "Testing collect" do # Devuelve el resultado de aplicar a la lista las operaciones contenidas enel bloque
      expect(@list3.map{ |i| 2*i}).to eq([2,4,6])
      expect(@list3.collect{ |i| i*i}).to eq([1,4,9])
    end
    
    it "Testing count" do  # Devuelve el numero de elementos en la lista
      expect(@list.count).to eq(22)
      expect(@list3.count).to eq(3)
    end
    
    it "Testing detect" do  # Devuelve el valor del primer elemento que es true en la comprobacion del bloque
      expect(@list3.detect { |i| i==1 }).to eq(1)
      expect(@list3.find { |i| i==2}).to eq(2)
    end
    
    it "Testing drop" do # Elimina los n primeros elementos del vector y devuelve el resto
      expect(@list3.drop(1)).to eq([2,3])
    end
    
    it "Testing min" do # Devuelve el minimo elemento en la lista
      expect(@list.min.to_s).to eq("Tomate\tproteinas:1.0\tglúcidos:3.5\tlípidos:0.2\tgrupo alimenticio:Verduras y Hortalizas")
      expect(@list3.min).to eq(1)
    end

    it "Testing sort" do  # Devuelve la lista en orden inverso usando el <=> implementado en la clase del objeto
      expect(@list3.sort { |a,b| b <=> a}).to eq([3,2,1])
    end
    
end

 describe " # Sort array" do
   
  before :all do 
      @list = List.new(nil,nil)
      @list.insert ([Grupo_alimento.new("Huevo frito",14.1,0.0,19.5,"Huevos, lácteos y helados"),
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
        Grupo_alimento.new("Plátanos",1.2,21.4,0.2,"Frutas"),
        Grupo_alimento.new("Pera",0.5,12.7,0.3,"Frutas")
        ])
    end
      
      it " Sorted list with for" do
        expect(@list.ordenar_seleccion[0].to_s).to eq("Tomate\tproteinas:1.0\tglúcidos:3.5\tlípidos:0.2\tgrupo alimenticio:Verduras y Hortalizas")
      end
  end

  
end

