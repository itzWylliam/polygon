import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:polygon/common/navigation/routes.dart';
import 'package:polygon/common/ui/bottom_navigation/nav_bar_notifier.dart';
import 'package:polygon/common/ui/textbuttons/text_button_v2.dart';
import 'package:polygon/features/auth/controllers/auth_controller.dart';

double _elementOpacity = 1;

class ProfilePage extends StatefulHookConsumerWidget {
  ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _profilePageState();
}

class _profilePageState extends ConsumerState<ProfilePage> {
  late TextButtonV2 signOutButton;

  @override
  void initState() {
    signOutButton = TextButtonV2(
      onTap: () async {
        showLoading();
        final SignOutResult signOutResult = await signOut(ref).then((value) {
          hideLoading();
          if (context.mounted) {
            context.goNamed(PolygonRoute.signin.name);
          } else {
            safePrint("Error: context unmounted");
          }
          return value;
        });
      },
      componentOpacity: _elementOpacity,
      text: "Log Out",
    );
  }

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: SizedBox(
        width: 1000,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: signOutButton),
          ],
        ),
      ),
    );
  }

  void deleteUser(WidgetRef ref) async {
    await ref.read(authControllerProvider).deleteUser();
  }

  Future<SignOutResult> signOut(WidgetRef ref) async {
    final signOutResult = await ref.read(authControllerProvider).signOut();
    return signOutResult;
  }

  void showLoading() {
    context.loaderOverlay.show();
    // NOTE: for customize loading screen
    // setState(() {
    //   _loading = true;
    // });
  }

  void hideLoading() {
    context.loaderOverlay.hide();
    // NOTE: for customize loading screen
    // setState(() {
    //   _loading = false;
    // });
  }
}
