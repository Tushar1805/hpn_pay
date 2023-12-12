// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
// import 'package:nile/data/model/location/get_address_res_model.dart';
// import 'package:nile/data/repositories/location_repository.dart';
//
// import '../../../data/data_provider/http/custom_http_exception.dart';
// import '../Internet/internet_cubit.dart';
//
// part 'get_address_state.dart';
//
// class GetAddressCubit extends Cubit<GetAddressState> {
//
//   final LocationRepository locationRepository;
//   final InternetCubit internetCubit;
//   GetAddressCubit(this.locationRepository, this.internetCubit,) : super(GetAddressInitial());
//
//   getAddressList(String location) async {
//     if (!internetCubit.state) {
//       emit(GetAddressError("Internet is not available!"));
//     } else {
//       try {
//         emit(GetAddressLoading());
//         final getCategoriesResponse = await locationRepository.getAddress(location: location);
//         if (getCategoriesResponse.status== true) {
//          // List<String> categoriesName=[];
//           // for(int i=0; i<getCategoriesResponse.categories!.length;i++){
//           //   categoriesName.add(getCategoriesResponse.categories![i].name.toString());
//           // }
//           emit(GetAddressSuccess(getCategoriesResponse.data ??[]));
//         } else {
//           emit(GetAddressError("Something went wrong!"));
//         }
//       } catch (e) {
//         // print("GetAddressResponse.");
//         if (e is CustomHttpException) {
//           emit(GetAddressError(e.message));
//         } else {
//           emit(GetAddressError("Something went wrong!"));
//         }
//       }
//     }
//   }
// }
