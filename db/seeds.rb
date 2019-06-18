# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rodrigo = User.create({  email: "lrpena@miuandes.cl", lastname: "Peña", firstname: "Rodrigo", password: "123456", password_confirmation: "123456" })

p20 = Product.create({   brand: "Huawei", model: "P20 PRO", variant: "Blue", price: 300000, shortdesc: "Huawei P20 is a nice phone", longdesc: "Huawei P20 has a better camera than iPhone X and it's not even the latest phone released by the company."
                     })

p30 = Product.create({   brand: "Huawei", model: "P30 PRO", variant: "Blue", price: 500000, shortdesc: "Huawei P30 Pro has a new superzoom camera", longdesc: "Huawei P30 Pro has the best optical zoom that has been installed on a mobile phone."
                     })

pixel4 = Product.create({   brand: "Google", model: "Pixel 4", variant: "White", price: 700000, shortdesc: "Google offers the best android experience with it's own mobile phone", longdesc: "Pixel 4 aims to compete with the best phones on the market such as iPhone X or Huawei P30 Pro."
                     })


firstaddress = Address.create({  phone: "+56989212652", address1: "Escuela Agricola 1710", address2: "DP2304A", city: "Santiago", country: "CL", zipcode: "7820000", user_id: 1
                              })


firstorder = Order.new({  user_id: 1, billingaddress_id: 1, shippingaddress_id: 1
                          })

firstorder.products = [Product.first]

firstorder.save

secondorder = Order.new({  user_id: 1, billingaddress_id: 1, shippingaddress_id: 1
                          })
secondorder.products = [p20, p30]
secondorder.save
