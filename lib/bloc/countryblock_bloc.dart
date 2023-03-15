import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'countryblock_event.dart';
part 'countryblock_state.dart';

class CountryblockBloc extends Bloc<CountryblockEvent, CountryblockState> {
  CountryblockBloc() : super(CountryblockInitial()) {
    on<CountryblockEvent>((event, emit) {
      final currentStateValu = state.toString();
      // TODO: implement event handler
    });
  }
}
