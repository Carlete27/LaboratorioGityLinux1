# Generamos una variable en la cual guardaremos el valor del parametro pasado anteriormente
 
echo "Introduce un fichero: "
read fichero


# Recorremos linea por linea el fichero identificando los campos y almacenandolos en un fichero con el mismo nombre que su tercer campo
# En este caso el primer campo es \"Rock\" y la lineas que tengan ese capo se almacenaran el el fichero Rock.txt
# Asi cuando cambie el genero despues de \"Rock\", se generará un nuevo archivo con el nombre del nuevo genero donde se almacenarán
# las respectivas lineas que coincidan con el genero del archivo
while IFS="," read -r name artist gender;
do
echo "$name|$artist|$gender" >> $gender.txt
done < $fichero