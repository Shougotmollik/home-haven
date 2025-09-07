import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:home_haven/config/route/route_names.dart';
import 'package:home_haven/core/utils/app_assets.dart';
import 'package:home_haven/core/utils/app_strings.dart';
import 'package:home_haven/core/utils/form_validator.dart';
import 'package:home_haven/features/auth/cubit/login/login_cubit.dart';
import 'package:home_haven/features/auth/widgets/auth_text_form_field.dart';
import 'package:home_haven/features/auth/widgets/custom_richtext.dart';
import 'package:home_haven/features/auth/widgets/or_divider_widgets.dart';
import 'package:home_haven/features/auth/widgets/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailTEController = TextEditingController();
  final TextEditingController passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FormValidator formValidator = FormValidator();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.isSuccess) {
          context.goNamed(RouteNames.mainNav);
        } else if (state.errorMessage != null) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        }
      },
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 28),
                        Text(
                          AppStrings.welcomeBack,
                          style: textTheme.displayMedium,
                        ),
                        const SizedBox(height: 18),
                        Text(AppStrings.welcomeMsg, style: textTheme.bodyLarge),
                        const SizedBox(height: 18),
                        AuthTextFormField(
                          hintText: AppStrings.enterEmail,
                          prefixIcon: Icons.email_outlined,
                          textEditingController: emailTEController,
                          validator: formValidator.validateEmail,
                        ),
                        const SizedBox(height: 28),
                        AuthTextFormField(
                          hintText: AppStrings.enterPassword,
                          prefixIcon: Icons.lock_open_outlined,
                          textEditingController: passwordTEController,
                          validator: formValidator.validatePassword,
                          showToggle: true,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(AppStrings.forgotPass),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          onPressed: () {
                            formValidator.validateAndProceed(_formKey, () {
                              context.read<LoginCubit>().login(
                                email: emailTEController.text,
                                password: passwordTEController.text,
                              );
                            });
                          },
                          child: const Text(AppStrings.login),
                        ),
                        const SizedBox(height: 28),
                        const OrDividerWidgets(),
                        const SizedBox(height: 28),

                        SocialButton(
                          btnImage: AppAssets.googleLogo,
                          btnText: AppStrings.loginGoogle,
                          onTap: () {},
                        ),
                        const SizedBox(height: 18),
                        SocialButton(
                          btnImage: AppAssets.facebookLogo,
                          btnText: AppStrings.loginFacebook,
                          onTap: () {},
                        ),
                        const SizedBox(height: 28),
                        CustomRichText(
                          firstText: AppStrings.donotHaveAccount,
                          secondText: AppStrings.register,
                          onTap: () {
                            context.pushNamed(RouteNames.register);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
