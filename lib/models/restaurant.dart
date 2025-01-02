import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodapp/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Bacon BBQ Burger",
      description: "A smoky beef patty with crispy bacon, BBQ sauce, cheddar cheese, and onion rings.",
      imagePath: "lib/images/burgers/bacon_bbq_burger.jpg",
      price: 1.29,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra bacon", price: 1.49),
        Addon(name: "Onion rings", price: 1.19),
        Addon(name: "Jalapeños", price: 0.99),
      ],
    ),

    Food(
      name: "Spicy Jalapeño Burger",
      description: "Beef patty with pepper jack cheese, jalapeños, lettuce, and spicy chipotle mayo.",
      imagePath: "lib/images/burgers/spicy_jalapeno_burger.png",
      price: 1.19,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra jalapeños", price: 0.79),
        Addon(name: "Guacamole", price: 1.59),
        Addon(name: "Ghost pepper sauce", price: 1.29),
      ],
    ),

    Food(
      name: "Mushroom Swiss Burger",
      description: "Juicy beef patty topped with sautéed mushrooms and melted Swiss cheese.",
      imagePath: "lib/images/burgers/mushroom_swiss_burger.png",
      price: 1.39,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra mushrooms", price: 1.19),
        Addon(name: "Grilled onions", price: 0.99),
        Addon(name: "Truffle aioli", price: 1.49),
      ],
    ),

    Food(
      name: "Double Cheeseburger",
      description: "Two beef patties stacked with melted American cheese, lettuce, tomato, and pickles.",
      imagePath: "lib/images/burgers/double_cheeseburger.png",
      price: 1.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra patty", price: 2.19),
        Addon(name: "Bacon", price: 1.69),
        Addon(name: "Fried egg", price: 1.29),
      ],
    ),

    Food(
      name: "Veggie Delight Burger",
      description: "Grilled veggie patty with lettuce, tomato, cucumber, and vegan mayo.",
      imagePath: "lib/images/burgers/veggie_delight_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Avocado", price: 1.49),
        Addon(name: "Grilled peppers", price: 1.29),
        Addon(name: "Hummus", price: 0.99),
      ],
    ),

    // salads
    Food(
      name: "Grilled Chicken Caesar Salad",
      description: "Crisp romaine lettuce with grilled chicken, parmesan, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/chicken_caesar_salad.png",
      price: 6.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra chicken", price: 2.49),
        Addon(name: "Boiled egg", price: 1.19),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),

    Food(
      name: "Greek Salad",
      description: "Fresh cucumbers, tomatoes, red onion, kalamata olives, and feta cheese with olive oil.",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra feta", price: 1.49),
        Addon(name: "Grilled chicken", price: 2.29),
        Addon(name: "Pita bread", price: 1.49),
      ],
    ),

    Food(
      name: "Southwest Avocado Salad",
      description: "Mixed greens with grilled chicken, avocado, black beans, corn, and chipotle ranch.",
      imagePath: "lib/images/salads/southwest_avocado_salad.png",
      price: 7.29,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra avocado", price: 1.79),
        Addon(name: "Bacon bits", price: 1.39),
        Addon(name: "Jalapeños", price: 0.99),
      ],
    ),

    Food(
      name: "Caprese Salad",
      description: "Sliced tomatoes, fresh mozzarella, and basil drizzled with balsamic glaze.",
      imagePath: "lib/images/salads/caprese_salad.png",
      price: 5.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra mozzarella", price: 1.59),
        Addon(name: "Prosciutto", price: 2.49),
        Addon(name: "Arugula", price: 1.29),
      ],
    ),

    Food(
      name: "Tuna Nicoise Salad",
      description: "Seared tuna, green beans, potatoes, olives, eggs, and tomatoes with vinaigrette.",
      imagePath: "lib/images/salads/tuna_nicoise_salad.png",
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra tuna", price: 3.49),
        Addon(name: "Capers", price: 1.19),
        Addon(name: "Artichokes", price: 1.79),
      ],
    ),

    // sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries lightly salted and served hot.",
      imagePath: "lib/images/sides/french_fries.png",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 0.99),
        Addon(name: "Bacon bits", price: 1.29),
        Addon(name: "Garlic aioli", price: 1.19),
      ],
    ),

    Food(
      name: "Mozzarella Sticks",
      description: "Breaded and fried mozzarella sticks served with marinara sauce.",
      imagePath: "lib/images/sides/Mozzarella_Sticks.png",
      price: 4.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra marinara", price: 0.79),
        Addon(name: "Ranch dip", price: 0.99),
        Addon(name: "Spicy dip", price: 1.09),
      ],
    ),

    Food(
      name: "Onion Rings",
      description: "Crispy battered onion rings served with house sauce.",
      imagePath: "lib/images/sides/onion_rings.png",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra sauce", price: 0.79),
        Addon(name: "BBQ dip", price: 0.99),
        Addon(name: "Spicy mayo", price: 1.09),
      ],
    ),

    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries served with a side of spicy mayo.",
      imagePath: "lib/images/sides/sweet_potato_fries.png",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Maple drizzle", price: 0.99),
        Addon(name: "Parmesan", price: 1.19),
        Addon(name: "Truffle oil", price: 1.49),
      ],
    ),

    Food(
      name: "Mac and Cheese Bites",
      description: "Fried mac and cheese bites with a crunchy exterior and creamy center.",
      imagePath: "lib/images/sides/mac_cheese_bites.png",
      price: 4.79,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Buffalo sauce", price: 0.99),
        Addon(name: "Ranch dip", price: 0.99),
        Addon(name: "Chili flakes", price: 0.79),
      ],
    ),


    // desserts
    Food(
      name: "Chocolate Lava Cake",
      description: "Warm chocolate cake with a gooey molten center, served with vanilla ice cream.",
      imagePath: "lib/images/desserts/lava_cake.png",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra ice cream scoop", price: 1.49),
        Addon(name: "Whipped cream", price: 0.99),
        Addon(name: "Caramel drizzle", price: 1.29),
      ],
    ),

    Food(
      name: "Strawberry Cheesecake",
      description: "Creamy cheesecake topped with fresh strawberries and a sweet glaze.",
      imagePath: "lib/images/desserts/strawberry_cheesecake.png",
      price: 6.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra strawberries", price: 1.19),
        Addon(name: "Chocolate drizzle", price: 0.99),
        Addon(name: "Oreo crumble", price: 1.49),
      ],
    ),

    Food(
      name: "Apple Pie",
      description: "Classic apple pie with a flaky crust, served warm with a scoop of vanilla ice cream.",
      imagePath: "lib/images/desserts/apple_pie.jpeg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Cinnamon sugar", price: 0.79),
        Addon(name: "Caramel sauce", price: 0.99),
        Addon(name: "Whipped cream", price: 0.99),
      ],
    ),

    Food(
      name: "Tiramisu",
      description: "Layered dessert with espresso-soaked ladyfingers, mascarpone, and cocoa powder.",
      imagePath: "lib/images/desserts/tiramisu.jpeg",
      price: 6.29,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cocoa dusting", price: 0.79),
        Addon(name: "Chocolate chips", price: 1.19),
        Addon(name: "Espresso shot", price: 1.49),
      ],
    ),

    Food(
      name: "Banana Split",
      description: "Three scoops of ice cream topped with banana slices, chocolate sauce, and cherries.",
      imagePath: "lib/images/desserts/banana_split.jpeg",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cherries", price: 0.79),
        Addon(name: "Crushed nuts", price: 0.99),
        Addon(name: "Marshmallows", price: 1.19),
      ],
    ),


    // drinks
    Food(
      name: "Iced Caramel Latte",
      description: "Chilled espresso with milk and caramel syrup, topped with whipped cream.",
      imagePath: "lib/images/drinks/iced_caramel_latte.jpeg",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra shot of espresso", price: 1.29),
        Addon(name: "Vanilla syrup", price: 0.99),
        Addon(name: "Almond milk", price: 1.19),
      ],
    ),

    Food(
      name: "Berry Smoothie",
      description: "A refreshing blend of strawberries, blueberries, and raspberries with yogurt.",
      imagePath: "lib/images/drinks/berry_smoothie.jpeg",
      price: 4.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein powder", price: 1.79),
        Addon(name: "Chia seeds", price: 0.99),
        Addon(name: "Honey drizzle", price: 0.79),
      ],
    ),

    Food(
      name: "Mango Iced Tea",
      description: "Sweet mango-infused iced tea with a hint of lemon.",
      imagePath: "lib/images/drinks/mango_iced_tea.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra mango", price: 1.09),
        Addon(name: "Lemon wedge", price: 0.79),
        Addon(name: "Mint leaves", price: 0.99),
      ],
    ),

    Food(
      name: "Classic Milkshake",
      description: "Thick and creamy milkshake available in chocolate, vanilla, or strawberry.",
      imagePath: "lib/images/drinks/classic_milkshake.jpg",
      price: 4.29,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped cream", price: 0.79),
        Addon(name: "Oreo crumble", price: 1.19),
        Addon(name: "Caramel drizzle", price: 0.99),
      ],
    ),

    Food(
      name: "Lemonade",
      description: "Freshly squeezed lemonade served over ice.",
      imagePath: "lib/images/drinks/lemonade.jpg",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint leaves", price: 0.79),
        Addon(name: "Berry mix", price: 1.29),
        Addon(name: "Sparkling water", price: 0.99),
      ],
    ),
  ];

  // user cart
  final List<CartItem> _cart = [];

  // delivery address (which user can change/update)
  String _deliveryAddress = 'Your address, St. number';

  /*

    G E T T E R S

     */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*

    O P E R A T I O N S

   */



    // add to cart
    void addToCart(Food food, List<Addon> selectedAddons) {
      // see if there is a cart item already with the same food and selected addons
      CartItem? cartItem = _cart.firstWhereOrNull((item) {
        // check if the food items are the same
        bool isSameFood = item.food == food;

        // check if the list of selected addons are the same
        bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

        return isSameFood && isSameAddons;
      });

      // if item already exists, increase its quantity
      if(cartItem != null){
        cartItem.quantity++;
      }

      // otherwise, add a new cart item to the cart
      else{
        _cart.add(
            CartItem(
                food: food,
                selectedAddons: selectedAddons
            ),
        );
      }
      notifyListeners();
    }

    // remove from cart
    void removeFromCart(CartItem cartItem){
      int cartIndex = _cart.indexOf(cartItem);
      if (cartIndex != -1) {
        if(_cart[cartIndex].quantity > 1){
          _cart[cartIndex].quantity--;
        }else{
          _cart.removeAt(cartIndex);
        }
      }
    }

    // get total price of cart
    double getTotalPrice() {
      double total = 0.0;

      for (CartItem cartItem in _cart){
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

      for (CartItem cartItem in _cart){
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

    /*

    H E L P E R S

     */

    // generate a receipt
    String displayCartReceipt(){
      final receipt = StringBuffer();
      receipt.writeln("Here's your receipt.");
      receipt.writeln();

      // format the date to include up to seconds only
      String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
      receipt.writeln(formattedDate);
      receipt.writeln();
      receipt.writeln("---------");

      for (final cartItem in _cart){
        receipt.write("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
        if(cartItem.selectedAddons.isNotEmpty){
          receipt.writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
        }
        receipt.writeln();
      }
      receipt.writeln("---------");
      receipt.writeln("");
      receipt.writeln("Total Items: ${getTotalItemCount()}");
      receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
      receipt.writeln("Delivery to: $deliveryAddress");


      return receipt.toString();
    }

    // format double value into money
    String _formatPrice(double price){
      return "\$${price.toStringAsFixed(2)}";
    }

    // format list of addons ino a string summary
    String _formatAddons(List<Addon> addons){
      return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(", ");
    }
}