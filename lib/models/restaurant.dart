import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/cart_item.dart';
import 'package:food_app/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier{
  // list of Food menu
  final List<Food>_menu =[

    //burgers
    Food(
      name: "Classic CheeseBurger", 
      description: "A crispy patty, white buns, cheese sause, chilli sause, cheese slices, lettuce, tomato", imagePath: "lib/images/burgers/classic-cheese-burger.png", price: 100, category: FoodCategory.burgers, availableAddons: [
      Addon(name: "Extra cheese", price: 90),
      Addon(name: "Jalapeno", price: 50),
      Addon(name: "Onion", price: 50),
    ]
    ),
    Food(name: "Veggie Burger", 
    description: "A hearty veggie patty,our onion tomato herby sauce, White Mayomese, lettuce, tomato", imagePath: "lib/images/burgers/veg_burger.png", price: 150, category: FoodCategory.burgers, availableAddons: [
      Addon(name: "Extra Cheese", price: 80),
      Addon(name: "Extra  Mayo", price: 40),
      Addon(name: "Cocktail Dip", price: 40),
    ]
    ),
    Food(name: "Aloo Tikki Burger", 
    description: "Delicious potato patty burger smothered in flavorful sauces and served on a toasted bun.", imagePath: "lib/images/burgers/Aloo_tikki.png", price: 100, category: FoodCategory.burgers, availableAddons: [
      Addon(name: "Cheese Slice", price: 20),
      Addon(name: "Chipotle Mayo Dip", price: 30),
      Addon(name: "Tandoori sauce", price: 30),
    ]
    ),
    Food(name: "Chicken Burger", 
    description: "Signature chicken burger made with a crunchy chicken fillet, lettuce, onions, delicious mayo sauce", imagePath: "lib/images/burgers/chicken_burger.png", price: 289, category: FoodCategory.burgers, availableAddons: [
      Addon(name: "Thousand Dip", price: 148),
      Addon(name: "French Fries", price: 140),
      Addon(name: "Chilli Garlic Dip", price: 148),
    ]
    ),
    Food(name: "Egg Cheese Burger", 
    description: "Half cooked poached organic egg with fine choope onion & chefs secret sauce   *all items are prepared with amul butter and cheese", imagePath: "lib/images/burgers/eggburger.jpg", price: 200, category: FoodCategory.burgers, availableAddons: [
      Addon(name: "Cheese", price: 69),
      Addon(name: "Tomato", price: 20),
      Addon(name: "Onion", price: 20),
    ]
    ),
    Food(name: "Paneer Burger", 
    description: "A crispy Paneer patty, white buns, cheese slice, mayo, lettuce, tomato", imagePath: "lib/images/burgers/paneer_burger.png", price: 199, category: FoodCategory.burgers, availableAddons: [
      Addon(name: "Double Cheese Slice", price: 90),
      Addon(name: "Single Cheese Slice", price: 50),
      Addon(name: "King Fries", price: 130),
    ]
    ),
    Food(name: "Fish Fillet Burger", 
    description: "Crumbed crispy fish fillet & tartare sauce served in a brioche bun, mayo sauce", imagePath: "lib/images/burgers/Fish-Burger.jpg", price: 370, category: FoodCategory.burgers, availableAddons: [
      Addon(name: "Cheese Slice", price: 30),
      Addon(name: "Jalapenos", price: 30),
      Addon(name: "Gherkins", price: 30),
    ]
    ),
    Food(name: "tandoori Chicken Burger", 
    description: "Grilled Tandori Chicken indulge with onion, tomato, lettuce ", imagePath: "lib/images/burgers/tandoori_burger.jpg", price: 350, category: FoodCategory.burgers, availableAddons: [
      Addon(name: "Extra cheese", price: 90),
      Addon(name: "Jalapeno", price: 50),
      Addon(name: "Gherkins", price: 50),
    ]
    ),
    Food(name: "Ultimate Mutton Club Burger", 
    description: "Juicy Grilled Mutton Patty, Loads of Veggies, freshly Baked Buns", imagePath: "lib/images/burgers/mutton_burger.png", price: 389, category: FoodCategory.burgers, availableAddons: [
      Addon(name: "Extra cheese", price: 38),
      Addon(name: "Jalapeno", price: 50),
      Addon(name: "lettuce", price: 50),
    ]
    ),
    Food(name: "Bbq Chicken Burger", 
    description: "The smoky flavored patty pairing perfectly with the creamy cheese and seet and tangy BBQ sauce, crisp lettuce, spicy jalapeno, onions & tomatoes ", imagePath: "lib/images/burgers/bbq_burger.jpg", price: 249, category: FoodCategory.burgers, availableAddons: [
      Addon(name: "Add Cheese Slice", price: 25),
      Addon(name: "Upgrade to Cheese Blast Burger", price: 49),
      Addon(name: "Add Mayo", price: 20),
    ]
    ),

    //salads
    Food(name: "Greek Salad", 
    description: "Fresh cucumber, tomatoes, trio bell peppers, crumbled feta, green & black olives, lemon vinaigrette, pasta", imagePath: "lib/images/salads/Greek_Salad.png", price: 260, category: FoodCategory.salads, availableAddons: [
      Addon(name: "Hummus", price: 168),
      Addon(name: "Tossed Corn", price: 86),
      Addon(name: "Corn Chips", price: 76),
    ]
    ),
    Food(name: "Best Caesar Salad", 
    description: "Caesar salad is a green salad of romaine lettuce and croutons dressed with lemon juice", imagePath: "lib/images/salads/caesar_salad.jpg", price: 195, category: FoodCategory.salads, availableAddons: [
      Addon(name: "Add Chicken", price: 50),
      Addon(name: "Thosand Island dips", price: 30),
      Addon(name: "Sweet Onion", price: 30),
    ]
    ),
    Food(name: "Chicken Salad", 
    description:"Fresh Lettuce, Roasted Chicken strips, along with your favourite viggies & sauces ", imagePath: "lib/images/salads/Chicken-Salad.png", price: 209, category: FoodCategory.salads, availableAddons: [
      Addon(name: "Tomato", price: 30),
      Addon(name: "Olives", price: 30),
      Addon(name: "Honey Mustard Sauce", price: 20),
    ]
    ),
    Food(name: "Southwest Salad ", 
    description: "Assorted lettuce, Bell Peppers, Cucumber, Radish, Chicken Stripes, Onions, Corns, Cherry Tomatoes, black olives along with spicy jalapenoes yogurt dressing.", imagePath: "lib/images/salads/south_west.png", price:359, category: FoodCategory.salads, availableAddons: [
      Addon(name: "Extra chicken", price: 90),
      Addon(name: "Hass Avocado", price: 100),
      Addon(name: "Parmesan Cheese", price: 70),
    ]
    ),
    Food(name: "Quinoa Salad", 
    description: "Farm-fresh veggies tossed in an in-house mediterranean dressing along with quinoa and olives", imagePath: "lib/images/salads/quinoa-salat.png", price: 259, category: FoodCategory.salads, availableAddons: [
      Addon(name: "Mediterranean Dressing", price: 15),
      Addon(name: "Becon", price: 50),
      Addon(name: "Grilled Chicken", price: 80),
    ]
    ),

    // sides
   Food(name: "French Fries", 
    description: "Jazz up your meal with crispy and long fries made from high quality potatoes", imagePath: "lib/images/sides/friesfrench.png", price: 139, category: FoodCategory.sides, availableAddons: [
      Addon(name: "Classic Mayo Dip", price: 30),
      Addon(name: "Tandoori Mayo Dip", price: 30),
      Addon(name: "Sweet Chilli Mayo Dip", price: 30),
    ]
    ),
    Food(name: "Garlic Bread", 
    description: "Crisp and Crunchy Bread Graciously Coated with Garlic & Butter, Topped with Herbs", imagePath: "lib/images/sides/garlic-bread.png", price: 275, category: FoodCategory.sides, availableAddons: [
      Addon(name: "Extra cheese", price: 39),
      Addon(name: "Peri Peri", price: 39),
      Addon(name: "Vegetable Add", price: 39),
    ]
    ),
    Food(name: "Onion Rings", 
    description: "Golden and crispy onion rings, perfect for dipping.", imagePath: "lib/images/sides/onion rings.jpg", price: 149, category: FoodCategory.sides, availableAddons: [
      Addon(name: "ranch Dip", price: 29),
      Addon(name: "Chipotle Dip", price: 29),
      Addon(name: "Sweet Chilli Dip", price: 29),
    ]
    ),
    // Food(name: "Classic CheeseBurger", 
    // description: " A crispy patty, white buns, cheese sause, chilli sause, cheese slices, lettuce, tomato", imagePath: "lib/images/burgers/classic-cheese-burger.png", price: 100, category: FoodCategory.burgers, availableAddons: [
    //   Addon(name: "Extra cheese", price: 90),
    //   Addon(name: "Jalapeno", price: 50),
    //   Addon(name: "Onion", price: 50),
    // ]
    // ),
    // Food(name: "Classic CheeseBurger", 
    // description: " A crispy patty, white buns, cheese sause, chilli sause, cheese slices, lettuce, tomato", imagePath: "lib/images/burgers/classic-cheese-burger.png", price: 100, category: FoodCategory.burgers, availableAddons: [
    //   Addon(name: "Extra cheese", price: 90),
    //   Addon(name: "Jalapeno", price: 50),
    //   Addon(name: "Onion", price: 50),
    // ]
    // ),
    // desserts
    Food(name: "Belgian Waffle", 
    description: "Classic Crispy Waffle + Melted Belgian White Chocolate + raspberry & blueberries", imagePath: "lib/images/desserts/Belgian-Waffle.png", price: 245, category: FoodCategory.desserts, availableAddons: [
      Addon(name: "Belgian ChocolatebMilk Waffle(Almond Flour Batter)", price: 155.71),
      Addon(name: "KitKat Waffle", price: 200.24),
      Addon(name: "Kiki & Oreo Cream Waffle", price: 155.71),
    ]
    ),
    Food(name: " Tiramisu ", 
    description: "Italian dessert which means 'pick me up''', made up of spongy soaked in coffee syrup and layered with a whipped cream", imagePath: "lib/images/desserts/tiramisu.jpg", price: 175, category: FoodCategory.desserts, availableAddons: [
      Addon(name: "Flower Candle", price: 89),
      Addon(name: "One Pack of Magic Candle", price: 69),
      Addon(name: "Premium Opener", price: 99),
    ]
    ),
    Food(name: "Pancakes", 
    description: "Prepared with whole wheat tasy and fluffy pan cake topped with mapple syrup blueberries & raspberries", imagePath: "lib/images/desserts/pancake.png", price: 360, category: FoodCategory.desserts, availableAddons: [
      Addon(name: "Chocolate", price: 20),
      Addon(name: "Honey", price: 20),
      Addon(name: "Nutella & Banana", price: 50),
    ]
    ),
    Food(name: "Brownie", 
    description: "Crowd's favourite! Warm Chocolate brownie topped with Vanilla Icecream & Hot Chocolate Sauce.", imagePath: "lib/images/desserts/brownie.jpg", price: 175, category: FoodCategory.desserts, availableAddons: [
      Addon(name: "Nuts", price: 25),
      Addon(name: "Chocolate Fudge", price: 25),
      Addon(name: "Caramel Sauce", price: 25),
    ]
    ),
    Food(name: "Mousse", 
    description: "A mousse based chocolate cake prepard with milk chocolate, fresh cream, chocolate sponge and neutella", imagePath: "lib/images/desserts/mousse.png", price: 179, category: FoodCategory.desserts, availableAddons: [
      Addon(name: "Flower Candle", price: 89),
      Addon(name: "One Pack Magic Candle", price: 69),
      Addon(name: "Prmium Opener", price: 99),
    ]
    ),
    Food(name: "Cup Cake", 
    description: "A classic and delightful chocolate cupcake ", imagePath: "lib/images/desserts/cupcake.png", price: 130, category: FoodCategory.desserts, availableAddons: [
      Addon(name: "Pineapple", price: 90),
      Addon(name: "Butterscotch", price: 95),
      Addon(name: "Bluberry", price: 99),
    ] 
    ),

    //drinks
    Food(name: "Mojito", 
    description: "Zesty Lime, Fresh Mint, Sugar Combine with Sparkling Soda Water for a refreshing, Tangy & herbal delight.", imagePath: "lib/images/drinks/mint drink.png", price: 259, category: FoodCategory.drinks, availableAddons: [
      Addon(name: "other flavour", price: 10),
      Addon(name: "masala", price: 10),
      Addon(name: "Mint leaves", price: 10),
    ]
    ),
    Food(name: "Hell Strong Energy Drink", 
    description: "Water, sucrose, glucose, citric acid, carbon dioxide, taurine, acidy regulators(sodium bicarbonate, magnesium carbonate, flavours(artificial and natural), color(caramel), caffeine, vitamins(niacin, b6, b2, b12).)", imagePath: "lib/images/drinks/HELL_Strong.png", price: 165, category: FoodCategory.drinks, availableAddons: [
      Addon(name: "Fries", price: 50),
      Addon(name: "Protien Bar", price: 60),
      Addon(name: "Chocolate", price: 50),
    ]
    ),
    Food(name: "Cold Coffee", 
    description: "A layered coffee drink with milk, espresso and vanilla syrup with icecream.", imagePath: "lib/images/drinks/Chocolate-Iced-Coffee.png", price: 289, category: FoodCategory.drinks, availableAddons: [
      Addon(name: "Extra shot of Espresso", price: 60),
      Addon(name: "Hazelnut Syrup", price: 50),
      Addon(name: "Whipped Cream", price: 50),
    ]
    ),
    Food(name: "Masala Drink", 
    description: "A refresing tase of jeera, salt and sugar", imagePath: "lib/images/drinks/masala drink.jpg", price: 100, category: FoodCategory.drinks, availableAddons: [
      Addon(name: "Lemon", price: 10),
      Addon(name: "Mint Leaves", price: 10),
      Addon(name: "Masala Combo", price: 10),
    ]
    ),
    Food(name: "Strawberry Smoothie", 
    description: "Enjoy the classic taste of our strawberry smoothie. Made with ripe strawberries, creamy yogurt, and a spash of milk & some toppings of blueberries, strawberries & mint leaves. this smoothie is a refreshing & delicious way to start your day. ", imagePath: "lib/images/drinks/Smoothie.jpg", price: 259, category: FoodCategory.drinks, availableAddons: [
      Addon(name: "Chia seeds", price: 20),
      Addon(name: "Blueberries", price: 50),
      Addon(name: "Nuts", price: 20),
    ]
    ),

    //pizza
    Food(name: " Classic Veggie Pizza", 
    description: "Traditional Italian yeast flatbread topped with tomato sauce, cheese, Mushroom, Capsicum, onion, tomato, Olives", imagePath: "lib/images/pizza/veg-pizza.png", price: 299, category: FoodCategory.pizza, availableAddons: [
      Addon(name: "Extra cheese", price: 40),
      Addon(name: "Jalapeno", price: 50),
      Addon(name: "Sweet Corn", price: 20),
    ]
    ),
    Food(name: "Margherita Pizza", 
    description:"Italian Tomato Sauce, Tomato, Oregano, Mozzarella Cheese & Topped with Fresh Basil", imagePath: "lib/images/pizza/Margherita-Pizza.png", price: 209, category: FoodCategory.pizza, availableAddons: [
      Addon(name: "Medium", price: 479),
      Addon(name: "Large", price: 699),
      Addon(name: "Family", price: 1099),
    ]
    ),
    Food(name: "Cheese Pizza", 
    description: "A classic pizza made with melted mozzarella cheese and tomato sauce. Served on a crispy crust, this pizza is a perfect option for cheese lovers.", imagePath: "lib/images/pizza/Cheese-Pizza.png", price: 150, category: FoodCategory.pizza, availableAddons: [
      Addon(name: "Cold Drink", price: 90),
      Addon(name: "Virgin Mojito", price: 70),
      Addon(name: "Veggies", price: 50),
    ]
    ),
    Food(name: "Chicken Pizza", 
    description: "Italian Tomato Sauce, Grilled Bbq Chicken, Tandoori Chicken, Mozzarella Cheese ", imagePath: "lib/images/pizza/chicken pizza.png", price: 309, category: FoodCategory.pizza, availableAddons: [
      Addon(name: "Cheese Burst", price: 90),
      Addon(name: "100 % Wheat thin Crust", price: 50),
      Addon(name: "Add some Veggies", price: 50),
    ]
    ),
    Food(name: "Paneer Cheese Pizza", 
    description: "Spiced Marinated Paneer with onion, capsicum and mozzarella cheese on top of house special marina sauce.", imagePath: "lib/images/pizza/paneer-pizza.png", price: 294, category: FoodCategory.pizza, availableAddons: [
      Addon(name: "Extra cheese", price: 90),
      Addon(name: "Jalapeno", price: 50),
      Addon(name: "Olives", price: 50),
    ]
    ),
    Food(name: "Tandoori Pizza", 
    description: "Tandoori chicken, mozzarella, green chillies, coriander", imagePath: "lib/images/pizza/tandoori pizza.jpg", price: 399, category: FoodCategory.pizza, availableAddons: [
      Addon(name: "Extra cheese", price: 90),
      Addon(name: "Barbecue Chicken", price: 50),
      Addon(name: "Addons Veggies", price: 50),
    ]
    ),
  ];

 // user cart
 final List<CartItem> _cart = [];

 // delivery address (which user can change/update)
 String _deliveryAddress = 'M-8 IInd floor, Ramesh Nagar, New Delhi';
  
  
  /*  GETTERS
  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;


  /* O P E R A T I O N S
  */


  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons){
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if(cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else{
      _cart.add(CartItem(
        food: food, 
        selectedAddons: selectedAddons,
        ),
        );
        
    }
    notifyListeners();
  }
  // remove from cart
  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex != -1){
      if(_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice(){
    double total = 0.0;

    for(CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount(){
    int totalItemCount = 0;

    for(CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

// update delivery address
void updateDeliveryAddress(String newAddress){
  _deliveryAddress = newAddress;
  notifyListeners();
}

  /* H E L P E R S
  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart){
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}"
      );
      if(cartItem.selectedAddons.isNotEmpty){
        receipt.writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");
    
  return receipt.toString();
  
  }

  // format double value into money
  String _formatPrice(double price){
    return "\u{20B9}${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon>addons) {
    return addons
    .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
    .join(",");
  }
}