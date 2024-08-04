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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Food for Everyone`
  String get foodForEveryOne {
    return Intl.message(
      'Food for Everyone',
      name: 'foodForEveryOne',
      desc: '',
      args: [],
    );
  }

  /// `Get started`
  String get getStarted {
    return Intl.message(
      'Get started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get logIn {
    return Intl.message(
      'Log in',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Sign-up`
  String get signUp {
    return Intl.message(
      'Sign-up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get emailAddress {
    return Intl.message(
      'Email address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgetPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Delicious food for you`
  String get deliciousFoodForYou {
    return Intl.message(
      'Delicious food for you',
      name: 'deliciousFoodForYou',
      desc: '',
      args: [],
    );
  }

  /// `Search...`
  String get search {
    return Intl.message(
      'Search...',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Food`
  String get food {
    return Intl.message(
      'Food',
      name: 'food',
      desc: '',
      args: [],
    );
  }

  /// `Drinks`
  String get drinks {
    return Intl.message(
      'Drinks',
      name: 'drinks',
      desc: '',
      args: [],
    );
  }

  /// `Snacks`
  String get snacks {
    return Intl.message(
      'Snacks',
      name: 'snacks',
      desc: '',
      args: [],
    );
  }

  /// `see more`
  String get seeMore {
    return Intl.message(
      'see more',
      name: 'seeMore',
      desc: '',
      args: [],
    );
  }

  /// `Complete order`
  String get completeOrder {
    return Intl.message(
      'Complete order',
      name: 'completeOrder',
      desc: '',
      args: [],
    );
  }

  /// `Card`
  String get card {
    return Intl.message(
      'Card',
      name: 'card',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Offer and Promo`
  String get offerAndPromo {
    return Intl.message(
      'Offer and Promo',
      name: 'offerAndPromo',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get security {
    return Intl.message(
      'Security',
      name: 'security',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get signOut {
    return Intl.message(
      'Sign out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get information {
    return Intl.message(
      'Information',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Bank Account`
  String get bankAccount {
    return Intl.message(
      'Bank Account',
      name: 'bankAccount',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `No History Yet`
  String get noHistoryYet {
    return Intl.message(
      'No History Yet',
      name: 'noHistoryYet',
      desc: '',
      args: [],
    );
  }

  /// `Hit the orange button down below to Create an order`
  String get hitTheOrangeButton {
    return Intl.message(
      'Hit the orange button down below to Create an order',
      name: 'hitTheOrangeButton',
      desc: '',
      args: [],
    );
  }

  /// `Start Ordering`
  String get startOrdering {
    return Intl.message(
      'Start Ordering',
      name: 'startOrdering',
      desc: '',
      args: [],
    );
  }

  /// `No Orders Yet`
  String get noOrdersYet {
    return Intl.message(
      'No Orders Yet',
      name: 'noOrdersYet',
      desc: '',
      args: [],
    );
  }

  /// `Add To Cart`
  String get addToCart {
    return Intl.message(
      'Add To Cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Information`
  String get deliveryInformation {
    return Intl.message(
      'Delivery Information',
      name: 'deliveryInformation',
      desc: '',
      args: [],
    );
  }

  /// `Return Policy`
  String get returnPolicy {
    return Intl.message(
      'Return Policy',
      name: 'returnPolicy',
      desc: '',
      args: [],
    );
  }

  /// `All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.`
  String get allOurFoods {
    return Intl.message(
      'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
      name: 'allOurFoods',
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
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
