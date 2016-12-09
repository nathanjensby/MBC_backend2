# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
Measurement.destroy_all
Recipe.destroy_all


#Recipes

brown_derby = Recipe.create({
  name: "Brown Derby",
  instructions: "Mix bourbon, juice, and honey mixture in a shaker with ice; shake to chill. Strain into champagne coupe."
  })

marg = Recipe.create({
    name: "Riley-Rita",
    instructions: "Shake all Items with ice and strain into a rocks glass. Good enough for jazz."
    })

old_f = Recipe.create({
  name: "Old Fashioned",
  instructions: "Pour the simple syrup, water, and bitters into a whiskey glass. Stir to combine, then place the ice cubes in the glass. Pour bourbon over the ice and garnish with the orange slice and maraschino cherry."
  })

g_hound = Recipe.create({
  name: "Greyhound",
  instructions: "Add the vodka and grapefruit juice. Stir and pour over ice. Add simple syrup as needed."
  })

mule = Recipe.create({
  name: "Moscow Mule",
  instructions: "Pour vodka and lime juice into a mug; add ice cubes and ginger beer. Stir to combine. Add lime wedge for garnish."
  })

mint_j = Recipe.create({
  name: "Mint Julep",
  instructions: "Place the mint leaves in the bottom of an old-fashioned glass and top with the sugar. Muddle these together until the leaves begin to break down. Add a splash of seltzer water, fill the glass 3/4 full with crushed ice, and add the bourbon. Top with another splash of seltzer, stir, and garnish with a sprig of mint. Serve immediately."
  })

mart = Recipe.create({
  name: "Martini",
  instructions: "Combine ingredients in a mixing glass and fill with ice. Stir well to chill and strain into a chilled cocktail glass. Twist a piece of lemon peel over the drink and use as garnish or toss in an olive."
  })

gg = Recipe.create({
  name: "Green Ghost",
  instructions: "Fill a cocktail shaker with ice. Add gin, Chartreuse, and lime juice. Shake until well chilled, about 15 seconds. Strain into cocktail glass and serve."
  })

neg = Recipe.create({
  name: "Negroni",
  instructions: "ON THE ROCKS: combine the ingredients in an old-fashioned glass filled with ice; stir to combine, twist a thin piece of orange peel over the drink for aromatics and use the twist as garnish.

  STRAIGHT UP: combine the ingredients in a mixing glass and fill with ice. Stir well for 20 seconds, and strain into a chilled cocktail glass. Twist a piece of orange peel over the drink, and use the twist as garnish."
  })

boul = Recipe.create({
  name: "Boulevardier",
  instructions: "Pour ingredients into a mixing glass and fill with cracked ice. Stir well for 20 seconds and strain into a chilled cocktail glass. Garnish with a twist of orange peel."
  })

manhat = Recipe.create({
  name: "Manhattan",
  instructions: "Pour the whiskey, sweet vermouth, and bitters into a mixing glass filled with ice. Stir until outside of shaker is very cold to touch.
  Place a maraschino cherry in the bottom of a chilled cocktail glasses. Strain the contents of the shaker over the cherry and serve immediately."
  })

daq = Recipe.create({
  name: "Daquiri",
  instructions: "Pour sugar and lime juice into a cocktail shaker and stir until sugar is dissolved. Add the rum and fill shaker with ice; shake well for 10 seconds and strain into a chilled cocktail glass."
  })

cuba = Recipe.create({
  name: "Cuba Libre",
  instructions: "Squeeze a lime into a Collins or highball glass. Drop half the spent lime shell into the glass and muddle the oils into the lime juice. Add ice and rum. Top with cola and stir briefly."
  })

#Items

t = Item.create(name:"Tequila")
b = Item.create(name:"Bourbon")
r = Item.create(name:"Rye Whiskey")
v = Item.create(name:"Vodka")
g = Item.create(name:"Gin")
d_rum = Item.create(name:"Dark Rum")
l_rum = Item.create(name:"Light Rum")
d_ver = Item.create(name:"Dry Vermouth")
s_ver = Item.create(name:"Sweet Vermouth")
camp = Item.create(name:"Campari")

