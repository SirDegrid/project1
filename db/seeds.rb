Cut.destroy_all
c1 = Cut.create(:name => 'Shin', :location => 'Lower leg', :alternative_name => 'Shank, gravy beef', :characteristics => 'Lean, highly-worked, high connective tissue, slow cooked', :dish_id => 'Osso Buco',:image => 'https://www.thethreetomatoes.com/wp-content/uploads/2014/09/beef_shank.jpg')

c2 = Cut.create(:name => 'Eye Fillet', :location => 'Lower back', :alternative_name => 'Filet Mignon, tenderloin', :characteristics => 'Lean, tender, mild flavour, best served rare', :dish_id => 'Steak Tartare',:image => 'https://cdn.shopify.com/s/files/1/0329/0972/1732/products/Eye-Fillet-Steak_grande.jpg?v=1581232328')


c3 = Cut.create(:name => 'Brisket', :location => 'Breast', :characteristics => 'Tough, combination of fatty and lean meat, slow-cooked', :dish_id => 'Texas Brisket',:image => 'https://www.anglissmeats.com.au/wp-content/uploads/2018/10/brisket.jpg')


Dish.destroy_all
d1 = Dish.create(:name => 'Osso Buco', :cuisine => 'Italian', :image_URL => 'https://www.insidetherustickitchen.com/wp-content/uploads/2021/05/Osso-Bucco-1200px-Inside-the-Rustic-Kitchen.jpg', :recipe_URL => 'https://www.insidetherustickitchen.com/ossobuco/')

d2 = Dish.create(:name => 'Steak Tartare', :cuisine => 'French', :image_URL => 'https://lenaskitchenblog.com/wp-content/uploads/2021/08/steak-tartare-10.jpg', :recipe_URL => 'https://thehappyfoodie.co.uk/recipes/rick-steins-steak-tartare/')

d3 = Dish.create(:name => 'Texas Brisket', :cuisine => 'Southern', :image_URL => 'https://wordpress-live.heygrillhey.com/wp-content/uploads/2017/06/IMG_4557-2-1365x2048.jpg', :recipe_URL => 'https://heygrillhey.com/texas-style-smoked-beef-brisket/')


Wine.destroy_all
w1 = Wine.create(:name => 'Barolo', :region => 'Piedmont', :varietal => 'Nebbiolo', :image_URL => 'https://cdn.shopify.com/s/files/1/1408/3394/products/Palladino-Ornato_0e3ad3b5-03c2-4dbc-84bb-083eae4f7b55.jpg?v=1623935099')

w2 = Wine.create(:name => 'Chablis', :region => 'Burgundy', :varietal => 'Chardonnay', :image_URL => 'https://cdn.shopify.com/s/files/1/0611/3014/6026/products/WilliamFevreChablis1erCru_MonteedeTonnerre_Chardonnay_x660.jpg?v=1652937797')

w3 = Wine.create(:name => 'Montepulciano', :region => 'Tuscany', :image_URL => 'https://cdn.shopify.com/s/files/1/2572/9722/products/2015PaoloBeaPagliaro_700x.png?v=1653028672')


puts "Cuts and Dishes"
c1.dishes << d1
c2.dishes << d2
c3.dishes << d3

puts "Wines and Dishes"
d1.wines << w1
d2.wines << w2
d3.wines << w3

