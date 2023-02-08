// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get menuHome {
    return Intl.message(
      'Home',
      name: 'menuHome',
      desc: '',
      args: [],
    );
  }

  /// `About me`
  String get menuAboutMe {
    return Intl.message(
      'About me',
      name: 'menuAboutMe',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get menuServices {
    return Intl.message(
      'Services',
      name: 'menuServices',
      desc: '',
      args: [],
    );
  }

  /// `My Projects`
  String get menuMyProjects {
    return Intl.message(
      'My Projects',
      name: 'menuMyProjects',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get menuFeedback {
    return Intl.message(
      'Feedback',
      name: 'menuFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get menuContact {
    return Intl.message(
      'Contact',
      name: 'menuContact',
      desc: '',
      args: [],
    );
  }

  /// `Hi, nice to meet you I"m`
  String get upperSubTitle {
    return Intl.message(
      'Hi, nice to meet you I"m',
      name: 'upperSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Viktor Hermann`
  String get nameTitle {
    return Intl.message(
      'Viktor Hermann',
      name: 'nameTitle',
      desc: '',
      args: [],
    );
  }

  /// `Passioned Flutter Mobile App Developer`
  String get bottomSubTitle {
    return Intl.message(
      'Passioned Flutter Mobile App Developer',
      name: 'bottomSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Made with 💙 and Flutter web`
  String get poweredByFlutter {
    return Intl.message(
      'Made with 💙 and Flutter web',
      name: 'poweredByFlutter',
      desc: '',
      args: [],
    );
  }

  /// `You never lose. You either win or you learn.`
  String get motto {
    return Intl.message(
      'You never lose. You either win or you learn.',
      name: 'motto',
      desc: '',
      args: [],
    );
  }

  /// `About me`
  String get aboutMeTitle {
    return Intl.message(
      'About me',
      name: 'aboutMeTitle',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get aboutMeShort {
    return Intl.message(
      '',
      name: 'aboutMeShort',
      desc: '',
      args: [],
    );
  }

  /// `Years of Experience`
  String get experienceYearTitle {
    return Intl.message(
      'Years of Experience',
      name: 'experienceYearTitle',
      desc: '',
      args: [],
    );
  }

  /// `05`
  String get experienceYear {
    return Intl.message(
      '05',
      name: 'experienceYear',
      desc: '',
      args: [],
    );
  }

  /// `Hire Me!`
  String get hireMeAction {
    return Intl.message(
      'Hire Me!',
      name: 'hireMeAction',
      desc: '',
      args: [],
    );
  }

  /// `Download CV`
  String get downloadCvAction {
    return Intl.message(
      'Download CV',
      name: 'downloadCvAction',
      desc: '',
      args: [],
    );
  }

  /// `After graduating as an `
  String get aboutMeDescription {
    return Intl.message(
      'After graduating as an ',
      name: 'aboutMeDescription',
      desc: '',
      args: [],
    );
  }

  /// `IT Specialist Application Developer in 2018`
  String get aboutMeDescription_1 {
    return Intl.message(
      'IT Specialist Application Developer in 2018',
      name: 'aboutMeDescription_1',
      desc: '',
      args: [],
    );
  }

  /// `, I am always looking for new challenges. I quickly`
  String get aboutMeDescription_2 {
    return Intl.message(
      ', I am always looking for new challenges. I quickly',
      name: 'aboutMeDescription_2',
      desc: '',
      args: [],
    );
  }

  /// ` specialized in mobile app development`
  String get aboutMeDescription_3 {
    return Intl.message(
      ' specialized in mobile app development',
      name: 'aboutMeDescription_3',
      desc: '',
      args: [],
    );
  }

  /// ` and now have several years of experience in software development especially with the Flutter framework.`
  String get aboutMeDescription_4 {
    return Intl.message(
      ' and now have several years of experience in software development especially with the Flutter framework.',
      name: 'aboutMeDescription_4',
      desc: '',
      args: [],
    );
  }

  /// `Offering 5 years of experience in software development especially in mobile App development.`
  String get experienceYearDescription {
    return Intl.message(
      'Offering 5 years of experience in software development especially in mobile App development.',
      name: 'experienceYearDescription',
      desc: '',
      args: [],
    );
  }

  /// ` Specialize in thinking outside the box to find unique solutions`
  String get experienceYearDescription_1 {
    return Intl.message(
      ' Specialize in thinking outside the box to find unique solutions',
      name: 'experienceYearDescription_1',
      desc: '',
      args: [],
    );
  }

  /// ` to difficult engineering problems and solving problem fasts and clean.`
  String get experienceYearDescription_2 {
    return Intl.message(
      ' to difficult engineering problems and solving problem fasts and clean.',
      name: 'experienceYearDescription_2',
      desc: '',
      args: [],
    );
  }

  /// `I bring experience from designing the `
  String get experienceYearDescription_3 {
    return Intl.message(
      'I bring experience from designing the ',
      name: 'experienceYearDescription_3',
      desc: '',
      args: [],
    );
  }

  /// `UI of apps according to concepts`
  String get experienceYearDescription_4 {
    return Intl.message(
      'UI of apps according to concepts',
      name: 'experienceYearDescription_4',
      desc: '',
      args: [],
    );
  }

  /// ` to `
  String get experienceYearDescription_5 {
    return Intl.message(
      ' to ',
      name: 'experienceYearDescription_5',
      desc: '',
      args: [],
    );
  }

  /// `bug and performance analysis`
  String get experienceYearDescription_6 {
    return Intl.message(
      'bug and performance analysis',
      name: 'experienceYearDescription_6',
      desc: '',
      args: [],
    );
  }

  /// ` as well as complete app optiomization`
  String get experienceYearDescription_7 {
    return Intl.message(
      ' as well as complete app optiomization',
      name: 'experienceYearDescription_7',
      desc: '',
      args: [],
    );
  }

  /// `Service Offerings`
  String get serviceTitle {
    return Intl.message(
      'Service Offerings',
      name: 'serviceTitle',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get serviceSubtitle {
    return Intl.message(
      '',
      name: 'serviceSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Android, IOS & Web App development`
  String get service_01 {
    return Intl.message(
      'Android, IOS & Web App development',
      name: 'service_01',
      desc: '',
      args: [],
    );
  }

  /// `App ⟷ Backend communication`
  String get service_02 {
    return Intl.message(
      'App ⟷ Backend communication',
      name: 'service_02',
      desc: '',
      args: [],
    );
  }

  /// `New Feature and further development`
  String get service_03 {
    return Intl.message(
      'New Feature and further development',
      name: 'service_03',
      desc: '',
      args: [],
    );
  }

  /// `Analysis and elimination of errors and problems`
  String get service_04 {
    return Intl.message(
      'Analysis and elimination of errors and problems',
      name: 'service_04',
      desc: '',
      args: [],
    );
  }

  /// `Performance, network, UI and UX optimization`
  String get service_05 {
    return Intl.message(
      'Performance, network, UI and UX optimization',
      name: 'service_05',
      desc: '',
      args: [],
    );
  }

  /// `Push notifications with Firebase`
  String get service_06 {
    return Intl.message(
      'Push notifications with Firebase',
      name: 'service_06',
      desc: '',
      args: [],
    );
  }

  /// `Google Playstore and IOS Appstore release process`
  String get service_07 {
    return Intl.message(
      'Google Playstore and IOS Appstore release process',
      name: 'service_07',
      desc: '',
      args: [],
    );
  }

  /// `Quality Assurance - Testing`
  String get service_08 {
    return Intl.message(
      'Quality Assurance - Testing',
      name: 'service_08',
      desc: '',
      args: [],
    );
  }

  /// `Starting New Project?`
  String get startingNewProjectTitle {
    return Intl.message(
      'Starting New Project?',
      name: 'startingNewProjectTitle',
      desc: '',
      args: [],
    );
  }

  /// `Get an estimate for the new project`
  String get startingNewProjectSubtitle {
    return Intl.message(
      'Get an estimate for the new project',
      name: 'startingNewProjectSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Reference projects`
  String get myProjectTitle {
    return Intl.message(
      'Reference projects',
      name: 'myProjectTitle',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get myProjectSubtitle {
    return Intl.message(
      '',
      name: 'myProjectSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Feedback Received`
  String get feedbackTitle {
    return Intl.message(
      'Feedback Received',
      name: 'feedbackTitle',
      desc: '',
      args: [],
    );
  }

  /// `Client’s testimonials that inspired me a lot`
  String get feedbackSubtitle {
    return Intl.message(
      'Client’s testimonials that inspired me a lot',
      name: 'feedbackSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Contact Me`
  String get contactTitle {
    return Intl.message(
      'Contact Me',
      name: 'contactTitle',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get contactSubtitle {
    return Intl.message(
      '',
      name: 'contactSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `I really enjoyed working with Viktor as he always had an eye for an appealing design and always aimed for an intuitive graphical user interface. His enthusiasm for programming has always led us to excellent solutions.`
  String get feedbackABauer {
    return Intl.message(
      'I really enjoyed working with Viktor as he always had an eye for an appealing design and always aimed for an intuitive graphical user interface. His enthusiasm for programming has always led us to excellent solutions.',
      name: 'feedbackABauer',
      desc: '',
      args: [],
    );
  }

  /// `Do you have any questions or a job offer for me?`
  String get contactMeQestionOrJob {
    return Intl.message(
      'Do you have any questions or a job offer for me?',
      name: 'contactMeQestionOrJob',
      desc: '',
      args: [],
    );
  }

  /// `Just send me a request `
  String get contactMeRequest {
    return Intl.message(
      'Just send me a request ',
      name: 'contactMeRequest',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get contactFormName {
    return Intl.message(
      'Your Name',
      name: 'contactFormName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get contactFormNameHint {
    return Intl.message(
      'Enter your name',
      name: 'contactFormNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Email Adress`
  String get contactFormEmail {
    return Intl.message(
      'Email Adress',
      name: 'contactFormEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address`
  String get contactFormEmailHint {
    return Intl.message(
      'Enter your email address',
      name: 'contactFormEmailHint',
      desc: '',
      args: [],
    );
  }

  /// `Project Type`
  String get contactFormProjectType {
    return Intl.message(
      'Project Type',
      name: 'contactFormProjectType',
      desc: '',
      args: [],
    );
  }

  /// `Select project type`
  String get contactFormProjectTypeHint {
    return Intl.message(
      'Select project type',
      name: 'contactFormProjectTypeHint',
      desc: '',
      args: [],
    );
  }

  /// `Project Budget`
  String get contactFormBudget {
    return Intl.message(
      'Project Budget',
      name: 'contactFormBudget',
      desc: '',
      args: [],
    );
  }

  /// `Tell me your budget or your hourly rate or daily rate`
  String get contactFormBudgetHint {
    return Intl.message(
      'Tell me your budget or your hourly rate or daily rate',
      name: 'contactFormBudgetHint',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get contactFormDescription {
    return Intl.message(
      'Description',
      name: 'contactFormDescription',
      desc: '',
      args: [],
    );
  }

  /// `Tell me about your project`
  String get contactFormDescriptionHint {
    return Intl.message(
      'Tell me about your project',
      name: 'contactFormDescriptionHint',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}