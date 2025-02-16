import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/global_resources.dart';

import '../../utils/constants.dart';
import '../../view/widgets/footer.dart';
import '../classes/project_model.dart';
import '../classes/stat.dart';
import '../classes/technology.dart';
import '../classes/utility.dart';

List<ProjectModel> projects = [
  ProjectModel(
    project: translate.appFlutter,
    title: translate.myPersonalTasksTitleProject,
    description: translate.myPersonalTasksDescriptionProject,
    appPhotos: AppConstants.project5,
    projectLink: AppConstants.myPersonalTasksUrl,
    techUsed: [
      TechnologyConstants.flutter,
      TechnologyConstants.dart,
      TechnologyConstants.git
    ],
    buttonText: translate.seeGithub,
  ),
  ProjectModel(
    project: translate.appFlutter,
    title: translate.wsTitleProject,
    description: translate.wsDescriptionProject,
    appPhotos: AppConstants.project4,
    projectLink: AppConstants.wsUrl,
    techUsed: [
      TechnologyConstants.flutter,
      TechnologyConstants.dart,
      TechnologyConstants.git
    ],
    buttonText: translate.seeGithub,
  ),
  ProjectModel(
    project: translate.appFlutter,
    title: translate.faClientTitleProject,
    description: translate.faClientDescriptionProject,
    appPhotos: AppConstants.project2,
    projectLink: AppConstants.faClientUrl,
    techUsed: [
      TechnologyConstants.flutter,
      TechnologyConstants.dart,
      TechnologyConstants.tensorflow,
      TechnologyConstants.mqtt
    ],
    buttonText: translate.seeGithub,
  ),
  ProjectModel(
    project: translate.appFlutter,
    title: translate.faEmployeeTitleProject,
    description: translate.faEmployeeDescriptionProject,
    appPhotos: AppConstants.project3,
    projectLink: AppConstants.faEmployeeUrl,
    techUsed: [
      TechnologyConstants.flutter,
      TechnologyConstants.dart,
      TechnologyConstants.mqtt
    ],
    buttonText: translate.seeGithub,
  ),
  ProjectModel(
    project: translate.appPython,
    title: translate.faServerTitleProject,
    description: translate.faServerDescriptionProject,
    appPhotos: AppConstants.project1,
    projectLink: AppConstants.faServerUrl,
    techUsed: [
      TechnologyConstants.linux,
      TechnologyConstants.psql,
      TechnologyConstants.python,
      TechnologyConstants.mqtt
    ],
    buttonText: translate.seeGithub,
  ),
];

final List<Stat> stats = [
  Stat(count: "3", text: translate.projects),
  Stat(count: "1", text: translate.awards),
  Stat(count: "2", text: translate.experienceInYears),
];

final List<FooterItem> footerItems = [
  FooterItem(
      iconData: Icons.location_on,
      title: translate.address,
      text1: AppConstants.getAddress,
      text2: translate.getCountry,
      onTap: () {
        Utilty.openUrl(AppConstants.location);
      }),
  FooterItem(
      iconData: Icons.phone,
      title: translate.phone,
      text1: AppConstants.getCallPhone,
      text2: "",
      onTap: () {
        Utilty.openUrl(AppConstants.phone);
      }),
  FooterItem(
      iconData: Icons.mail,
      title: translate.email,
      text1: AppConstants.getEmail,
      text2: "",
      onTap: () {
        Utilty.openUrl(AppConstants.mailTo);
      }),
  FooterItem(
      iconData: Icons.sms,
      title: translate.whatsapp,
      text1: AppConstants.getWhatsapp,
      text2: "",
      onTap: () {
        Utilty.openUrl(AppConstants.waMe);
      })
];

class TechnologyConstants {
  static TechnologyModel python =
      TechnologyModel("Python", AppConstants.pythonImage);
  static TechnologyModel mqtt = TechnologyModel("MQTT", AppConstants.mqttImage);
  static TechnologyModel tensorflow =
      TechnologyModel("TensorFlow", AppConstants.tensorflowImage);
  static TechnologyModel flutter =
      TechnologyModel("Flutter", AppConstants.flutterImage);
  static TechnologyModel flask =
      TechnologyModel("Flask", AppConstants.flaskImage);
  static TechnologyModel firebase =
      TechnologyModel("Firebase", AppConstants.firebaseImage);

  static TechnologyModel dart = TechnologyModel("Dart", AppConstants.dartImage);
  static TechnologyModel android =
      TechnologyModel("Android", AppConstants.androidImage);
  static TechnologyModel c = TechnologyModel("C", AppConstants.cImage);
  static TechnologyModel docker =
      TechnologyModel("Docker", AppConstants.dockerImage);

  static TechnologyModel fastapi =
      TechnologyModel("FastAPI", AppConstants.fapiImage);
  static TechnologyModel kotlin =
      TechnologyModel("Kotlin", AppConstants.kotlinImage);
  static TechnologyModel git = TechnologyModel("GIT", AppConstants.gitImage);
  static TechnologyModel java = TechnologyModel("Java", AppConstants.javaImage);
  static TechnologyModel linux =
      TechnologyModel("Linux", AppConstants.linuxImage);
  static TechnologyModel psql =
      TechnologyModel("PostgreSQL", AppConstants.psqlImage);
  static TechnologyModel onnx = TechnologyModel("ONNX", AppConstants.onnxImage);
  static List<TechnologyModel> mobileLearned = [
    flutter,
    android,
    kotlin,
    java,
    dart
  ];
  static List<TechnologyModel> generalLearned = [
    linux,
    python,
    fastapi,
    tensorflow,
    onnx,
    docker,
    git,
    psql,
    c,
    mqtt
  ];
}
