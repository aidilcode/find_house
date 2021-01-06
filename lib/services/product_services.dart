part of 'services.dart';

class ProductServices {
  static Future<ApiReturnValue<List<Product>>> getProducts() async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: mockProducts);
  }
}
