part of 'word_bloc.dart';

@immutable
abstract class WordEvent {}

class NextWordEvent extends WordEvent {}
class LikeWordEvent extends WordEvent {}