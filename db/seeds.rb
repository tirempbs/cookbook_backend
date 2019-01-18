# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'destroying users'
User.destroy_all
puts 'users destroyed'
puts '-------------------'
puts 'creating users'
User.create([
  {username: 'tirempbs', password: 'pass'},
  {username: 'laura', password: 'pass'}
])
puts 'users created'
puts '-------------------'
puts 'destroying recipes'
Recipe.destroy_all
puts 'recipes destroyed'
puts '-------------------'
puts 'creating recipes'
recipes = Recipe.create([
    {
        title: 'Keto Chicken & Green Beans Almondine Meal Prep', 
        image_url: 'https://369t7u43n93dgc5pt43uc681-wpengine.netdna-ssl.com/wp-content/uploads/2018/12/chicken-green-bean-almondine-4.jpg', 
        source_url: 'https://fitmencook.com/keto-chicken-green-beans-meal-prep/', 
        publisher_name: 'Fit Men Cook', 
        publisher_url: 'https://fitmencook.com/',
        user_generated: true
    },
    {
        title: '4-Ingredient Keto Coconut Chicken Curry', 
        image_url: 'https://369t7u43n93dgc5pt43uc681-wpengine.netdna-ssl.com/wp-content/uploads/2017/06/DSC04179-3-850x478.jpg', 
        source_url: 'https://fitmencook.com/keto-coconut-chicken-curry/', 
        publisher_name: 'Fit Men Cook', 
        publisher_url: 'https://fitmencook.com/',
        user_generated: true
    },
    {
        title: 'INSTANT POT LEMON CHICKEN WITH GARLIC', 
        image_url: 'https://lifemadesweeter.com/wp-content/uploads/Instant-Pot-Lemon-Chicken-with-Garlic-Photo-Picture-1-8.jpg', 
        source_url: 'https://lifemadesweeter.com/instant-pot-lemon-garlic-chicken/', 
        publisher_name: 'Life Made Sweeter', 
        publisher_url: 'https://lifemadesweeter.com/',
        user_generated: true
    },
    {
        title: 'THE BEST CLASSIC CHILI', 
        image_url: 'https://www.thewholesomedish.com/wp-content/uploads/2018/05/The-Best-Classic-Chili-4.jpg', 
        source_url: 'https://www.thewholesomedish.com/the-best-classic-chili/', 
        publisher_name: 'The Wholesome Dish', 
        publisher_url: 'https://www.thewholesomedish.com/',
        user_generated: true
    },
    {
        title: 'UNSTUFFED CABBAGE ROLL SOUP', 
        image_url: 'https://www.thewholesomedish.com/wp-content/uploads/2016/01/Unstuffed-Cabbage-Roll-Soup-2.jpg', 
        source_url: 'https://www.thewholesomedish.com/unstuffed-cabbage-roll-soup/', 
        publisher_name: 'The Wholesome Dish', 
        publisher_url: 'https://www.thewholesomedish.com/',
        user_generated: true
    },
    {
        title: 'CROCK POT CHICKEN ENCHILADA SOUP', 
        image_url: 'https://www.thewholesomedish.com/wp-content/uploads/2014/01/IMG_6908-1024x848.jpg', 
        source_url: 'https://www.thewholesomedish.com/crock-pot-chicken-enchilada-soup/', 
        publisher_name: 'The Wholesome Dish', 
        publisher_url: 'https://www.thewholesomedish.com/',
        user_generated: true
    },
])
puts 'recipes created'
puts '-------------------'
puts 'destroying ingredients'
Ingredient.destroy_all
puts 'ingredients destroyed'
puts '-------------------'
puts 'creating ingredients'
ingredients = Ingredient.create([
    {recipe_id: Recipe.all[0].id, line_item: '1 lb raw green beans'},
    {recipe_id: Recipe.all[0].id, line_item: '1 lb chicken breast, tenders'},
    {recipe_id: Recipe.all[0].id, line_item: '1 tablespoon olive oil'},
    {recipe_id: Recipe.all[0].id, line_item: '1 1/2 teaspoons garlic powder'},
    {recipe_id: Recipe.all[0].id, line_item: '1 1/2 teaspoons onion powder'},
    {recipe_id: Recipe.all[0].id, line_item: '1 1/2 teaspoons cumin'},
    {recipe_id: Recipe.all[0].id, line_item: '1 tablespoon dried rosemary'},
    {recipe_id: Recipe.all[0].id, line_item: 'pinch of sea salt & pepper'},
    {recipe_id: Recipe.all[0].id, line_item: '2 tablespoons olive oil'},
    {recipe_id: Recipe.all[0].id, line_item: '1 tablespoon garlic, minced'},
    {recipe_id: Recipe.all[0].id, line_item: '1/3 cup sliced almonds'},
    {recipe_id: Recipe.all[1].id, line_item: '1 1/2 lb (24oz) chicken thighs, raw and fat minimally trimmed'},
    {recipe_id: Recipe.all[1].id, line_item: '1 1/4 cup coconut milk'},
    {recipe_id: Recipe.all[1].id, line_item: '4 teaspoons red curry paste'},
    {recipe_id: Recipe.all[1].id, line_item: '1/3 cup diced red onion'},
    {recipe_id: Recipe.all[1].id, line_item: 'spray olive oil'},
    {recipe_id: Recipe.all[1].id, line_item: 'sea salt & pepper to taste'},
    {recipe_id: Recipe.all[1].id, line_item: 'fresh cilantro'},
    {recipe_id: Recipe.all[2].id, line_item: '6-8 boneless chicken thighs skinless or with skin'},
    {recipe_id: Recipe.all[2].id, line_item: 'sea salt and pepper to taste'},
    {recipe_id: Recipe.all[2].id, line_item: '1/2 teaspoon garlic powder'},
    {recipe_id: Recipe.all[2].id, line_item: '1/2 teaspoon smoked paprika'},
    {recipe_id: Recipe.all[2].id, line_item: '1/2 teaspoon red chili flakes optional or to taste'},
    {recipe_id: Recipe.all[2].id, line_item: '2 Tablespoons olive oil'},
    {recipe_id: Recipe.all[2].id, line_item: '3 Tablespoons butter (swap with olive oil for paleo)'},
    {recipe_id: Recipe.all[2].id, line_item: '1/2 small onion chopped'},
    {recipe_id: Recipe.all[2].id, line_item: '4 garlic cloves sliced or minced'},
    {recipe_id: Recipe.all[2].id, line_item: 'Juice of 1 lemon'},
    {recipe_id: Recipe.all[2].id, line_item: '2-4 teaspoons Italian seasoning'},
    {recipe_id: Recipe.all[2].id, line_item: 'zest of half a lemon'},
    {recipe_id: Recipe.all[2].id, line_item: '1/3 cup homemade or low sodium chicken broth'},
    {recipe_id: Recipe.all[2].id, line_item: '2 Tablespoons heavy cream leave out for paleo'},
    {recipe_id: Recipe.all[2].id, line_item: 'Chopped fresh parsley and lemon slices for garnish if desired'},
    {recipe_id: Recipe.all[3].id, line_item: '1 tablespoon olive oil'},
    {recipe_id: Recipe.all[3].id, line_item: '1 medium yellow onion'},
    {recipe_id: Recipe.all[3].id, line_item: '1 pound 90% lean ground beef'},
    {recipe_id: Recipe.all[3].id, line_item: '2 1/2 tablespoons chili powder'},
    {recipe_id: Recipe.all[3].id, line_item: '2 tablespoons ground cumin'},
    {recipe_id: Recipe.all[3].id, line_item: '2 tablespoons granulated sugar'},
    {recipe_id: Recipe.all[3].id, line_item: '2 tablespoons tomato paste'},
    {recipe_id: Recipe.all[3].id, line_item: '1 tablespoon garlic powder'},
    {recipe_id: Recipe.all[3].id, line_item: '1 1/2 teaspoons salt'},
    {recipe_id: Recipe.all[3].id, line_item: '1/2 teaspoon ground black pepper'},
    {recipe_id: Recipe.all[3].id, line_item: '1/4 teaspoon ground cayenne pepper'},
    {recipe_id: Recipe.all[3].id, line_item: '1 1/2 cups beef broth'},
    {recipe_id: Recipe.all[3].id, line_item: '1 (15 oz.) can petite diced tomatoes'},
    {recipe_id: Recipe.all[3].id, line_item: '1 (16 oz.) can red kidney beans, drained and rinsed'},
    {recipe_id: Recipe.all[3].id, line_item: '1 (8 oz.) can tomato sauce'},
    {recipe_id: Recipe.all[4].id, line_item: '1 lb. extra lean ground beef'},
    {recipe_id: Recipe.all[4].id, line_item: '1 medium yellow onion'},
    {recipe_id: Recipe.all[4].id, line_item: '3 garlic cloves'},
    {recipe_id: Recipe.all[4].id, line_item: '5 cups chopped green cabbage'},
    {recipe_id: Recipe.all[4].id, line_item: '4 cups 32 oz. low-sodium beef broth'},
    {recipe_id: Recipe.all[4].id, line_item: '3 cups tomato sauce'},
    {recipe_id: Recipe.all[4].id, line_item: '1 cup shredded carrots'},
    {recipe_id: Recipe.all[4].id, line_item: '1/2 cup uncooked white or brown long grain rice'},
    {recipe_id: Recipe.all[4].id, line_item: '2 dried bay leaves'},
    {recipe_id: Recipe.all[4].id, line_item: '3 tbsp. packed brown sugar'},
    {recipe_id: Recipe.all[4].id, line_item: '1 tsp. salt'},
    {recipe_id: Recipe.all[4].id, line_item: '1/2 tsp. dried oregano leaves'},
    {recipe_id: Recipe.all[4].id, line_item: '1/2 tsp. ground black pepper'},
    {recipe_id: Recipe.all[4].id, line_item: '1 1/2 tbsp. lemon juice'},
    {recipe_id: Recipe.all[5].id, line_item: '1 medium yellow onion, diced'},
    {recipe_id: Recipe.all[5].id, line_item: '1 medium sweet bell pepper, diced'},
    {recipe_id: Recipe.all[5].id, line_item: '2 cloves garlic, minced'},
    {recipe_id: Recipe.all[5].id, line_item: '2 cups frozen corn'},
    {recipe_id: Recipe.all[5].id, line_item: '1 (10 oz.) can Rotel diced tomatoes & green chilies'},
    {recipe_id: Recipe.all[5].id, line_item: '1 (10 oz.) jar or can enchilada sauce'},
    {recipe_id: Recipe.all[5].id, line_item: '4 cups chicken broth'},
    {recipe_id: Recipe.all[5].id, line_item: '1 tbsp. chili powder'},
    {recipe_id: Recipe.all[5].id, line_item: '1/2 tsp. cumin'},
    {recipe_id: Recipe.all[5].id, line_item: '½ tsp salt'},
    {recipe_id: Recipe.all[5].id, line_item: '½ tsp ground black pepper'},
    {recipe_id: Recipe.all[5].id, line_item: '1 pound boneless skinless chicken breast'},
    {recipe_id: Recipe.all[5].id, line_item: '1 (15 oz.) can black beans, drained and rinsed'},
    {recipe_id: Recipe.all[5].id, line_item: '1/2 cup light sour cream'},
  ])
