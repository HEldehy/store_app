import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:new_firststeps_ecomerce_app/reusable_components/widget/my_button.dart';
import 'package:new_firststeps_ecomerce_app/reusable_components/widget/my_form_field.dart';

import '../models/product_models.dart';
import '../services/update_prodect.dart';

class UpdateProduct extends StatefulWidget {
  static String id = 'UpdateProduct';
  const UpdateProduct({Key? key}) : super(key: key);

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  String? productName, desc, image;
  dynamic price;
  bool isLoading=false;

  @override
  Widget build(BuildContext context) {
    ProductModel ?product =ModalRoute.of(context)!.settings .arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyFormField(
                  label: 'Product Name',
                  onChange: (data) {
                    productName = data;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                MyFormField(
                  label: 'description',
                  onChange: (data) {
                    desc = data;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                MyFormField(
                  label: 'Price',
                  onChange: (data) {
                    price = data;
                  },
                  type: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                MyFormField(
                  label: 'Image',
                  onChange: (data) {
                    image = data;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                MyButton(
                  onClick: () {
                    isLoading=true;
                    setState((){

                    });
                       try{
                         UpdateProductServices().updateProduct(
                             title: productName==null? product.title: productName!,
                             price: price==null? product.price: price!,
                             desc: desc==null?product.description:desc!,
                             image:image==null?product.image: image!,
                             category:product.category);
                         print('success');
                       } catch (e){
                         print(e.toString());


                       }
                    isLoading=false;
                    setState((){

                    });




                  },
                  text: 'Update',
                  buttonColor: Colors.blue,
                  textColor: Colors.white,
                  radius: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