gm = Item.create(name:"Grand Marnier orange liqueur")
gc = Item.create(name:"Green Chartreuse")

gf = Item.create(name:"Grapefruit juice")
honey = Item.create(name: "Honey")
water = Item.create(name: "Water")
g_beer = Item.create(name: "Ginger beer")
lime = Item.create(name: "Lime")
lime_j = Item.create(name: "Lime juice")
lime_w = Item.create(name: "Lime wedge")
agav = Item.create(name:"Agave nector")
ss = Item.create(name:"Simple syrup")
bit = Item.create(name: "Orange Bitters")
a_bit = Item.create(name:"Angostura Bitters")
orange = Item.create(name: "Orange")
m_cherry = Item.create(name: "Maraschino cherry")
mint = Item.create(name: "Mint leaves")
sugar = Item.create(name: "Sugar")
seltz = Item.create(name: "Seltzer water")
o_p = Item.create(name: "Orange peel")
cola = Item.create(name: "Cola")

#Measurements

m = Measurement.new
m.amount = "1.5 tsp"
m.item_id = honey.id
m.recipe_id = brown_derby.id
m.save

m2 = Measurement.new
m2.amount = "1.5 tsp"
m2.item_id = water.id
m2.recipe_id = brown_derby.id
m2.save

m3 = Measurement.new
m3.amount = "1 oz"
m3.item_id = b.id
m3.recipe_id = brown_derby.id
m3.save

m4 = Measurement.new
m4.amount = "1 oz"
m4.item_id = gf.id
m4.recipe_id = brown_derby.id
m4.save

m5 = Measurement.new
m5.amount = "2 oz"
m5.item_id = t.id
m5.recipe_id = marg.id
m5.save

m5 = Measurement.new
m5.amount = "1 oz"
m5.item_id = gm.id
m5.recipe_id = marg.id
m5.save

m6 = Measurement.new
m6.amount = "1.5 oz"
m6.item_id = lime_j.id
m6.recipe_id = marg.id
m6.save

m7 = Measurement.new
m7.amount = "(optional) to taste"
m7.item_id = agav.id
m7.recipe_id = marg.id
m7.save

m8 = Measurement.new
m8.amount = "2 tsp"
m8.item_id = ss.id
m8.recipe_id = old_f.id
m8.save

m9 = Measurement.new
m9.amount = "1 tsp"
m9.item_id = water.id
m9.recipe_id = old_f.id
m9.save

m10 = Measurement.new
m10.amount = "1.5 oz"
m10.item_id = b.id
m10.recipe_id = old_f.id
m10.save

m11 = Measurement.new
m11.amount = "2 dashes"
m11.item_id = agav.id
m11.recipe_id = old_f.id
m11.save

m12 = Measurement.new
m12.amount = "1 slice"
m12.item_id = orange.id
m12.recipe_id = old_f.id
m12.save

m13 = Measurement.new
m13.amount = "1"
m13.item_id = m_cherry.id
m13.recipe_id = old_f.id
m13.save

m14 = Measurement.new
m14.amount = "(optional) to taste"
m14.item_id = ss.id
m14.recipe_id = g_hound.id
m14.save

m15 = Measurement.new
m15.amount = "2 oz"
m15.item_id = v.id
m15.recipe_id = g_hound.id
m15.save

m16 = Measurement.new
m16.amount = "4 oz"
m16.item_id = gf.id
m16.recipe_id = g_hound.id
m16.save

m17 = Measurement.new
m17.amount = "1.5 oz"
m17.item_id = v.id
m17.recipe_id = mule.id
m17.save

m18 = Measurement.new
m18.amount = "5 oz"
m18.item_id = lime_j.id
m18.recipe_id = mule.id
m18.save

m19 = Measurement.new
m19.amount = "4 oz"
m19.item_id = g_beer.id
m19.recipe_id = mule.id
m19.save

m20 = Measurement.new
m20.amount = "1"
m20.item_id = lime_w.id
m20.recipe_id = mule.id
m20.save

