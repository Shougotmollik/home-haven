import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_haven/config/route/route_names.dart';
import 'package:home_haven/core/utils/app_assets.dart';
import 'package:home_haven/core/utils/app_strings.dart';
import 'package:home_haven/core/utils/form_validator.dart';
import 'package:home_haven/features/auth/widgets/auth_text_form_field.dart';
import 'package:home_haven/features/auth/widgets/custom_richtext.dart';
import 'package:home_haven/features/auth/widgets/or_divider_widgets.dart';
import 'package:home_haven/features/auth/widgets/social_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController firstNameTEController = TextEditingController();
  final TextEditingController lastNameTEController = TextEditingController();
  final TextEditingController emailTEController = TextEditingController();
  final TextEditingController passwordTEController = TextEditingController();
  final FormValidator formValidator = FormValidator();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 28),
                Text(AppStrings.createAccount, style: textTheme.displayMedium),
                const SizedBox(height: 18),
                Text(AppStrings.registerMsg, style: textTheme.bodyLarge),
                const SizedBox(height: 18),
                AuthTextFormField(
                  hintText: AppStrings.firstName,
                  prefixIcon: Icons.person_outlined,
                  textEditingController: firstNameTEController,
                  validator: formValidator.validateName,
                ),
                const SizedBox(height: 18),
                AuthTextFormField(
                  hintText: AppStrings.lastName,
                  prefixIcon: Icons.person_outline,
                  textEditingController: firstNameTEController,
                  validator: formValidator.validateName,
                ),
                const SizedBox(height: 18),
                AuthTextFormField(
                  hintText: AppStrings.enterEmail,
                  prefixIcon: Icons.email_outlined,
                  textEditingController: emailTEController,
                  validator: formValidator.validateEmail,
                ),
                const SizedBox(height: 18),
                AuthTextFormField(
                  hintText: AppStrings.enterPassword,
                  prefixIcon: Icons.lock_open_outlined,
                  textEditingController: passwordTEController,
                  validator: formValidator.validatePassword,
                  showToggle: true,
                ),
                const SizedBox(height: 18),
                Text(AppStrings.policyWarning, style: textTheme.bodyLarge),
                const SizedBox(height: 18),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {},
                  child: const Text(AppStrings.login),
                ),
                const SizedBox(height: 20),
                const OrDividerWidgets(),
                const SizedBox(height: 28),

                SocialButton(
                  btnImage: AppAssets.googleLogo,
                  btnText: AppStrings.loginGoogle,
                  onTap: () {},
                ),
                const SizedBox(height: 24),
                SocialButton(
                  btnImage: AppAssets.facebookLogo,
                  btnText: AppStrings.loginFacebook,
                  onTap: () {},
                ),
                const SizedBox(height: 20),
                CustomRichText(
                  firstText: AppStrings.alreadyHaveAccount,
                  secondText: AppStrings.login,
                  onTap: () {
                    context.goNamed(RouteNames.login);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
