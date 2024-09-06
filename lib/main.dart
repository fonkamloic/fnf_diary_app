import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fnf_diary_app/models/ModelProvider.dart';
import 'package:fnf_diary_app/open_diary_home_page.dart';
import 'package:fnf_diary_app/profile/profile.dart';
import 'amplify_outputs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await _configureAmplify();
    runApp(const MainApp());
  } on AmplifyException catch (e) {
    runApp(ErrorWidget(e));
  }
}

Future<void> _configureAmplify() async {
    await Amplify.addPlugins([
    AmplifyAuthCognito(),
    AmplifyAPI(
      options: APIPluginOptions(
        modelProvider: ModelProvider.instance,
      ),
    ),
  ]);
  await Amplify.configure(amplifyConfig);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


Future<UserInformation> _fetchUserInformation() async {
    final userInformation = await Amplify.Auth.getCurrentUser();
    final userAttributes = await Amplify.Auth.fetchUserAttributes();
    final email = userAttributes.firstWhere(
      (attribute) => attribute.userAttributeKey == AuthUserAttributeKey.email,
    );
    final username = userAttributes.firstWhere(
      (attribute) =>
          attribute.userAttributeKey == AuthUserAttributeKey.preferredUsername,
    );
    final fullName = userAttributes.firstWhere(
      (attribute) =>
          attribute.userAttributeKey == AuthUserAttributeKey.givenName,
    );
    return UserInformation(
      id: userInformation.userId,
      email: email.value,
      username: username.value,
      fullName: fullName.value,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: const OpenDiaryAppHomePage()
      ),
    );
  }
}
