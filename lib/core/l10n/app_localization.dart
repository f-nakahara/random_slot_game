
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_en.dart';
import 'app_localization_ja.dart';

/// Callers can lookup localized strings with an instance of AppLocalization returned
/// by `AppLocalization.of(context)`.
///
/// Applications need to include `AppLocalization.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'l10n/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalization.localizationsDelegates,
///   supportedLocales: AppLocalization.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
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
/// be consistent with the languages listed in the AppLocalization.supportedLocales
/// property.
abstract class AppLocalization {
  AppLocalization(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalization? of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  static const LocalizationsDelegate<AppLocalization> delegate = _AppLocalizationDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja')
  ];

  /// No description provided for @player.
  ///
  /// In en, this message translates to:
  /// **'Player'**
  String get player;

  /// No description provided for @action.
  ///
  /// In en, this message translates to:
  /// **'Action'**
  String get action;

  /// No description provided for @target.
  ///
  /// In en, this message translates to:
  /// **'Target'**
  String get target;

  /// No description provided for @checkExplanation.
  ///
  /// In en, this message translates to:
  /// **'Please check the {subject} to use.'**
  String checkExplanation(Object subject);

  /// No description provided for @addExplanation.
  ///
  /// In en, this message translates to:
  /// **'Press the 「+」 button to add a new {subject}.'**
  String addExplanation(Object subject);

  /// No description provided for @createTitle.
  ///
  /// In en, this message translates to:
  /// **'Create {subject}'**
  String createTitle(Object subject);

  /// No description provided for @deletionNotice.
  ///
  /// In en, this message translates to:
  /// **'Do you really want to delete this?'**
  String get deletionNotice;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @emptyErrorText.
  ///
  /// In en, this message translates to:
  /// **'Please fill in the value'**
  String get emptyErrorText;

  /// No description provided for @maxLengthErrorText.
  ///
  /// In en, this message translates to:
  /// **'Please enter within {length} characters'**
  String maxLengthErrorText(Object length);

  /// No description provided for @duplicateErrorText.
  ///
  /// In en, this message translates to:
  /// **'It has already been created'**
  String get duplicateErrorText;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'START'**
  String get start;

  /// No description provided for @gameSettingTitle.
  ///
  /// In en, this message translates to:
  /// **' Game Setting'**
  String get gameSettingTitle;

  /// No description provided for @startIntroductionTitle.
  ///
  /// In en, this message translates to:
  /// **'For those who play for the first time'**
  String get startIntroductionTitle;

  /// No description provided for @startIntroductionStep1.
  ///
  /// In en, this message translates to:
  /// **'Determine the {player}, {target} and {action} game from the 「{gameSettingTitle}」.'**
  String startIntroductionStep1(Object player, Object target, Object action, Object gameSettingTitle);

  /// No description provided for @startIntroductionStep2.
  ///
  /// In en, this message translates to:
  /// **'Tap Start to 「{start}」 the game!'**
  String startIntroductionStep2(Object start);

  /// No description provided for @startErrorText.
  ///
  /// In en, this message translates to:
  /// **'Create 「{subject1}」, 「{subject2}」 and 「{subject3}」 from the 「{setting}」.'**
  String startErrorText(Object setting, Object subject1, Object subject2, Object subject3);

  /// No description provided for @stop.
  ///
  /// In en, this message translates to:
  /// **'STOP'**
  String get stop;

  /// No description provided for @play.
  ///
  /// In en, this message translates to:
  /// **'PLAY'**
  String get play;

  /// No description provided for @replay.
  ///
  /// In en, this message translates to:
  /// **'REPLAY'**
  String get replay;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @test.
  ///
  /// In en, this message translates to:
  /// **'test'**
  String get test;

  /// No description provided for @defaultTargetName1.
  ///
  /// In en, this message translates to:
  /// **'Only'**
  String get defaultTargetName1;

  /// No description provided for @defaultTargetName2.
  ///
  /// In en, this message translates to:
  /// **'Left'**
  String get defaultTargetName2;

  /// No description provided for @defaultTargetName3.
  ///
  /// In en, this message translates to:
  /// **'Right'**
  String get defaultTargetName3;

  /// No description provided for @defaultTargetName4.
  ///
  /// In en, this message translates to:
  /// **'Everyone except'**
  String get defaultTargetName4;

  /// No description provided for @defaultPlayerName1.
  ///
  /// In en, this message translates to:
  /// **'Player1'**
  String get defaultPlayerName1;

  /// No description provided for @defaultPlayerName2.
  ///
  /// In en, this message translates to:
  /// **'Player2'**
  String get defaultPlayerName2;

  /// No description provided for @defaultActionName1.
  ///
  /// In en, this message translates to:
  /// **'Chugging'**
  String get defaultActionName1;

  /// No description provided for @defaultActionName2.
  ///
  /// In en, this message translates to:
  /// **'Tell an interesting story'**
  String get defaultActionName2;
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationDelegate();

  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture<AppLocalization>(lookupAppLocalization(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationDelegate old) => false;
}

AppLocalization lookupAppLocalization(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationEn();
    case 'ja': return AppLocalizationJa();
  }

  throw FlutterError(
    'AppLocalization.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
