def menu
    puts "Menú:"
    puts "1. Calcular salario"
    puts "2. Juego Adivina el número"
    puts "3. Calcular IMC"
    puts "4. Salir"
    puts
    print "Ingrese una opción: "
    
end

def volver
    puts "¿Desea volver al menú o salir?"
    puts "1. Volver al menu"
    puts "2. Salir"
    print "Ingrese opción: "
    a = gets.to_i
    puts
    if a == 1
        
    else
        $continuar = false
    end
end

# -------------------------------------- #
def salario
    puts
    puts "****************************************"
    puts "Para calcular el nuevo salario ingrese los siguientes datos:"
    print "Ingrese salario actual: "
    salario = gets.chomp.to_f
    print "Ingrese incremento: "
    incremento = gets.chomp.to_f

    calcular_salario(salario,incremento)
    puts "****************************************"
    puts
end

def calcular_salario(s,i)
    resultado = s + (s*(i/1000))
    puts
    puts "El nuevo salario es #{resultado.ceil()} pesos"
    puts
end
# -------------------------------------- #
def juego
    puts
    puts "****************************************"
    puts "Bienvenido al juego de adivina el número"
    puts "Vidas = 1"
    print "Elige un numero del 1 al 10: "
    num = gets.to_i
    computador = rand(1..10)
        if num == computador
            puts
            puts "Ganaste el número era #{computador}"
        else
            puts
            puts "Perdiste, elegiste #{num}"
            puts "Y el número era #{computador}"
        end
    puts "****************************************"
    puts
end
# -------------------------------------- #
def tu_imc ()
    puts "***¡Bienvenido/a al sistema de cálculo IMC!***"
    print "Ingresa tu peso en kilogramos: "
    peso = gets.to_f
    print "Ingresa tu altura expresada en metros: "
    altura = gets.to_f
   
    evalua_imc(peso, altura)
end

def evalua_imc(peso,a)
    imc = peso / (a**2)
    if imc < 18.5
        puts ("Tu IMC es #{imc.ceil()}, tu peso esta bajo el nivel normal")
    elsif imc >= 18.5 && imc <= 24.9
        puts ("Tu IMC es #{imc.ceil()}, tu peso esta en el nivel normal")
    elsif imc >= 25.0 && imc <= 29.9
        puts ("Tu IMC es #{imc.ceil()}, tu peso esta sobre el nivel normal")
    else
        obesidad(imc)
    end
end

def obesidad(imc)
    if imc >= 30 && imc <= 34.9
        puts ("Obesidad grado I: #{imc.ceil()} - Moderado")
    elsif imc >= 35 && imc <= 39.9
        puts ("Obesidad grado II: #{imc.ceil()} - Severo")
    else
        puts ("Obesidad grado III: #{imc.ceil()} - Muy severo")
    end
end

# --------- PROGRAMA PRINCIPAL --------- #

$continuar = true
while $continuar
    menu()
    opcion = gets.to_i

    if opcion == 1
        salario()
        volver()
    elsif opcion == 2
        juego()
        volver()
    elsif opcion == 3
        tu_imc()
        volver()
    else
        $continuar = false
    end

end