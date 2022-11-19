import "package:flutter/material.dart";
import 'package:project01/blocs/auth/auth_bloc.dart';
import "package:project01/shared/theme.dart";
import 'package:project01/ui/pages/data_package_page.dart';
import 'package:project01/ui/pages/data_package_success.dart';
import 'package:project01/ui/pages/data_provider_page.dart';
import "package:project01/ui/pages/home_page.dart";
import "package:project01/ui/pages/onboarding_page.dart";
import "package:project01/ui/pages/pin_page.dart";
import "package:project01/ui/pages/profile_edit.dart";
import "package:project01/ui/pages/profile_edit_pin.dart";
import "package:project01/ui/pages/profile_edit_success.dart";
import "package:project01/ui/pages/profile_page.dart";
import "package:project01/ui/pages/sign_in_page.dart";
import "package:project01/ui/pages/sign_up_page.dart";
import "package:project01/ui/pages/sign_up_set_ktp_page.dart";
import "package:project01/ui/pages/sign_up_set_profile_page.dart";
import "package:project01/ui/pages/sign_up_success_page.dart";
import "package:project01/ui/pages/splash_page.dart";
import "package:project01/ui/pages/topup_ammont_page.dart";
import "package:project01/ui/pages/topup_page.dart";
import "package:project01/ui/pages/topup_success.dart";
import 'package:project01/ui/pages/transfer_amount_page.dart';
import "package:project01/ui/pages/transfer_page.dart";
import 'package:project01/ui/pages/transfer_success_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context){
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: lightBackgroundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: blackColor,
            ),
            titleTextStyle: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
        ),
        routes: {
          "/": (context) => const SplashPage(),
          "/on-boarding": (context) => const OnBoardingPage(),
          "/sign-in": (context) => const SignInPage(),
          "/sign-up": (context) => const SignUpPage(),
          "/sign-up-ktp": (context) => const SignUpSetKtpPage(),
          "/sign-up-success": (context) => const SignUpSuccessPage(),
          "/home": (context) => const HomePage(),
          "/profile": (context) => const ProfilePage(),
          "/pin": (context) => const PinPage(),
          "/profile-edit": (context) => const ProfileEdit(),
          "/profile-edit-pin": (context) => const ProfileEditPin(),
          "/profile-edit-success": (context) => const ProfileEditSuccess(),
          "/top-up": (context) => const TopupPage(),
          "/top-up-amount": (context) => const TopupAmount(),
          "/top-up-success": (context) => const TopupSuccess(),
          "/transfer": (context) => const TransferPage(),
          "/transfer-amount": (context) => const TransferAmountPage(),
          "/transfer-success": (context) => const TransferSuccessPage(),
          "/data-provider": (context) => const DataProviderPage(),
          "/data-package": (context) => const DataPackagePage(),
          "/data-package-success": (context) => const DataPackageSuccess(),
        },
        // home: SplashPage(),
      ),
    );
  }
}
