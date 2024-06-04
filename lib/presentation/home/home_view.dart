import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:regal_raiment/presentation/brand/shopby_brand.dart';
import 'package:regal_raiment/presentation/home/drawer.dart';
import 'package:regal_raiment/presentation/home/home_app_bar.dart';
import 'package:regal_raiment/presentation/home/home_banner.dart';
import 'package:regal_raiment/presentation/home/home_product_box.dart';
import 'package:regal_raiment/presentation/home/home_search_bar.dart';
import 'package:regal_raiment/presentation/home/platform_info.dart';
import 'package:regal_raiment/presentation/home/seasonal_collection.dart';

class HomeView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SideMenu(),
      appBar: homeAppbarMobile(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 2.8,
              child: HomeBanner()),
              HomeProductBox(),
              SeasonalCollection(),
              ShopByBrand(),
              PlatformInfo(),
              HomeProductBox(),
              AspectRatio(aspectRatio: 2.8, child: HomeBanner()),
          ],
        ),
      ),

      
    );
  }
}
