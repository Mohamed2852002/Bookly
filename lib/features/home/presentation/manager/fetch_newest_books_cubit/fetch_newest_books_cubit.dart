import 'package:bookly_app/features/home/presentation/manager/fetch_newest_books_cubit/fetch_newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit() : super(FetchNewestBooksInitial());
}
