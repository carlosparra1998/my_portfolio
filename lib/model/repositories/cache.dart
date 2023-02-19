import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/strings.dart';
import '../../view/widgets/footer.dart';
import '../classes/name_on_tap.dart';
import '../classes/project_model.dart';
import '../classes/stat.dart';
import '../classes/technology.dart';
import '../classes/utility.dart';

List<ProjectModel> projects = [
  ProjectModel(
    project: "Python Deploy",
    title: "FaceAccess Server",
    description: "Este proyecto corresponde con el backend del servicio para el funcionamiento del sistema de control de acceso FaceAccess.",
    appPhotos: AppConstants.project1,
    projectLink: "https://github.com/carlosparra1998/FACEACCESS_SERVER",
    techUsed: [TechnologyConstants.linux, TechnologyConstants.psql, TechnologyConstants.python, TechnologyConstants.mqtt],
    buttonText: "Github Link",
  ),
  ProjectModel(
    project: "Flutter App",
    title: "FaceAccess Client",
    description: "Esta es la implementación de la aplicación móvil del cliente, correspondiente al sistema FaceAccess.",
    appPhotos: AppConstants.project2,
    projectLink: "https://github.com/carlosparra1998/FACEACCESS_CLIENT",
    techUsed: [
      TechnologyConstants.flutter,
      TechnologyConstants.dart,
      TechnologyConstants.tensorflow,
      TechnologyConstants.mqtt
    ],
    buttonText: "VER GITHUB",
  ),
  ProjectModel(
    project: "Flutter App",
    title: "FaceAccess Employee",
    description: "Esta es la implementación de la aplicación móvil del empleado, correspondiente al sistema FaceAccess.",
    appPhotos: AppConstants.project3,
    projectLink: "https://github.com/carlosparra1998/FACEACCESS_EMPLOYEE",
    techUsed: [
      TechnologyConstants.flutter,
      TechnologyConstants.dart,
      TechnologyConstants.mqtt
    ],
    buttonText: "VER GITHUB",
  ),
];

List<ProjectModel> demos = [
  ProjectModel(
    project: "Flutter App",
    title: "Flutter Web Portfolio",
    description: "",
    appPhotos: AppConstants.portfolioGif,
    projectLink: "https://github.com/AgnelSelvan/Flutter-Web-Portfolio",
    techUsed: [],
    buttonText: "VER GITHUB",
  ),
];

final List<Stat> stats = [
  Stat(count: "3", text: "Proyectos"),
  Stat(count: "1", text: "Premio"),
  Stat(count: "2", text: "Años\nExperiencia"),
];

final List<FooterItem> footerItems = [
  FooterItem(
      iconData: Icons.location_on,
      title: Strings.address,
      text1: Strings.getAddress,
      text2: Strings.getCountry,
      onTap: () {
        Utilty.openUrl('https://goo.gl/maps/qLo3w9XR5NxCNDmL8');
      }),
  FooterItem(
      iconData: Icons.phone,
      title: Strings.phone,
      text1: Strings.getCallPhone,
      text2: "",
      onTap: () {
        Utilty.openUrl("tel:+34-644912060");
      }),
  FooterItem(
      iconData: Icons.mail,
      title: Strings.email,
      text1: Strings.getEmail,
      text2: "",
      onTap: () {
        Utilty.openUrl('mailto:carlosfcoparra@hotmail.com');
      }),
  FooterItem(
      iconData: Icons.sms,
      title: Strings.whatsapp,
      text1: Strings.getWhatsapp,
      text2: "",
      onTap: () {
        Utilty.openUrl('https://wa.me/627143691');
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
