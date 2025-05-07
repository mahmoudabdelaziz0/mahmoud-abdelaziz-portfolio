import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import 'package:url_launcher/url_launcher.dart';
import '../globals/app_text_styles.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  final onHoverEffect = Matrix4.identity()..scale(1.0);

  final List<Project> projects = [
    Project(
      title: 'Smart Speaker',
      description:
          'An intelligent assistant app that helps deaf and mute people communicate through sign language translation and learning',
      imageUrl: 'assets/images/smart_speakr.png',
      githubUrl: 'https://github.com/mahmoudabdelaziz0/SmartSpeaker',
      technologies: ['Flutter', 'Speech to Text', 'Text to Speech', 'Firebase'],
    ),
    Project(
      title: 'Movies App',
      description:
          'A comprehensive movie application with an attractive user interface, advanced search features, and watchlist functionality',
      imageUrl: 'assets/MoviesApp.png',
      githubUrl: 'https://github.com/mahmoudabdelaziz0/moviesApp',
      technologies: ['Flutter', 'REST API', 'Firebase', 'Provider'],
    ),
    Project(
      title: 'Artista',
      description:
          'A modern Flutter app inspired by Pinterest. It lets users explore, save, and organize visual content into custom boards. Built with Flutter and Firebase, Artista delivers a smooth and scalable experience for creative inspiration.',
      imageUrl: 'assets/images/artista.png',
      githubUrl: 'https://github.com/mahmoudabdelaziz0/Artista',
      technologies: ['Flutter', 'Firebase', 'Custom UI', 'State Management'],
    ),
    Project(
      title: 'Portfolio Website',
      description:
          'A professional personal website built with Flutter Web featuring responsive design and modern user interface',
      imageUrl: 'assets/images/pro2.png',
      githubUrl: 'https://github.com/mahmoudabdelaziz0/portfolio',
      technologies: ['Flutter', 'Dart', 'Firebase', 'GitHub Actions'],
    ),
    Project(
      title: 'E-Commerce App',
      description:
          'تطبيق تجارة إلكترونية متكامل مع نظام دفع وإدارة مخزون وواجهة مستخدم سهلة الاستخدام',
      imageUrl:
          'https://raw.githubusercontent.com/mahmoudabdelaziz0/ecommerce_app/main/assets/images/ecommerce.png',
      githubUrl: 'https://github.com/mahmoudabdelaziz0/ecommerce_app',
      technologies: ['Flutter', 'Firebase', 'Stripe', 'Provider'],
    ),
    Project(
      title: 'Task Management',
      description:
          'تطبيق إدارة المهام مع ميزات متقدمة للتتبع والتنظيم وإدارة المشاريع',
      imageUrl:
          'https://raw.githubusercontent.com/mahmoudabdelaziz0/task_manager/main/assets/images/task_manager.png',
      githubUrl: 'https://github.com/mahmoudabdelaziz0/task_manager',
      technologies: ['Flutter', 'SQLite', 'Provider', 'GetX'],
    ),
    Project(
      title: 'Weather App',
      description:
          'تطبيق الطقس مع تحديثات مباشرة وتنبيهات الطقس وخرائط تفاعلية',
      imageUrl:
          'https://raw.githubusercontent.com/mahmoudabdelaziz0/weather_app/main/assets/images/weather.png',
      githubUrl: 'https://github.com/mahmoudabdelaziz0/weather_app',
      technologies: ['Flutter', 'OpenWeather API', 'Geolocation', 'Bloc'],
    ),
    Project(
      title: 'Chat Application',
      description:
          'تطبيق محادثة في الوقت الفعلي مع دعم الرسائل النصية والوسائط المتعددة',
      imageUrl:
          'https://raw.githubusercontent.com/mahmoudabdelaziz0/chat_app/main/assets/images/chat.png',
      githubUrl: 'https://github.com/mahmoudabdelaziz0/chat_app',
      technologies: ['Flutter', 'Firebase', 'WebRTC', 'Provider'],
    ),
    Project(
      title: 'Fitness Tracker',
      description: 'تطبيق تتبع اللياقة البدنية مع خطط تمرين مخصصة وتتبع التقدم',
      imageUrl:
          'https://raw.githubusercontent.com/mahmoudabdelaziz0/fitness_tracker/main/assets/images/fitness.png',
      githubUrl: 'https://github.com/mahmoudabdelaziz0/fitness_tracker',
      technologies: ['Flutter', 'Firebase', 'Health Kit', 'Bloc'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          buildProjectGridView(crossAxisCount: 1)
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          buildProjectGridView(crossAxisCount: 2)
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          buildProjectGridView(crossAxisCount: 3),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  Widget buildProjectGridView({required int crossAxisCount}) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 0.8,
      ),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return buildProjectCard(projects[index]);
      },
    );
  }

  Widget buildProjectCard(Project project) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1400),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: BorderRadius.circular(20),
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
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.network(
                project.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 200,
                    color: AppColors.bgColor2,
                    child: const Icon(Icons.error, color: Colors.red),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.title,
                    style: AppTextStyles.montserratStyle(
                      color: AppColors.themeColor,
                      fontSize: 20,
                    ),
                  ),
                  Constants.sizedBox(height: 8),
                  Text(
                    project.description,
                    style: AppTextStyles.normalStyle(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Constants.sizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: project.technologies.map((tech) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.bgColor2,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          tech,
                          style: AppTextStyles.normalStyle(
                            fontSize: 12,
                            color: AppColors.themeColor,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Constants.sizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () async {
                          final url = Uri.parse(project.githubUrl);
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          }
                        },
                        icon: Icon(
                          Icons.code,
                          color: AppColors.themeColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          final url = Uri.parse(project.githubUrl);
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          }
                        },
                        icon: Icon(
                          Icons.visibility,
                          color: AppColors.themeColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FadeInDown buildProjectText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Latest ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Projects',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }
}

class Project {
  final String title;
  final String description;
  final String imageUrl;
  final String githubUrl;
  final List<String> technologies;

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.githubUrl,
    required this.technologies,
  });
}
