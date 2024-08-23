import 'package:flutter/material.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/core/utils/widgets/custom_search_text_feild.dart';

mainAppBar(context, title, {bool? withSearch = false}) {
  return PreferredSize(
    preferredSize:
        const Size.fromHeight(kToolbarHeight + 40.0), // Adjust height as needed
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        AppBar(
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppPalette.deepPrimaryColor, AppPalette.primary],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(46),
                      bottomRight: Radius.circular(46))),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                title,
                style: Styles.roboto500(
                    fontSize: 20, color: AppPalette.lightPrimaryColor),
              ),
            ),
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: AppPalette.lightBackgroundColor,
                ),
              ),
            )),
        withSearch!
            ? const Positioned(
                bottom: -25,
                left: 16.0,
                right: 16.0,
                child: CustomSearchTextField(hintText: AppStrings.search))
            : const SizedBox(),
      ],
    ),
  );
}
