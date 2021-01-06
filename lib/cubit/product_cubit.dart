import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:find_house/models/models.dart';
import 'package:find_house/services/services.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Future<void> getProducts() async {
    ApiReturnValue<List<Product>> result = await ProductLayanan.getProducts();

    if (result.value != null) {
      emit(ProductLoaded(result.value));
    } else {
      emit(ProductLoadingFailed(result.message));
    }
  }
}
