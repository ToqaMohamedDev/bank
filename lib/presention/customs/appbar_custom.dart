import 'package:flutter/material.dart';
import '../resorces/const.dart';
import '../resorces/string_manager.dart';
import 'custom_text.dart';

AppBar appBarCustom(BuildContext context, String name) {
  return AppBar(
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    elevation: 10,
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Theme.of(context).colorScheme.secondary,
        )),
    centerTitle: true,
    title: CustomText(
      name: name,
      fontFa: AppStrings.fontFamily,
      fontWeight: FontWeight.bold,
      font: 20,
      color: Theme.of(context).colorScheme.secondary,
    ),
  );
}
AppBar appBarSearch(BuildContext context, String name) {
  return AppBar(
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    elevation: 10,
    bottom: PreferredSize(preferredSize: Size.fromHeight(110), child: Container(
      color: Theme.of(context).colorScheme.primary,
      height: 110,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: ListView(
            shrinkWrap:  true,
            children: [

            ],
          ),
        ),
      ),
    )),
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Theme.of(context).colorScheme.secondary,
        )),
    centerTitle: true,
    title: CustomText(
      name: name,
      fontFa: AppStrings.fontFamily,
      fontWeight: FontWeight.bold,
      font: 20,
      color: Theme.of(context).colorScheme.secondary,
    ),
  );
}
AppBar appBarHome(BuildContext context, String text) {
  return AppBar(
    centerTitle: false,
    shadowColor: Theme.of(context).colorScheme.secondary,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions:  [
    ],
    title: CustomText(
      name: text,
      fontWeight: FontWeight.bold,
      font: 18,
    ),
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(AssetImages.logohome),
    ),
  );
}
