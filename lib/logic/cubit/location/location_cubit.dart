// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
//
// import '../../../data/model/location/location_response.dart';
// import '../../../data/repositories/location_repository.dart';
// import '../home_all_games_cubit.dart';
//
// part 'location_state.dart';
//
// class LocationCubit extends Cubit<LocationState> {
//   final LocationRepository locationRepository;
//   final HomeAllGamesCubit homeAllGamesCubit;
//   LocationCubit( this.locationRepository, this.homeAllGamesCubit) : super(LocationInitial());
//
//   setSearchLocation(double lat, double lng, String address){
//     final locationResponse = LocationResponse(lat: lat,lon: lng,address: address);
//      emit(LocationSuccess( locationResponse, false));
//      homeAllGamesCubit.getHomeGames(locationResponse);
//   }
//
//   getCurrentLocation() async {
//     if(state is! LocationSuccess || (state is LocationSuccess && (state as LocationSuccess).isCurrentLocation)) {
//       emit(LocationLoading());
//       final locationResponse = await locationRepository.determineCurrentPosition();
//       if (locationResponse != null) {
//         // print(locationResponse.lat);
//         // print(locationResponse.lon);
//         emit(LocationSuccess(locationResponse, true));
//         homeAllGamesCubit.getHomeGames(locationResponse);
//       }else{
//         emit(LocationError("Location Not Found!"));
//       }
//     }else if(state is LocationSuccess && !(state as LocationSuccess).isCurrentLocation){
//       homeAllGamesCubit.getHomeGames((state as LocationSuccess).locationResponse);
//     }
//   }
// }
