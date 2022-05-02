=begin
Escribir un programa llamado patrones.rb con métodos que reciban la cantidad de líneas y
muestren por pantalla los siguientes patrones de *:
=end


def tapa(n)
    n.times do
        print "*"
    end
    puts" "
end

def letra_o(numeros)
    tapa(numeros)
    numeros -= 2
    numeros.times do
        print "*"
        numeros.times do
            print " "
        end
        puts "*"
    end
    tapa(numeros + 2)
end

letra_o(7)

def letra_i(numeros)
    if numeros%2 == 0
        numeros += 1
    end
    n = numeros / 2
    tapa(numeros)
    numeros -= 2
    numeros.times do
        n.times do
            print " "
        end
        print "*"
        puts " "
    end
    tapa(numeros + 2)
end

letra_i(7)

def letra_z(numeros)
    tapa(numeros)
    numeros -= 2
    n = numeros
    numeros.times do
        n.times do
            print " "
        end
    puts "*"
    n -= 1
    end
    tapa(numeros + 2)
end

letra_z(7)

def print_blanco(n)
    n.times do
        print " "
    end
end

def letra_x(numeros)
    n = numeros
    impar = numeros
    n /= 2
    vacio = n
    blanco =""
    n.times do
        blanco += " "
        print blanco, "*"
        numeros -= 2
        if numeros >= 0
            print_blanco(numeros)
        end
        puts "*"
    end
    numeros -= 2
    blanco += " "
    if impar%2 != 0
        print blanco, "*" + "\n"
    end
    n.times do
        print " " * vacio
        vacio -= 1
        print "*"
        numeros += 2
        print_blanco(numeros)
        puts "*"
    end
end

letra_x(7)

def letra_cero(numeros)
    n = numeros
    tapa(n)
    n -= 2
    blanco = ""
    vacio = n
    n.times do
        print "*"
        print blanco, "*"
        blanco += " "
        vacio -= 1
        print_blanco(vacio)
        puts "*"
    end
    tapa(n + 2)
end

letra_cero(7)

def print_blanco_asterisco(n)
    n.times do
        print " *"
    end
end

def navidad(numeros)
    n = numeros
    n = n / 2 + 1
    blanco =""
    vacio = n
    n.times do |i|
        if vacio > 0
            vacio -= 1
            print " " * vacio
            print "*"
            print_blanco_asterisco(i)
            print "\n"
        end
    end
    base = n - 2
    base.times do
        print_blanco(base + 1)
        puts "*"
    end
    print_blanco_asterisco(n - 1)
end

navidad(7)