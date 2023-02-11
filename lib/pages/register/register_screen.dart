import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inneapolis/resources/app_assets.dart';
import 'package:inneapolis/resources/app_colors_const.dart';
import 'package:inneapolis/resources/firebase_consts.dart';
import 'package:inneapolis/routing/app_router.dart';
import 'package:inneapolis/services/global_methods.dart';
import 'package:inneapolis/widgets/app_overlay_widget.dart';

import 'auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  bool _gLoader = false;

  Future<void> _loginGoogle() async {
    setState(() {
      _gLoader = true;
    });

    try {
      await AuthRepository().signInWithGoogle().then((value) async {
        context.router.replace(
          const MainRoute(),
        );
        // changeScreenReplacement(context, const MainPage());
        final User? user = authInstance.currentUser;

        final uid = user!.uid;
        user.reload();
        await FirebaseFirestore.instance.collection('users').doc(uid).set({
          'id': uid,
          'username': user.displayName,
          'email': user.email,
          'photo': user.photoURL,
          'password': '',
          'createdAt': Timestamp.now(),
        });
      });
    } on FirebaseException catch (error) {
      GlobalMethods.errorDialog(subtitle: '${error.message}', context: context);
      setState(() {
        _gLoader = false;
      });
    } catch (error) {
      GlobalMethods.errorDialog(subtitle: '$error', context: context);
      setState(() {
        _gLoader = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      appBar: AppBar(elevation: 0),
      body: AppOverlayLoadingWidget(
        isLoading: _gLoader,
        child: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  _loginGoogle();
                },
                child: SvgPicture.asset(
                  AppAssets.svg.google,
                  height: 100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
