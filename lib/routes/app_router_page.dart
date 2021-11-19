import 'package:get/get.dart';
import 'package:qr_code_scanner/routes/router_name_pages.dart';
import 'package:qr_code_scanner/screen/screen_create/screen_create.dart';
import 'package:qr_code_scanner/screen/screen_read/screen_readqrcode.dart';

abstract class RouterPage {
static final List<GetPage> pages = [
    GetPage(
      name: AppPagesName.create,
      page: () => const ScreenCreate(),
    ),
    GetPage(
      name: AppPagesName.read,
      page: () => const Screenreadqrcode(),
    )
  ];
}
