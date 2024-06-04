import 'package:regal_raiment/infrastructure/repository/home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../infrastructure/models/home_model.dart';
part '../../generated/presentation/home/home_controller.g.dart';

@riverpod
Future<HomeModel> getHome(GetHomeRef ref) async {
  HomeModel homeModel = await HomeRepository().getHome();
  print("called");
  return homeModel;
}
