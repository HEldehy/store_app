
import 'package:new_firststeps_ecomerce_app/reusable_components/helper.dart';
class GetAllCategories {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
