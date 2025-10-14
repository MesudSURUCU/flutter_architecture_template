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
import 'package:widgets/widgets.dart';

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(''.ext.version),
              Text(
                'Example',
                style: context.general.textTheme.titleLarge?.copyWith(
                  color: 'FCD7DF'.ext.color,
                ),
              ),
              SizedBox(
                height: context.sized.dynamicHeight(0.01),
              ),
              _fetchHomeData().ext.toBuild(
                    onSuccess: onSuccess,
                    loadingWidget: const Text('Loading...'),
                    notFoundWidget: const Text('Not Found'),
                    onError: const Text('Error'),
                  ),
              FloatingActionButton(
                onPressed: () {
                  'Pendik'.ext.launchMaps();
                  CustomLinkPreview.getLinkPreviewData('www.google.com');
                  CustomLogger.showError<String>('Error message');

                  final dummyUser = List<User?>.generate(
                    10,
                    (index) => User(name: 'User $index', money: index * 100.0),
                  );

                  dummyUser
                      .where((element) {
                        if (element?.money == null) return false;
                        return element!.money! > 500;
                      })
                      .exts
                      .makeSafeCustom(
                        (value) => value?.name.ext.isNotNullOrNoEmpty ?? false,
                      );
                },
                child: const Icon(Icons.add),
              ),
              Assets.icons.icMenuInfo.svg(
                package: 'gen',
              ),
              const ProjectNetworkImage(
                url:
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              ),
              Assets.lottie.animTaksiLoader.lottie(package: 'gen'),
              Assets.images.imgProfit.image(package: 'gen'),
              Assets.icons.icMenuInfo.svg(package: 'gen'),
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
                  await ProductLocalization.updateLanguage(
                    context: context,
                    value: Locales.en,
                  );
                  if (context.mounted) {
                    await context.router.push<bool?>(HomeDetailRoute(id: '1'));
                  }
                },
                child: Text(
                  LocaleKeys.general_button_save,
                  style: context.general.textTheme.bodySmall
                      ?.copyWith(color: ColorName.crimsonRed),
                ).tr(
                  args: ['example'],
                ),
              ),
              SizedBox(
                height: context.sized.dynamicHeight(0.02),
              ),
              AdaptAllView(
                phone: Text(
                  ''.ext.version,
                  style: context.general.textTheme.headlineLarge,
                ),
                tablet: Text(''.ext.version),
                desktop: Text(''.ext.version),
              ),
              SizedBox(
                height: context.sized.dynamicHeight(0.02),
              ),
              Image.network('https://picsum.photos/500/500'),
            ],
          ),
        ),
      ),
    );
  }

  Future<String?> _fetchHomeData() async {
    return 'Merhaba 👋';
  }

  Widget onSuccess(String? data) {
    return Text('Data: $data');
  }

  void calculateUser(List<String> items) {}
}

/// A simple User class with name and money properties.
class User {
  /// Constructor for the User class
  User({required this.name, required this.money});

  /// The name of the user
  final String? name;

  /// The amount of money the user has
  final double? money;
}
