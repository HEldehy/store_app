import 'package:flutter/material.dart';
import '../models/product_models.dart';
import '../reusable_components/widget/stack_card.dart';
import '../services/get_all_products.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            'New Trend',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 50,
          ),
          child: FutureBuilder<List<ProductModel>>(
              future: GetAllProductsServices().getAllProduct(),
              builder: (context, snapshot) {
                // if(snapshot.hasData)

                List<ProductModel> product = snapshot.data!;
                return GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 80,
                  ),
                  itemBuilder: (context, index) {
                    return StackCard(
                      product: product[1],
                    );
                  },
                  itemCount: product.length,
                );
              }
              // else{
              //   return const Center(child: CircularProgressIndicator()) ;
              // }}
              ),
        ));
  }
}
