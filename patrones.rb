############################################################
######################### Patron O #########################
############################################################
# Solicitando dato al usuario
n = ARGV[0].to_i
# Definiendo metodo cover
def cover(n)
    n.times do |a|
        print "*"
    end
    print "\n"
end
# Definiendo metodo body
def body(n)
    print "*"
    (n-2).times do
        print "\s"
    end
    print "*"
    
    print "\n"
end
# Presentacion de los metodos
cover(n)
(n-2).times do
    body(n)
end
cover(n)
############################################################
######################### Patron I #########################
############################################################
# Seteando la variable que dará forma a la letra
n = 5
# Definiendo metodo cover
def cover(n)
    n.times do |a|
        print "*"
    end
    print "\n"
end
# Definiendo metodo body
def body(n)
    (n-2).times do |b|
        n.times do |c|
            if (c>n/2) || (c<n/2)
                print "\s"
            else
            print "*"
            end
        end
    print "\n"
    end
end
# Presentacion de los metodos
print "\n"
cover(n)
body(n)
cover(n)
print "\n"
############################################################
######################### Patron Z #########################
############################################################
# Solicitando dato al usuario
n = ARGV[0].to_i
# Definiendo metodo cover
def cover(n)
    n.times do |a|
        print "*"
    end
    print "\n"
end
# Definiendo metodo body
def body(n)
  n.times do |a| # Primer ciclo, vertical
    n.times do |b| # Segundo ciclo, Horizontal
      # En el if, le indicamos que complete con * si "a" es igual a "b" (Linea cruzada de izquierda a derecha)
      # o tambien que si "b" es igual a la cantidad ingresada por el usuario menos el iterador el primer ciclo(Linea cruzada de derecha a izquierda)
      if b==(n-1-a)
        print "*"
      else
        print "\s"
      end
    end
    print "\n"
  end
end
# Presentacion de los metodos
print "\n"
cover(n)
body(n)
cover(n)
print "\n"
############################################################
######################### Patron x #########################
############################################################
# Solicitando dato al usuario
n = ARGV[0].to_i
# Definiendo metodo body
def body(n)
  n.times do |a| # Primer ciclo, vertical
    n.times do |b| # Segundo ciclo, Horizontal
      # En el if, le indicamos que complete con * si "a" es igual a "b" (Linea cruzada de izquierda a derecha)
      # o tambien que si "b" es igual a la cantidad ingresada por el usuario menos el iterador el primer ciclo(Linea cruzada de derecha a izquierda)
      if a==b || b==(n-1-a)
        print "*"
      else
        print "\s"
      end
    end
  print "\n"
  end
end
# Presentacion del metodo
body(n)
############################################################
######################### Patron 0 #########################
############################################################
# Solicitando dato al usuario
n = ARGV[0].to_i
# Definiendo metodo cover
def cover(n)
  n.times do |a|
      print "*"
  end
  print "\n"
end
# Definiendo metodo body
def body(n)
  (n-2).times do |a| # Primer ciclo, vertical pero el cual eliminara dos lineas
    n.times do |b| # Segundo ciclo, Horizontal
      # En el if, en la primera fila completamos con *. Luego, en el primer ciclo (vertial) le indicamos
      # Que "a" siempre sea igual a "b" descontandole 1. Y en la ultima fila completamos con *.
      if b==0 || a==(b-1) || b==(n-1)
        print "*"
      else
        print "\s"
      end
    end
  print "\n"
  end
end
# Presentacion de los metodos
cover(n)
body(n)
cover(n)
############################################################
###################### Patron Navidad ######################
############################################################
# Definiendo variable fija
n = 5
# Definiendo metodo body
def body(n)
  n.times do |a| # Primer ciclo, vertical
      n.times do |b| # Segundo ciclo, Horizontal
        # Definicion if, 1.- linea vertical, 2.- linea horizontal 3.- ultima linea horizontal 4.- Bajada 1 5.- Bajada 2
        if  b==(n/2) || a==(n/2) || a==(n-1) || b==(n-3-a) || b==a+(n-3)
        print "*"
        else
        print "\s"
        end
      end
      print "\n"
  end
end
# Presentacion del metodo
body(n)
############################################################