import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:regal_raiment/shared/dimensions.dart';

class PlatformInfo extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
                color: Colors.orange,

      child: Row(
        children: [
          Expanded(child:
             
              Container(
               decoration: BoxDecoration(image:DecorationImage(image: NetworkImage('https://static.standard.co.uk/s3fs-public/thumbnails/image/2018/01/09/12/malemodel11.jpg?width=968'),fit: BoxFit.cover ) ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('THE PERFECT COLLECTIONS FOR THE PERFECT YOU',style: TextStyle(fontSize:20,color: Colors.white ),),
                    SizedBox(height: Dimensions.size16,),
                    ElevatedButton(onPressed: (){}, child:Text('SHOP NOW',style: TextStyle(color: Colors.white),) )
                  ],
                ),
              ),
          ),
          Expanded(child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Premium Products', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                SizedBox(height: 10,),
                Text('Safety Packaging', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                SizedBox(
                    height: 10,
                  ),

                Text('30 DAYS RETURN', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                SizedBox(
                    height: 10,
                  ),

                Text('24/7 SUPPORT',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
    
            ]),
          ))
        ],
      ),
    );
  }
}
