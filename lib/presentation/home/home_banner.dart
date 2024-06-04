import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:regal_raiment/presentation/home/home_controller.dart';

class HomeBanner extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getHomeProvider);
    return state.when(
        data: (data) => PageView.builder(
            itemCount: data.offerModel.length,
            itemBuilder: (context, index) => Image.network(
                  data.offerModel[index].offerBanner,
                  fit: BoxFit.fitWidth,
                )),
        error: (err, _) =>  SizedBox(child: Text(err.toString()),),
        loading: () => const CircularProgressIndicator());
  }
}
