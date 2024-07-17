part of 'add_note_cubit.dart';

@immutable
sealed class AddnotecubitState {}

final class AddnotecubitInitial extends AddnotecubitState {}

final class AddnotecubitLoading extends AddnotecubitState {}

final class AddnotecubitSuccess extends AddnotecubitState {}

final class AddnotecubitFailure extends AddnotecubitState {
  final String errMessage;

  AddnotecubitFailure(this.errMessage);
}
