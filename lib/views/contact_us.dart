import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildContactText(),
          Constants.sizedBox(height: 40.0),
          buildFormFields(isMobile: true),
          Constants.sizedBox(height: 40.0),
          AppButtons.buildMaterialButton(
              buttonName: 'Send Message', onTap: () {}),
          Constants.sizedBox(height: 30.0),
        ],
      ),
      tablet: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildContactText(),
          Constants.sizedBox(height: 40.0),
          buildFormFields(isMobile: false),
          Constants.sizedBox(height: 40.0),
          AppButtons.buildMaterialButton(
              buttonName: 'Send Message', onTap: () {}),
          Constants.sizedBox(height: 30.0),
        ],
      ),
      desktop: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildContactText(),
          Constants.sizedBox(height: 40.0),
          buildFormFields(isMobile: false),
          Constants.sizedBox(height: 40.0),
          AppButtons.buildMaterialButton(
              buttonName: 'Send Message', onTap: () {}),
          Constants.sizedBox(height: 30.0),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor,
    );
  }

  Widget buildFormFields({required bool isMobile}) {
    return isMobile
        ? Column(
            children: [
              buildTextField('Full Name'),
              Constants.sizedBox(height: 20.0),
              buildTextField('Email Address'),
              Constants.sizedBox(height: 20.0),
              buildTextField('Mobile Number'),
              Constants.sizedBox(height: 20.0),
              buildTextField('Email Subject'),
              Constants.sizedBox(height: 20.0),
              buildTextField('Your Message', maxLines: 15),
            ],
          )
        : Column(
            children: [
              Row(
                children: [
                  Expanded(child: buildTextField('Full Name')),
                  Constants.sizedBox(width: 20.0),
                  Expanded(child: buildTextField('Email Address')),
                ],
              ),
              Constants.sizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(child: buildTextField('Mobile Number')),
                  Constants.sizedBox(width: 20.0),
                  Expanded(child: buildTextField('Email Subject')),
                ],
              ),
              Constants.sizedBox(height: 20.0),
              buildTextField('Your Message', maxLines: 15),
            ],
          );
  }

  Widget buildTextField(String hintText, {int maxLines = 1}) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: Colors.transparent,
      elevation: 8,
      child: TextField(
        maxLines: maxLines,
        cursorColor: AppColors.white,
        style: AppTextStyles.normalStyle(),
        decoration: buildInputDecoration(hintText: hintText),
      ),
    );
  }

  FadeInDown buildContactText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Contact ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Me!',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.comfortaaStyle(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: AppColors.bgColor2,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 16));
  }
}
