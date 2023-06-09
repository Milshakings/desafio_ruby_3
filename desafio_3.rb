#Ejercicio1: Aumento de sueldo
def nuevo_salario( valor1,valor2)
    salario_nuevo = valor1 + (valor1 * (valor2/1000))
end

def calcular_salario(salario_nuevo)
    puts "Tu salario es #{salario_nuevo}"
end

puts "Ingrese el salario actual"
salario = gets.chomp.to_i
puts "Ingrese el incremento en pesos"
incremento = gets.chomp.to_f

resultado = calcular_salario(nuevo_salario(salario,incremento))
puts (resultado)

# Ejercicio2: Adivina el número  Hacemos esta función pensando que si numero_mio - numero_compu = 0, los dos deben ser iguales
def juego(valor1,valor2)
    juego1 = valor1-valor2
end

def Adivina(juego1)
if juego1 == 0
    puts "Ganaste"
else
    puts "Perdiste, intenta de nuevo"
end
end

puts "Ingresa un número entre 1 y 100"
numero_mio = gets.chomp.to_i
numero_compu = rand(1..100)

resultado = Adivina(juego(numero_mio,numero_compu))
puts(resultado)


#Ejercicio3: IMC 
def formula_imc(valor1, valor2)
    imc = valor1 / valor2**2
end

def calcular_imc(imc)
    puts("Tu índice de masa corporal es => #{imc}")
    if imc < 18.5
    puts "El índice calculado es Bajo de peso con un imc de #{imc}"
    elsif imc <= 18.5 || imc <= 24.9
    puts "El índice calculado es Normal con un imc de #{imc}"
    elsif imc <= 25.0 || imc <= 29.9
    puts "El índice calculado es Sobrepeso con un imc de #{imc}"
    else
    puts "El índice calculado es Obesidad"
        if imc >= 30 || imc <= 34.9
            puts "La Obesidad es grado I: Moderada con imc: #{imc}"
        elsif imc >= 35 || imc <= 39.9
            puts "La Obesidad es grado II: Severa con imc de #{imc} "
        else
            puts "La Obesidad es grado III: Muy Severa con un imc de #{imc}"
        end
    end
    end


puts "Ingrese el peso del paciente en Kg"
peso = gets.chomp.to_f
puts "Ingrese la estatura del paciente en metros"
estatura = gets.chomp.to_f

resultado = calcular_imc(formula_imc(peso, estatura))
puts(resultado)


