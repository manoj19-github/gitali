import 'package:flutter/material.dart';
import 'package:gitali2/core/configs/appVector.dart';
import 'package:gitali2/presentation/bloc/themeCubit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double SCREEN_width = MediaQuery.sizeOf(context).width;
    double SCREEN_HEIGHT = MediaQuery.sizeOf(context).height;
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(color: Colors.transparent),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 22,
            color: context.read<ThemeCubit>().state == ThemeMode.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
      ),
      title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(Appvector.logo,
            width: SCREEN_width * 0.3, height: 80, fit: BoxFit.cover),
        Padding(
          padding: EdgeInsets.only(right: SCREEN_width * 0.2),
          child: Text(
            "Gitali",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.lato().fontFamily,
                color: Colors.teal),
          ),
        ),
      ]),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
