import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:project01/models/topup_form_model.dart';
import 'package:project01/services/transaction_service.dart';


part 'topup_event.dart';
part 'topup_state.dart';

class TopupBloc extends Bloc<TopupEvent, TopupState> {
  TopupBloc() : super(TopupInitial()) {
    on<TopupEvent>((event, emit) async {
      // TODO: implement event handler
      if(event is TopupPost){
        try{
          emit(TopupLoading());
          final redirectUrl = await TransactionService().topUp(event.data);
          emit(TopupSuccess(redirectUrl));
        }catch(e){
          emit(TopupFailed(e.toString()));
        }

      }

    });
  }
}
