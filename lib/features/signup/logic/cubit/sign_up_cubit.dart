import 'package:circle_sync/features/signup/data/models/sign_up_request_body.dart';
import 'package:circle_sync/features/signup/data/repos/sign_up_repo.dart';
import 'package:circle_sync/features/signup/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();  

  void emitSignUpStates()async{
    emit(const SignUpState.loading());
    
      final response = await _signUpRepo.signUp(
        SignUpRequestBody(
          email: mailController.text,
          password: passwordController.text,
          firstName: firstNameController.text,
          lastName: lastNameController.text
        )
      );
      response.when(
        success: (data) {
          emit(SignUpState.success(data));
        },
        failure: (error) {
          emit(SignUpState.failure(error: error.apiErrorModel.message??""));
        },
      );

  }
}
