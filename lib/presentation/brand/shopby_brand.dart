import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:regal_raiment/presentation/brand/brand_controller.dart';

class ShopByBrand extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getAllBrandsProvider);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
              opacity: 0.2,
              child: Text(
                'OUR PARTNERS',
                style: TextStyle(fontSize: 28, color: Colors.grey),
              )),
          Text(
            'DESTINATION FOR ALL YOUR FAVOURITE BRAND',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          state.when(
            data: (data) => Wrap(
              alignment: WrapAlignment.center,
              children: [
              for (int i = 0; i < data.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(data[i].logo,height: 60,width: 80,),
                  )
            ],),
            loading: () => CircularProgressIndicator(),
            error: (err,_)=> SizedBox(child: Text(err.toString()),)
          ),
          
        ],
      ),
    );
  }
}
