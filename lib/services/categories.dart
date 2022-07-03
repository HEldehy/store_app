import 'package:new_firststeps_ecomerce_app/models/product_models.dart';
import 'package:new_firststeps_ecomerce_app/reusable_components/helper.dart';
class Categories {
  Future<List<ProductModel>> getCategories(
      {required String categoryName}) async {
    List<dynamic> data =await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');
      List<ProductModel> categoryList = [];
      for (int i = 0; i < data.length; i++) {
        categoryList.add(ProductModel.fromJson(data[i]));
      }

      return categoryList;

    }
  }

