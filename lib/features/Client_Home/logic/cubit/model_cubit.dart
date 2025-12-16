import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sallihli/core/networking/api_result.dart';
import 'package:sallihli/features/Client_Home/data/model/model.dart';
import 'package:sallihli/features/Client_Home/data/repo/repo.dart';
import 'package:sallihli/features/Client_Home/logic/cubit/model_state.dart';

class ModelCubit extends Cubit<ModelState<List<Model>>> {
  final Repo _repo;
  ModelCubit(this._repo) : super(ModelState.initial());
  void getmodel(String categoryId) async {
    emit(ModelState.loading());
    final response = await _repo.getModel(categoryId);
    response.when(
      success: (data) {
        return emit(ModelState.success(data: data));
      },
      failure: (errorHandler) {
        return emit(
          ModelState.error(message: errorHandler.apiErrorModel.error ?? ""),
        );
      },
    );
  }
}