puts 'ingredients created'
puts '-------------------'
puts 'destroying cookbooks'
Cookbook.destroy_all
puts 'cookbooks destroyed'
puts '-------------------'
puts 'creating cookbooks'
Cookbook.create([
  {user_id: User.all[0].id, title: 'Keto Recipes'},
  {user_id: User.all[0].id, title: 'Fall Recipes'},
  {user_id: User.all[1].id, title: 'Soup Recipes'}
])
puts 'cookbooks created'
puts '-------------------'
puts 'destroying cookbook recipes'
CookbookRecipe.destroy_all
puts 'cookbook recipes destroyed'
puts '-------------------'
puts 'creating cookbook recipes'
CookbookRecipe.create([
  {cookbook_id: Cookbook.all[0].id, recipe_id: Recipe.all[0].id},
  {cookbook_id: Cookbook.all[0].id, recipe_id: Recipe.all[1].id},
  {cookbook_id: Cookbook.all[0].id, recipe_id: Recipe.all[2].id},
  {cookbook_id: Cookbook.all[1].id, recipe_id: Recipe.all[3].id},
  {cookbook_id: Cookbook.all[1].id, recipe_id: Recipe.all[4].id},
  {cookbook_id: Cookbook.all[1].id, recipe_id: Recipe.all[5].id},
  {cookbook_id: Cookbook.all[2].id, recipe_id: Recipe.all[4].id},
  {cookbook_id: Cookbook.all[2].id, recipe_id: Recipe.all[5].id},
])
puts 'cookbook recipes created'
puts '-------------------'