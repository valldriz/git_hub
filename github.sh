#========== CURSO RAPIDO ===========|

https://www.youtube.com/watch?v=HiXLkL42tMU

https://david-estevez.gitbooks.io/the-git-the-bad-and-the-ugly/content/es/subir-y-bajar-cambios-a-un-repositorio-remoto.html



#====== SUBIR EL CODIGO A GHUB =======|

# primero vamos a indicar cual es la ip donde estara almacenado nuestro codigo
> git remote add origin https://github.com/valldriz/centinela.git

# Luego subiremos nuestro codigo
> git push -u origin master

# posteriormente cuando ya hayamos hecho el primer push bastara poner unicamente
> git push 
> git push origin master
# ya que estara guardada la ruta de github 

# Para descargarlo en el servidor remoto bbastara con hacer un pull
> git pull 
