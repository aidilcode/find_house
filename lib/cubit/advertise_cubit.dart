import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'advertise_state.dart';

class AdvertiseCubit extends Cubit<AdvertiseState> {
  AdvertiseCubit() : super(AdvertiseInitial());
}
