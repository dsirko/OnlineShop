# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all

Product.create!(tittle: 'title1',
                description:
                    %{<p>
                        description1
                        lalala.
                    </p>},
                image_url: 'image1.jpg',
                price: 49.99)

Product.create!(tittle: 'title2',
                description:
                    %{<p>
                        description2
                        lalala.
                    </p>},
                image_url: 'image2.jpg',
                price: 47.99)