m21 = Measurement.new
m21.amount = "10"
m21.item_id = mint.id
m21.recipe_id = mint_j.id
m21.save

m22 = Measurement.new
m22.amount = "1.5 tsp"
m22.item_id = sugar.id
m22.recipe_id = mint_j.id
m22.save

m23 = Measurement.new
m23.amount = "Splash of"
m23.item_id = seltz.id
m23.recipe_id = mint_j.id
m23.save

m24 = Measurement.new
m24.amount = "2.5 oz"
m24.item_id = b.id
m24.recipe_id = mint_j.id
m24.save

m25 = Measurement.new
m25.amount = "2 oz"
m25.item_id = g.id
m25.recipe_id = mart.id
m25.save

m26 = Measurement.new
m26.amount = "1 oz"
m26.item_id = d_ver.id
m26.recipe_id = mart.id
m26.save

m27 = Measurement.new
m27.amount = "1 dash"
m27.item_id = bit.id
m27.recipe_id = mart.id
m27.save

m28 = Measurement.new
m28.amount = "2 oz"
m28.item_id = g.id
m28.recipe_id = gg.id
m28.save

m29 = Measurement.new
m29.amount = ".5 oz"
m29.item_id = gc.id
m29.recipe_id = gg.id
m29.save

m30 = Measurement.new
m30.amount = ".5 oz"
m30.item_id = lime_j.id
m30.recipe_id = gg.id
m30.save

m31 = Measurement.new
m31.amount = "1 oz"
m31.item_id = g.id
m31.recipe_id = neg.id
m31.save

m32 = Measurement.new
m32.amount = "1 oz"
m32.item_id = camp.id
m32.recipe_id = neg.id
m32.save

m33 = Measurement.new
m33.amount = "1 oz"
m33.item_id = s_ver.id
m33.recipe_id = neg.id
m33.save

m34 = Measurement.new
m34.amount = "1 slice"
m34.item_id = o_p.id
m34.recipe_id = neg.id
m34.save

m35 = Measurement.new
m35.amount = "1 oz"
m35.item_id = b.id
m35.recipe_id = boul.id
m35.save

m36 = Measurement.new
m36.amount = "1 oz"
m36.item_id = camp.id
m36.recipe_id = boul.id
m36.save

m37 = Measurement.new
m37.amount = "1 oz"
m37.item_id = s_ver.id
m37.recipe_id = boul.id
m37.save

m38 = Measurement.new
m38.amount = "1 slice"
m38.item_id = o_p.id
m38.recipe_id = boul.id
m38.save

m39 = Measurement.new
m39.amount = "2 oz"
m39.item_id = r.id
m39.recipe_id = manhat.id
m39.save

m40 = Measurement.new
m40.amount = "1 oz"
m40.item_id = s_ver.id
m40.recipe_id = manhat.id
m40.save

m41 = Measurement.new
m41.amount = "2 dashes"
m41.item_id = a_bit.id
m41.recipe_id = manhat.id
m41.save

m42 = Measurement.new
m42.amount = "1"
m42.item_id = m_cherry.id
m42.recipe_id = manhat.id
m42.save

m43 = Measurement.new
m43.amount = "2 oz"
m43.item_id = l_rum.id
m43.recipe_id = daq.id
m43.save

m44 = Measurement.new
m44.amount = ".75 oz"
m44.item_id = lime_j.id
m44.recipe_id = daq.id
m44.save

m45 = Measurement.new
m45.amount = "1 tsp"
m45.item_id = sugar.id
m45.recipe_id = daq.id
m45.save

m46 = Measurement.new
m46.amount = "2 oz"
m46.item_id = d_rum.id
m46.recipe_id = cuba.id
m46.save

m47 = Measurement.new
m47.amount = "1"
m47.item_id = lime.id
m47.recipe_id = cuba.id
m47.save

m48 = Measurement.new
m48.amount = "Splash of"
m48.item_id = cola.id
m48.recipe_id = cuba.id
m48.save
