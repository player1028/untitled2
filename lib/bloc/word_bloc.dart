import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:english_words/english_words.dart';

part 'word_event.dart';
part 'word_state.dart';

class WordBloc extends Bloc<WordEvent, WordState> {
  WordBloc() : super(WordState(word: WordPair.random().asLowerCase)) {
    on<NextWordEvent>(_nextWord);
  }

  _nextWord(event, emit){
    emit(WordState(word: WordPair.random().asLowerCase));
  }
}
