import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'countrycode_event.dart';
part 'countrycode_state.dart';

class CountrycodeBloc extends Bloc<CountrycodeEvent, CountrycodeState> {
  CountrycodeBloc() : super(InitialState(countryco: '')) {
   on<Country>((event, emit) {
    return emit(
       CountrycodeState(countryco: state.toString())
    );
   }
   
   );
  }
}
