import 'package:flutter/material.dart';

import 'screen_helper.dart';

const Color kPrimaryColor = Color(0xFFFFD800);
const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromARGB(255, 243, 22, 22);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
double carouselContainerHeight(BuildContext context) =>
    MediaQuery.of(context).size.height *
    (ScreenHelper.isMobile(context) ? .7 : .85);

class AppConstants {
  static const _assets = "assets/";
  static const _outputs = "outputs/";

  static const _svg = _assets + "svg/";
  static const guySvg = _svg + "guy.svg";
  static const personSvg = _svg + "person.svg";
  static const mainPhoto = "main.png";

  static const _images = _assets + "images/";

  static const _socialImages = _images + "social/";
  static const emailImage = _socialImages + "email.png";
  static const linkedInImage = _socialImages + "linkedin-logo.png";
  static const instaImage = _socialImages + "instagram.png";
  static const githubImage = _socialImages + "github.png";
  static const mediumImage = _socialImages + "medium.png";

  static const _techImages = _images + "technology/";
  static const flutterImage = _techImages + "flutter.png";
  static const pythonImage = _techImages + "python.png";
  static const tensorflowImage = _techImages + "tensorflow.png";
  static const flaskImage = _techImages + "flask.png";
  static const firebaseImage = _techImages + "firebase.png";
  static const dartImage = _techImages + "dart.png";
  static const javaImage = _techImages + "java.png";
  static const linuxImage = _techImages + "linux.png";
  static const onnxImage = _techImages + "onnx.png";
  static const psqlImage = _techImages + "psql.png";

  static const kotlinImage = _techImages + "kotlin.png";
  static const cImage = _techImages + "c.png";
  static const gitImage = _techImages + "git.png";
  static const mqttImage = _techImages + "mqtt.png";
  static const androidImage = _techImages + "android.png";
  static const dockerImage = _techImages + "docker.png";
  static const fapiImage = _techImages + "fastapi.png";

  static const _projectsImages = _images + "projects/";
  static const project1 = _projectsImages + "server.png";
  static const project2 = _projectsImages + "client.png";
  static const project3 = _projectsImages + "employee.png";
  static const project4 = _projectsImages + "appmovies.png";
  static const project5 = _projectsImages + "apptasks.png";

  static const musicLabImage = _projectsImages + "4.jpeg";
  static const personalFaceImage = _projectsImages + "5.jpeg";
  static const computerStoreImage = _projectsImages + "6.jpeg";

  static const _gifs = _outputs + "gif/";
  static const portfolioGif = _gifs + "mobile.gif";
}
