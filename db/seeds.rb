# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# PRODUCTOS

productos = Product.create([{code: 'CHOCO1', name: 'Chocotejas', unity: 'Gramos', price: 5.0, description: 'Dulces de chocolate de 25g', state: 'Activo'},
	{code: 'COLLA2', name: 'Collar', unity: 'Gramos', price: 25.0, description: 'Collar de perlas', state: 'Activo'},
	{code: 'MANIL3', name: 'Manilla', unity: 'Gramos', price: 15.0, description: 'Manilla hecho de shakiras', state: 'Activo'},
	{code: 'DETER4', name: 'Detergente', unity: 'Mililitros', price: 18.0, description: 'Detergente lavavajillas de 1050 ml', state: 'Activo'},
	{code: 'SHAMP5', name: 'Shampoo', unity: 'Mililitros', price: 27.5, description: 'Shampoo de 500 ml para niños', state: 'Activo'},
	{code: 'LLAVE6', name: 'Llavero', unity: 'Pieza', price: 20.0, description: 'Llavero artesanal', state: 'Activo'},
	{code: 'JABON7', name: 'Jabon', unity: 'Pieza', price: 7.5, description: 'Jabon aromatico', state: 'Activo'},
	{code: 'AROMA8', name: 'Aromatizante', unity: 'Pieza', price: 35.0, description: 'Aromatizante en spray', state: 'Activo'}])

internos = Interno.create([{nombre: 'Fransisco', apellido1: 'Coca', sexo: 'Masculino', ci: 3938766, estadoCivil: 'Soltero', direccion: 'Chapare', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 2, 28), fechaNacimiento: DateTime.new(1989, 2, 5)},
	{nombre: 'Juan', apellido1: 'Mamani', apellido2: 'Colque', sexo: 'Masculino', ci: 911348, estadoCivil: 'Divorciado', direccion: 'Capitan Ustariz km 9', lugarNacimiento: 'Nuestra Señora de La Paz La Paz', fechaIngreso: DateTime.new(2015, 1, 5), fechaNacimiento: DateTime.new(1970, 8, 15)},
	{nombre: 'Rina', apellido1: 'Garcia', apellido2: '', sexo: 'Femenino', ci: 3984622, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Cercado Cochabamba', fechaIngreso: DateTime.new(2015, 4, 23), fechaNacimiento: DateTime.new(1983, 4, 5)},
	{nombre: 'Yolanda', apellido1: 'Paz', apellido2: 'Casanovas', sexo: 'Femenino', ci: 959314, estadoCivil: 'Divorciada', direccion: 'Blanco Galindo Km. 3.5', lugarNacimiento: 'Chapare Cochabamba', fechaIngreso: DateTime.new(2014, 11, 24), fechaNacimiento: DateTime.new(1969, 5, 7)},
	{nombre: 'Julio', apellido1: 'Luna', apellido2: '', sexo: 'Masculino', ci: 5757281, estadoCivil: 'Casado', direccion: 'Nuestra SeLa Paz', lugarNacimiento: 'Chapare Cochabamba', fechaIngreso: DateTime.new(2015, 5, 30), fechaNacimiento: DateTime.new(1979, 9, 3)},
	{nombre: 'Jorge', apellido1: 'Coca', apellido2: 'Quispe', sexo: 'Masculino', ci: 853126, estadoCivil: 'Soltero', direccion: 'Sacaba Cochabamba', lugarNacimiento: 'Chapare Cochabamba', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Maria', apellido1: 'Nina', apellido2: 'Vargas', sexo: 'Masculino', ci: 999991, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'jose', apellido1: 'Valdivia', apellido2: 'Orellana', sexo: 'Masculino', ci: 7236544, estadoCivil: 'Soltero', direccion: 'Avenida Arenal Santa Cruz', lugarNacimiento: 'Santa Cruz Santa Cruz', fechaIngreso: DateTime.new(2014,3,19), fechaNacimiento: DateTime.new(1990, 3, 15)},	{nombre: 'Maria', apellido1: 'Barriento', apellido2: '', sexo: 'Masculino', ci: 999991, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Maria', apellido1: 'Barrientos', apellido2: '', sexo: 'Femenino', ci: 999991, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Sacaba Cochabamba', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Ana', apellido1: 'Coca', apellido2: '', sexo: 'Femenino', ci: 999991, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Lola', apellido1: 'Valdicia', apellido2: 'Perez', sexo: 'Femenino', ci: 999991, estadoCivil: 'Casado', direccion: 'Puente Antezana', lugarNacimiento: 'Chapare Cochabamba', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Fransisca', apellido1: 'Obama', apellido2: '', sexo: 'Femenino', ci: 999991, estadoCivil: 'Sotero', direccion: 'Coronilla', lugarNacimiento: 'Quillacollo Cochabamba', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Erika', apellido1: 'Perez', apellido2: '', sexo: 'Femenino', ci: 999991, estadoCivil: 'Soltero', direccion: 'Miamicito', lugarNacimiento: 'Chapare Cochabamba', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Mario', apellido1: 'Coca', apellido2: 'Coca', sexo: 'Femenino', ci: 999991, estadoCivil: 'Soltero', direccion: 'Siles', lugarNacimiento: 'Sacaba Cochabamba', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)}])



