# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# PRODUCTOS

productos = Product.create([{code: 'CHO01', name: 'Chocotejas', unity: 'Gramos', description: 'Dulces de chocolate de 25g', state: 'Activo'},
	{code: 'BIS01', name: 'Collar', unity: 'Gramos', description: 'Collar de perlas', state: 'Activo'},
	{code: 'BIS02', name: 'Manilla', unity: 'Gramos', description: 'Manilla hecho de shakiras', state: 'Activo'},
	{code: 'LIM01', name: 'Detergente', unity: 'Mililitros', description: 'Detergente lavavajillas de 1050 ml', state: 'Activo'},
	{code: 'LIM02', name: 'Shampoo', unity: 'Mililitros', description: 'Shampoo de 500 ml para niños', state: 'Activo'}])

internos = Interno.create([{nombre: 'Fransisco', apellido1: 'Attridge', sexo: 'Masculino', ci: 999990, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Alex', apellido1: 'Campos', apellido2: 'Campos', sexo: 'Masculino', ci: 999997, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Marco', apellido1: 'Barriento', apellido2: '', sexo: 'Masculino', ci: 999991, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Michelle', apellido1: 'Tumes', apellido2: '', sexo: 'Femenino', ci: 999992, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Nicole', apellido1: 'Nordeman', apellido2: '',  sexo: 'Femenino', ci: 999993, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Michael', apellido1: 'Smith', apellido2: '',  sexo: 'Masculino', ci: 999994, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)},
	{nombre: 'Jorge', apellido1: 'Colloca', apellido2: '',  sexo: 'Masculino', ci: 999995, estadoCivil: 'Casado', direccion: 'La Paz', lugarNacimiento: 'Chapare', fechaIngreso: DateTime.new(2015, 6, 22), fechaNacimiento: DateTime.new(1975, 6, 22)}])




