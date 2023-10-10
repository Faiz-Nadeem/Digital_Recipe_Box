import 'package:flutter/material.dart';

class Recipe {
  final String name;
  final String time;
  final String image;
  final String level;
  final String emogi;
  final String describe;
  final String shortdetail;
  final String Ingredients;

  Recipe({
    required this.name,
    required this.time,
    required this.image,
    required this.level,
    required this.emogi,
    required this.describe,
    required this.shortdetail,
    required this.Ingredients,
  });
}
final List<Recipe> recipes = [
    Recipe(
      name: 'Tawa Fish',
      time: '10 minutes',
      image: 'assets/images/r1.jpg',
      level: 'Easy',
      emogi: '😃',
      shortdetail: 'Shallow fried with crispy crust! Tender, soft, juicy, and full of spices.....',
      Ingredients: "Fish, Yogurt,Spices, Ginger Garlic Paste, Fresh Lemon Juice, Oil",
      describe: 'Start by washing and drying the fish pieces, then squeeze fresh lemon juice on both sides of the fish. In a deep bowl, prepare a fish marinade by mixing yogurt, salt, black pepper, red chili powder, turmeric, coriander powder, garam masala, carom seed powder, roasted cumin, garlic, and ginger paste to make a thick paste. Apply this paste to both sides of the fish and let it marinate for at least an hour. Heat a skillet or tawa, brush it with oil, and cook the marinated fish for about 10 minutes on each side until it turns golden brown. Garnish with freshly chopped coriander/cilantro and another squeeze of lemon juice. Your delicious Tawa fish fry is now ready to enjoy.',
      ),

    Recipe(
      name: 'Garlic Butter Fried Rice',
      time: '15 minutes',
      image: 'assets/images/r3.jpg',
      level: 'Medium',
      emogi: '😐',
      shortdetail: 'Asian countries love to have rice so its a great idea to serve it as a side meal....',
      Ingredients: "Cooked Rice, Garlic (Sliced + Grated),Onion (Chopped), Green chilies, Green chilies, Fresh Coriander/Cilantro for garnishing",
      describe: 'Start by washing the rice and soaking it for 10 minutes. If you have cooked rice from a day before, you can use that and skip this step. In a pan, heat some oil and shallow fry sliced garlic until it turns golden brown. Remove the garlic and set it aside. Next, add butter to the pan and heat it over medium temperature. Add grated garlic, chopped onion, and optional green chilies, sautéing for a minute to release aromas. Season with salt, garlic powder, and black pepper, then add a little water or broth and mix on high heat. Finally, add the boiled rice, stirring and frying it on high heat until its well combined and flavorful. Enjoy your delicious garlic fried rice!',
    
    ),
    Recipe(
      name: 'Garlic Naan (Without Yeast)',
      time: '15 minutes',
      image: 'assets/images/r4.jpg',
      level: 'Easy',
      emogi: '😃',
      shortdetail: 'Best to serve as flatbread with the main course at dinner or lunch!...',
      Ingredients: "All Purpose flour, Salt + Baking soda + Garlic Powder, Oil, Yogurt, Water, Sesame, Butter + Freshly Grated Garlic",
      describe: 'Prepare the dough by combining all-purpose flour, salt, baking soda, garlic powder, yogurt, and oil. Crumble the mixture and knead it into a soft dough by adding water. Let the dough rest in a warm place for 4 to 8 hours or overnight. After resting, knead the dough briefly and roll it into naan shapes, optionally applying sesame seeds. Finally, apply a little water to the base of the naan.',
    ),
    Recipe(
      name: 'Egg Mayo Club Sandwich',
      time: '5 minutes',
      image: 'assets/images/r5.jpg',
      level: 'Easy',
      emogi: '😃',
      shortdetail: 'Super quick and portable idea for busy moms and dads to make for breakfast.....',
      Ingredients: "Eggs, Yogurt,Spices, Oil (If Needed)",
      describe: 'First, boil and peel the eggs, then mash them and season with salt and black pepper. Add carrots, capsicum, and green olives for color and healthiness. Mix in mayonnaise for protein. Soften the bread in the microwave, spread the egg mixture on one slice, cover with another slice, and cut into bite-sized portions.',
    ),
    Recipe(
      name: 'Pizza Poppers',
      time: '30 minutes',
      image: 'assets/images/r6.jpg',
      level: 'Medium',
      emogi: '😐',
      shortdetail: 'Its a mini pizza bites or pizza bombs that can be served as a snack or an appetizer at your next party.....',
      Ingredients: "Pizza dough, Mozzarella Cheese,Pizza Sauce, Stuffing, Topping",
      describe: 'To prepare these delicious pizza poppers, start by kneading the pizza dough until its smooth and fluffy, whether youre using homemade or store-bought dough. Then, divide the dough into small, uniform-sized balls, flattening each one with a sprinkle of all-purpose flour to prevent sticking. Add pizza sauce, your choice of toppings (like chicken), and generous amounts of mozzarella cheese to the center of each dough circle. Carefully wrap the dough around the fillings, forming small balls, and place them on a baking tray lined with aluminum foil. In a bowl, mix butter, olive oil, and Italian seasoning, then brush this mixture onto all the pizza poppers. Bake them at 220°C (428°F) for 12 to 15 minutes, broiling for the last 5 minutes to achieve a beautiful golden brown color. Please note that baking times may vary depending on your ovens brand and model. Enjoy your homemade pizza poppers!',
    ),
    Recipe(
      name: 'Chicken Spring Rolls',
      time: '7 minutes',
      image: 'assets/images/r7.jpg',
      level: 'Easy',
      emogi: '😃',
      shortdetail: 'Best recipe to serve as a party snack or add in your dinner as an appetizer......',
      Ingredients: "spring roll sheet/wrappers, garlic, oil for frying, Cabbage, carrot, green bell peppers, soya sauce, cornstarch",
      describe: 'To make mini spring rolls, sauté chicken with garlic, add a mix of vegetables (cabbage, carrot, green bell peppers), season with dark soy sauce and cornstarch, and mix well on high heat. Then, place the stuffing in the middle of spring roll sheets and wrap them securely. Heat oil in a pan for deep frying and fry the rolls until golden brown on both sides.',
    ),
    Recipe(
      name: 'Chicken Manchurian',
      time: '25 minutes',
      image: 'assets/images/r8.jpg',
      level: 'Medium',
      emogi: '😐',
      shortdetail: 'Prepared with marinated fried chicken chunks tossed in a hot and sour Manchurian Sauce.....',
      Ingredients: "cornstarch, chicken( It needs to be slightly brown),Freshly grated garlic, purple onion, veggies in uniform style, Oil, Soya saucez, salt, Roasted sesame, lemon juice or apple cider ",
      describe: 'Creating Chicken Manchurian at home is a delightful culinary adventure. Start by preparing crispy fried chicken: whisk egg white and cornstarch into a smooth paste, coat chicken pieces, and deep-fry them until theyre beautifully golden. In a separate pan, sauté grated garlic, add assorted veggies, briefly stir-fry to maintain their crunch, and season with salt, pepper, dark soy sauce, oyster sauce, vinegar, and brown sugar, ensuring a harmonious blend. Introduce the fried chicken into the sauce, cook over high heat until flavors meld, and finish with a garnish of roasted sesame seeds. With this homemade Chicken Manchurian, relish restaurant-quality flavors in your kitchen.',
    ),
    Recipe(
      name: 'Chicken Biryani',
      time: '25 minutes',
      image: 'assets/images/r9.jpg',
      level: 'Hard',
      emogi: '😰',
      shortdetail: 'Give it a try and you will love the variations in taste....',
      Ingredients: "Chicken, Ginger Garlic Paste ,Ginger Garlic Paste , Yogurt, Yogurt, Oil, Tomatoes, Rice, Fresh lemon, Edible yellow food color",
      describe: 'To prepare Chicken Biryani, start by marinating the chicken in a mixture of yogurt, ginger-garlic paste, salt, red chili powder, turmeric powder, coriander powder, garam masala, and crushed brown onion. Let it marinate for at least an hour. In a pan, heat oil and add whole garam masala before cooking the marinated chicken until it releases moisture, then add peeled tomatoes and cook until oil floats on top. Add 200 ml of water, cover, and simmer for 25 minutes. Meanwhile, soak basmati rice for half an hour and partially cook it. In a biryani pot, layer rice, chicken curry, fresh coriander, and green chilies. Repeat for a second layer, then finish with rice, red food color, lemon juice, crushed brown onion, and biryani essence. Steam until fully cooked, and your Chicken Biryani is ready to enjoy.',
    ),
  
    Recipe(
      name: 'Chicken Boti Kabab',
      time: '25 minutes',
      image: 'assets/images/r10.jpg',
      level: 'Hard',
      emogi: '😰',
      shortdetail: 'Its simple, quick, and easy to marinate boneless chicken, thread it on a skewer, and bake in an oven.....',
      Ingredients: "Chicken, Yogurt + cream, Spices(salt, black salt, red chili powder, coriander powder), Ginger Garlic Paste, Fresh Lemon Juice, Oil",
      describe: 'Prepare delicious Oven-Roasted Chicken Boti Kababs by marinating chicken with lemon juice, ginger-garlic paste, red chili powder, salt, black salt, black pepper, garam masala, and yogurt. Let it marinate for at least 2 hours, then add fresh cream, kasuri methi, and roasted almond and cashew powder. Thread the marinated chicken onto skewers, place them on an oiled, foil-lined baking tray, and bake at 250°C (482°F) for 40 minutes, broiling for 5 minutes for a roasted finish. Serve and enjoy this mouthwatering dish!',
    ),
    Recipe(
      name: 'Chicken Corn Soup',
      time: '10 minutes',
      image: 'assets/images/r11.jpg',
      level: 'Easy',
      emogi: '😃',
      shortdetail: 'Its a Chinese warm soup cooked in Pakistani style in shredded chicken stock with the drizzle of egg drops....',
      Ingredients: "Chicken - ½ Cup (Shredded), Corn, Corn flour - 1 cup (paste with water), Garlic, Dark Soya sauce, Vinegar, Eggs",
      describe: 'Prepare chicken corn soup by simmering chicken with salt, pepper, and garlic in 1 liter of water for 30 minutes. Afterward, shred the chicken and strain the stock. Boil the stock with shredded chicken, corn, and season with salt, pepper, and vinegar. Simmer for 5-10 minutes. Thicken the soup with a cornflour mixture while stirring continuously. Add dark soya sauce for flavor. Finally, beat 2 eggs and add them to the boiling soup, stirring for a perfect texture. Your chicken corn soup is now ready to enjoy!',
    ),
  
  ];