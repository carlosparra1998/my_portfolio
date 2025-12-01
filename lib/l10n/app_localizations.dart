import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @spanish.
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get spanish;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @namePage.
  ///
  /// In en, this message translates to:
  /// **'Carlos Parra Portfolio'**
  String get namePage;

  /// No description provided for @completeName.
  ///
  /// In en, this message translates to:
  /// **'Carlos Francisco Parra García'**
  String get completeName;

  /// No description provided for @job.
  ///
  /// In en, this message translates to:
  /// **'SENIOR FRONTEND DEVELOPER'**
  String get job;

  /// No description provided for @phrase.
  ///
  /// In en, this message translates to:
  /// **'\"The only way to predict the future is to implement it\"'**
  String get phrase;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'DOWNLOAD CV'**
  String get download;

  /// No description provided for @awards.
  ///
  /// In en, this message translates to:
  /// **'Awards'**
  String get awards;

  /// No description provided for @aboutMe.
  ///
  /// In en, this message translates to:
  /// **'About me'**
  String get aboutMe;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'I was born in the city of Albacete, where I obtained my degree in Computer Engineering at the University of Castilla-La Mancha in 2022. There I was awarded with the prize for the most innovative Final Degree Project by the Campollano Foundation (2022). \n\nProfessional in front-end development since 2020, specialized in Flutter and the Android/iOS ecosystem. I have extensive experience using programming languages such as Dart and Kotlin, and I consistently apply Clean Code principles and scalable architectures like MVVM and Clean Architecture. I also master different levels of testing in Flutter, including unit, widget, and integration tests, ensuring the quality and stability of the applications I build. In my day-to-day role as a senior front-end developer, I design and develop high-performance mobile and web applications, using state management solutions such as Provider, BLoC, and Cubit, as well as other advanced practices in modern Flutter development. I have also contributed to the open-source ecosystem by developing packages published on pub.dev. In addition to my work as a front-end developer, I am the founder and organizer of Flutter Murcia, a local community created to share knowledge and connect developers in the region who are interested in Flutter. I have participated as a speaker in events such as #FlutterInProductionExtended by Flutter Málaga, and in the workshop “Learn to Use Flutter and Build Cross-Platform Apps,” organized by CEEIM and MurciaDev.'**
  String get description;

  /// No description provided for @tech.
  ///
  /// In en, this message translates to:
  /// **'Technologies used'**
  String get tech;

  /// No description provided for @portfolio.
  ///
  /// In en, this message translates to:
  /// **'Portfolio'**
  String get portfolio;

  /// No description provided for @workShow.
  ///
  /// In en, this message translates to:
  /// **'In this section I will present the GitHub repositories of my main personal projects.'**
  String get workShow;

  /// No description provided for @finalPhrase.
  ///
  /// In en, this message translates to:
  /// **'Powered by Flutter'**
  String get finalPhrase;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'ADDRESS'**
  String get address;

  /// No description provided for @getCountry.
  ///
  /// In en, this message translates to:
  /// **'Spain'**
  String get getCountry;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'PHONE NUMBER'**
  String get phone;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'EMAIL'**
  String get email;

  /// No description provided for @whatsapp.
  ///
  /// In en, this message translates to:
  /// **'WHATSAPP'**
  String get whatsapp;

  /// No description provided for @mobileDev.
  ///
  /// In en, this message translates to:
  /// **'Mobile development'**
  String get mobileDev;

  /// No description provided for @otherTech.
  ///
  /// In en, this message translates to:
  /// **'Other technologies'**
  String get otherTech;

  /// No description provided for @exploreMore.
  ///
  /// In en, this message translates to:
  /// **'Explore more'**
  String get exploreMore;

  /// No description provided for @tfgAwardTitle.
  ///
  /// In en, this message translates to:
  /// **'Campollano Foundation\'s most innovative Final Degree Project (TFG) 2021-2022'**
  String get tfgAwardTitle;

  /// No description provided for @appFlutter.
  ///
  /// In en, this message translates to:
  /// **'Flutter App'**
  String get appFlutter;

  /// No description provided for @appPython.
  ///
  /// In en, this message translates to:
  /// **'Python Service'**
  String get appPython;

  /// No description provided for @myPersonalTasksTitleProject.
  ///
  /// In en, this message translates to:
  /// **'My Personal Tasks'**
  String get myPersonalTasksTitleProject;

  /// No description provided for @myPersonalTasksDescriptionProject.
  ///
  /// In en, this message translates to:
  /// **'Application developed in Flutter for managing user tasks. The design pattern followed has been Model View View-Model (MVVM), in which we have incorporated the functionality of Provider to manage the states of the app.'**
  String get myPersonalTasksDescriptionProject;

  /// No description provided for @wsTitleProject.
  ///
  /// In en, this message translates to:
  /// **'Wembley Studios Movies'**
  String get wsTitleProject;

  /// No description provided for @wsDescriptionProject.
  ///
  /// In en, this message translates to:
  /// **'Application developed in Flutter for the management of favorite movies of Wembley Studios employees. The design pattern followed has been Model View View-Model (MVVM), in which we have incorporated the functionality of Provider to manage the states of the app.'**
  String get wsDescriptionProject;

  /// No description provided for @faClientTitleProject.
  ///
  /// In en, this message translates to:
  /// **'FaceAccess Client'**
  String get faClientTitleProject;

  /// No description provided for @faClientDescriptionProject.
  ///
  /// In en, this message translates to:
  /// **'This is the implementation of the client\'s mobile application, corresponding to the FaceAccess system.'**
  String get faClientDescriptionProject;

  /// No description provided for @faEmployeeTitleProject.
  ///
  /// In en, this message translates to:
  /// **'FaceAccess Employee'**
  String get faEmployeeTitleProject;

  /// No description provided for @faEmployeeDescriptionProject.
  ///
  /// In en, this message translates to:
  /// **'This is the implementation of the employee\'s mobile application, corresponding to the FaceAccess system.'**
  String get faEmployeeDescriptionProject;

  /// No description provided for @faServerTitleProject.
  ///
  /// In en, this message translates to:
  /// **'FaceAccess Server'**
  String get faServerTitleProject;

  /// No description provided for @faServerDescriptionProject.
  ///
  /// In en, this message translates to:
  /// **'This project corresponds to the backend of the service for the operation of the FaceAccess access control system.'**
  String get faServerDescriptionProject;

  /// No description provided for @taller29FrontTitleProject.
  ///
  /// In en, this message translates to:
  /// **'FLUTTER WORKSHOP 29/05/2024 - FRONTEND'**
  String get taller29FrontTitleProject;

  /// No description provided for @taller29FrontDescriptionProject.
  ///
  /// In en, this message translates to:
  /// **'Final project (frontend part) corresponding to the Flutter workshop given by me at the Centro de Empresas e Innovación de Murcia on 05/29/2024. In this project a monolithic TODO LIST has been developed.'**
  String get taller29FrontDescriptionProject;

  /// No description provided for @taller29BackTitleProject.
  ///
  /// In en, this message translates to:
  /// **'FLUTTER WORKSHOP 29/05/2024 - BACKEND'**
  String get taller29BackTitleProject;

  /// No description provided for @taller29BackDescriptionProject.
  ///
  /// In en, this message translates to:
  /// **'Final project (backend part) corresponding to the Flutter workshop given by me at the Centro de Empresas e Innovación de Murcia on 05/29/2024. In this project we have developed everything necessary for API communication and persistence in DB of the TODOs.'**
  String get taller29BackDescriptionProject;

  /// No description provided for @seeGithub.
  ///
  /// In en, this message translates to:
  /// **'SEE IN GITHUB'**
  String get seeGithub;

  /// No description provided for @seeGooglePlay.
  ///
  /// In en, this message translates to:
  /// **'SEE IN GOOGLE PLAY'**
  String get seeGooglePlay;

  /// No description provided for @seePubDev.
  ///
  /// In en, this message translates to:
  /// **'SEE IN PUB.DEV'**
  String get seePubDev;

  /// No description provided for @flutterLibrary.
  ///
  /// In en, this message translates to:
  /// **'Flutter Library - Pub.dev'**
  String get flutterLibrary;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// No description provided for @experienceInYears.
  ///
  /// In en, this message translates to:
  /// **'Years\nExperience'**
  String get experienceInYears;

  /// No description provided for @fluencyPath.
  ///
  /// In en, this message translates to:
  /// **'Fluency Path'**
  String get fluencyPath;

  /// No description provided for @flutterFullLayout.
  ///
  /// In en, this message translates to:
  /// **'Flutter Full Layout'**
  String get flutterFullLayout;

  /// No description provided for @deepObserver.
  ///
  /// In en, this message translates to:
  /// **'Deep Observer'**
  String get deepObserver;

  /// No description provided for @fluencyPathDesc.
  ///
  /// In en, this message translates to:
  /// **'With our app, you can successfully prepare for your English certification exam in a simple and effective way. In it, you will find exercises of different styles.'**
  String get fluencyPathDesc;

  /// No description provided for @deepObserverDesc.
  ///
  /// In en, this message translates to:
  /// **'Library that enables simple and efficient management of application responsiveness in Flutter.'**
  String get deepObserverDesc;

  /// No description provided for @flutterFullLayoutDesc.
  ///
  /// In en, this message translates to:
  /// **'CLI to generate a complete Flutter project with CLEAN ARCHITECTURE. It will allow the developer to create a base project with CLEAN ARCHITECTURE. In this architecture, we use services (Cubits) for each use case. These services will communicate with repositories (for each use case), and these repositories will communicate with the DIO client (HTTP).'**
  String get flutterFullLayoutDesc;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
