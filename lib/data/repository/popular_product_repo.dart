import 'package:food_delivery/data/api/api_client.dart';
import 'package:get/get.dart';

// when we need to load data from internet we need extend getxservice for the class
class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProdcutList() async{
    return await apiClient.getData("https://www.dbestech.com/api/product/list");
  }
}