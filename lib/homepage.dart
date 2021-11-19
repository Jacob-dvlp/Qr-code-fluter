import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_router_page.dart';
import 'routes/router_name_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          highlightColor: Colors.black,
          hintColor: Colors.black,
        ),
        initialRoute: AppPagesName.create,
        getPages: RouterPage.pages);
  }
}
