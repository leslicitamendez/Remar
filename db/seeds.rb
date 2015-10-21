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
