// ignore_for_file: file_names, prefer_const_constructors

import 'package:bloc/bloc.dart';
import 'package:testintern/Models/dataUser.dart';

import 'userEvent.dart';
import 'userState.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<LoadUsers>((event, emit) async {
      emit(UserLoading());
      try {
        // Simulate a delay to mimic fetching data from an API or database
        await Future.delayed(Duration(seconds: 1));
        emit(UserLoaded(allUsers));
      } catch (e) {
        emit(UserError('Failed to load users'));
      }
    });
  }
}
