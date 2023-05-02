import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';

class FakeEmitter<T> extends Fake implements Emitter<T> {
  @override
  void call(T state) {}
}
