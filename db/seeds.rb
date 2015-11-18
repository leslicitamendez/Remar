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

internos = Interno.create([{nombre: 'Fransisco', apellido1: 'Attridge', sexo: 'Masculino', ci: 999990, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Alex', apellido1: 'Campos', apellido2: 'Campos', sexo: 'Masculino', ci: 999997, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Marco', apellido1: 'Barriento', apellido2: '', sexo: 'Masculino', ci: 999991, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Michelle', apellido1: 'Tumes', apellido2: '', sexo: 'Femenino', ci: 999992, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Nicole', apellido1: 'Nordeman', apellido2: '',  sexo: 'Femenino', ci: 999993, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Michael', apellido1: 'Smith', apellido2: '',  sexo: 'Masculino', ci: 999994, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Jorge', apellido1: 'Colloca', apellido2: '',  sexo: 'Masculino', ci: 999995, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)}])



