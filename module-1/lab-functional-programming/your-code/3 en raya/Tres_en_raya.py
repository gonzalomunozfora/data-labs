def tamaño_tablero(n):

   tablero_X = ["-" for i in range(n) ]

   tablero_y = [tablero_X for i in range (n)]

   return tablero_y





##n == 3 # Al ser un 3 en raya no puede ser un tabero mayor de 3x3

print ("Mete el tamaño del tablero: ")

n = int(input())
while n> 0:
   if n==3:
       print("tamaño correcto",tamaño_tablero(n))
       break
   else:
       print("vuelve a meter el numero")
       n = int(input())


