import 'package:flutter/material.dart';
import 'package:food_app/pages/cart_page.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  
  const MySilverAppBar({
  super.key, 
  required this.child, 
  required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        // cart Button
        IconButton(
          onPressed: (){
            // go to cart page
            Navigator.push(
              context, 
              MaterialPageRoute(
              builder: (context)=> const CartPage(),
              ),
              );
          },
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
      title: const Text("Savory Delights", style: TextStyle(color: Color.fromARGB(255, 248, 90, 42), fontWeight: FontWeight.w500),),
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
          ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left:0, right:0, top:0),
        expandedTitleScale: 1,
      ),
    );
  }
}