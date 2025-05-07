import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import '../globals/app_text_styles.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildWorkExperienceText(),
          Constants.sizedBox(height: 40.0),
          buildExperienceCard(
            company: 'Pyramisa Beach Resort Sahl Hasheesh',
            position: 'IT Specialist',
            location: 'Hurghada, Egypt',
            period: '2024/08 – Present',
            description:
                'Specializing in network infrastructure and cloud solutions, ensuring optimal system performance and security.',
          ),
          Constants.sizedBox(height: 20.0),
          buildExperienceCard(
            company: 'Paradise Island',
            position: 'Operation Specialist and Tech Support',
            location: 'Hurghada, Egypt',
            period: '2023/12 – 2024/06',
            description:
                'Administered the company\'s tourism room system (CDWS). Developed an AI-powered application to streamline customer data entry, replacing manual processes.',
          ),
          Constants.sizedBox(height: 20.0),
          buildExperienceCard(
            company: 'Mega Robotics',
            position: 'Flutter Instructor',
            location: 'Hurghada, Egypt',
            period: '2023/12 – 2024/06',
            description:
                'Part-time instructor teaching Flutter development to aspiring developers.',
          ),
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildWorkExperienceText(),
          Constants.sizedBox(height: 40.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: buildExperienceCard(
                  company: 'Pyramisa Beach Resort Sahl Hasheesh',
                  position: 'IT Specialist',
                  location: 'Hurghada, Egypt',
                  period: '2024/08 – Present',
                  description:
                      'Specializing in network infrastructure and cloud solutions, ensuring optimal system performance and security.',
                ),
              ),
              Constants.sizedBox(width: 20.0),
              Expanded(
                child: buildExperienceCard(
                  company: 'Paradise Island',
                  position: 'Operation Specialist and Tech Support',
                  location: 'Hurghada, Egypt',
                  period: '2023/12 – 2024/06',
                  description:
                      'Administered the company\'s tourism room system (CDWS). Developed an AI-powered application to streamline customer data entry, replacing manual processes.',
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 20.0),
          buildExperienceCard(
            company: 'Mega Robotics',
            position: 'Flutter Instructor',
            location: 'Hurghada, Egypt',
            period: '2023/12 – 2024/06',
            description:
                'Part-time instructor teaching Flutter development to aspiring developers.',
          ),
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildWorkExperienceText(),
          Constants.sizedBox(height: 40.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: buildExperienceCard(
                  company: 'Pyramisa Beach Resort Sahl Hasheesh',
                  position: 'IT Specialist',
                  location: 'Hurghada, Egypt',
                  period: '2024/08 – Present',
                  description:
                      'Specializing in network infrastructure and cloud solutions, ensuring optimal system performance and security.',
                ),
              ),
              Constants.sizedBox(width: 20.0),
              Expanded(
                child: buildExperienceCard(
                  company: 'Paradise Island',
                  position: 'Operation Specialist and Tech Support',
                  location: 'Hurghada, Egypt',
                  period: '2023/12 – 2024/06',
                  description:
                      'Administered the company\'s tourism room system (CDWS). Developed an AI-powered application to streamline customer data entry, replacing manual processes.',
                ),
              ),
              Constants.sizedBox(width: 20.0),
              Expanded(
                child: buildExperienceCard(
                  company: 'Mega Robotics',
                  position: 'Flutter Instructor',
                  location: 'Hurghada, Egypt',
                  period: '2023/12 – 2024/06',
                  description:
                      'Part-time instructor teaching Flutter development to aspiring developers.',
                ),
              ),
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  FadeInDown buildWorkExperienceText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Work ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Experience',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  FadeInUp buildExperienceCard({
    required String company,
    required String position,
    required String location,
    required String period,
    required String description,
  }) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1400),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.themeColor.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              company,
              style: AppTextStyles.montserratStyle(
                color: AppColors.themeColor,
                fontSize: 20,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Constants.sizedBox(height: 8),
            Text(
              position,
              style: AppTextStyles.montserratStyle(
                color: AppColors.white,
                fontSize: 16,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Constants.sizedBox(height: 8),
            Wrap(
              spacing: 16,
              runSpacing: 8,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: AppColors.themeColor,
                      size: 16,
                    ),
                    Constants.sizedBox(width: 4),
                    Text(
                      location,
                      style: AppTextStyles.normalStyle(
                        color: AppColors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: AppColors.themeColor,
                      size: 16,
                    ),
                    Constants.sizedBox(width: 4),
                    Text(
                      period,
                      style: AppTextStyles.normalStyle(
                        color: AppColors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Constants.sizedBox(height: 12),
            Text(
              description,
              style: AppTextStyles.normalStyle(),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
