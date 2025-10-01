import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:architecture_template/product/widget/project_network_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

part 'widget/home_app_bar.dart';

@RoutePage()

/// The `HomeView` class is a StatefulWidget that represents the home screen
final class HomeView extends StatefulWidget {
  /// Constructor for the `HomeView` class
  /// It initializes the home view with a key for state management
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.icMenuInfo.svg(
              package: 'gen',
            ),
            const ProjectNetworkImage(
              url:
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            Assets.lottie.animTaksiLoader.lottie(package: 'gen'),
            Assets.images.imgProfit.image(package: 'gen'),
            ElevatedButton(
              onPressed: () {
                ProductLocalization.updateLanguage(
                  context: context,
                  value: Locales.tr,
                );
              },
              child: Text(
                AppEnvironmentItems.baseUrl.value,
              ),
            ),
            const Text('Change Language'),
            ElevatedButton(
              onPressed: () async {
                /*    ProductLocalization.updateLanguage(
                  context: context,
                  value: Locales.en,
                ); */
                await context.router.push<bool?>(HomeDetailRoute(id: '1'));
              },
              child: Text(
                LocaleKeys.general_button_save,
                style: context.general.textTheme.bodySmall
                    ?.copyWith(color: ColorName.crimsonRed),
              ).tr(
                args: ['example'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
