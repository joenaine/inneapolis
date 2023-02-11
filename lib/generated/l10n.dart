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

  /// `Оформление билета`
  String get ticketing {
    return Intl.message(
      'Оформление билета',
      name: 'ticketing',
      desc: '',
      args: [],
    );
  }

  /// `Field can not be empty`
  String get emptyFieldError {
    return Intl.message(
      'Field can not be empty',
      name: 'emptyFieldError',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid`
  String get invalidEmail {
    return Intl.message(
      'Email is invalid',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least 6 symbols`
  String get fewPasswordSymbols {
    return Intl.message(
      'Password must contain at least 6 symbols',
      name: 'fewPasswordSymbols',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must match`
  String get passwordsMustMatch {
    return Intl.message(
      'Passwords must match',
      name: 'passwordsMustMatch',
      desc: '',
      args: [],
    );
  }

  /// `sport`
  String get sport {
    return Intl.message(
      'sport',
      name: 'sport',
      desc: '',
      args: [],
    );
  }

  /// `business`
  String get business {
    return Intl.message(
      'business',
      name: 'business',
      desc: '',
      args: [],
    );
  }

  /// `culture`
  String get culture {
    return Intl.message(
      'culture',
      name: 'culture',
      desc: '',
      args: [],
    );
  }

  /// `children`
  String get children {
    return Intl.message(
      'children',
      name: 'children',
      desc: '',
      args: [],
    );
  }

  /// `travel`
  String get travel {
    return Intl.message(
      'travel',
      name: 'travel',
      desc: '',
      args: [],
    );
  }

  /// `fashion`
  String get fashion {
    return Intl.message(
      'fashion',
      name: 'fashion',
      desc: '',
      args: [],
    );
  }

  /// `education`
  String get education {
    return Intl.message(
      'education',
      name: 'education',
      desc: '',
      args: [],
    );
  }

  /// `more`
  String get more {
    return Intl.message(
      'more',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get profile {
    return Intl.message(
      'Профиль',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Мои организации`
  String get organizations {
    return Intl.message(
      'Мои организации',
      name: 'organizations',
      desc: '',
      args: [],
    );
  }

  /// `Создание организации`
  String get create_org {
    return Intl.message(
      'Создание организации',
      name: 'create_org',
      desc: '',
      args: [],
    );
  }

  /// `Создать организацию`
  String get create_org_button {
    return Intl.message(
      'Создать организацию',
      name: 'create_org_button',
      desc: '',
      args: [],
    );
  }

  /// `Форма организации`
  String get forma_org {
    return Intl.message(
      'Форма организации',
      name: 'forma_org',
      desc: '',
      args: [],
    );
  }

  /// `Детали организации`
  String get detal_org {
    return Intl.message(
      'Детали организации',
      name: 'detal_org',
      desc: '',
      args: [],
    );
  }

  /// `Название`
  String get nazvanie {
    return Intl.message(
      'Название',
      name: 'nazvanie',
      desc: '',
      args: [],
    );
  }

  /// `Описание`
  String get opisanie {
    return Intl.message(
      'Описание',
      name: 'opisanie',
      desc: '',
      args: [],
    );
  }

  /// `Контакты организации`
  String get kontakty_org {
    return Intl.message(
      'Контакты организации',
      name: 'kontakty_org',
      desc: '',
      args: [],
    );
  }

  /// `Номер телефона`
  String get number_tel {
    return Intl.message(
      'Номер телефона',
      name: 'number_tel',
      desc: '',
      args: [],
    );
  }

  /// `Ссылка на сайт`
  String get link_to_web {
    return Intl.message(
      'Ссылка на сайт',
      name: 'link_to_web',
      desc: '',
      args: [],
    );
  }

  /// `Ссылка на instagram`
  String get link_to_insta {
    return Intl.message(
      'Ссылка на instagram',
      name: 'link_to_insta',
      desc: '',
      args: [],
    );
  }

  /// `Ссылка на telegram`
  String get link_to_telegram {
    return Intl.message(
      'Ссылка на telegram',
      name: 'link_to_telegram',
      desc: '',
      args: [],
    );
  }

  /// `Реквизиты организации`
  String get requisites_org {
    return Intl.message(
      'Реквизиты организации',
      name: 'requisites_org',
      desc: '',
      args: [],
    );
  }

  /// `Юридический адрес`
  String get Uridic_adress {
    return Intl.message(
      'Юридический адрес',
      name: 'Uridic_adress',
      desc: '',
      args: [],
    );
  }

  /// `БИН`
  String get Bin {
    return Intl.message(
      'БИН',
      name: 'Bin',
      desc: '',
      args: [],
    );
  }

  /// `ИИК`
  String get iik {
    return Intl.message(
      'ИИК',
      name: 'iik',
      desc: '',
      args: [],
    );
  }

  /// `Реквизиты будут использованы\nтолько для перевода денег на ваш счет\nполученые за мероприятие`
  String get requisit_info_text {
    return Intl.message(
      'Реквизиты будут использованы\nтолько для перевода денег на ваш счет\nполученые за мероприятие',
      name: 'requisit_info_text',
      desc: '',
      args: [],
    );
  }

  /// `Фото организации`
  String get foto_org {
    return Intl.message(
      'Фото организации',
      name: 'foto_org',
      desc: '',
      args: [],
    );
  }

  /// `Создать`
  String get create {
    return Intl.message(
      'Создать',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Форма организации`
  String get form_org {
    return Intl.message(
      'Форма организации',
      name: 'form_org',
      desc: '',
      args: [],
    );
  }

  /// `Юридическое лицо`
  String get yur_lico {
    return Intl.message(
      'Юридическое лицо',
      name: 'yur_lico',
      desc: '',
      args: [],
    );
  }

  /// `Доступно онлайн оплата для посещения ваших мероприятий`
  String get dostupno_online {
    return Intl.message(
      'Доступно онлайн оплата для посещения ваших мероприятий',
      name: 'dostupno_online',
      desc: '',
      args: [],
    );
  }

  /// `Физическое лицо`
  String get fiz_lico {
    return Intl.message(
      'Физическое лицо',
      name: 'fiz_lico',
      desc: '',
      args: [],
    );
  }

  /// `Получать оплату за посещение ваших мероприятий сможете наличными или kaspi переводом на месте`
  String get poluchat_oplatu {
    return Intl.message(
      'Получать оплату за посещение ваших мероприятий сможете наличными или kaspi переводом на месте',
      name: 'poluchat_oplatu',
      desc: '',
      args: [],
    );
  }

  /// `Мероприятия`
  String get meropriatiya {
    return Intl.message(
      'Мероприятия',
      name: 'meropriatiya',
      desc: '',
      args: [],
    );
  }

  /// `Информация`
  String get information {
    return Intl.message(
      'Информация',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `Вы еще не создали мероприятие`
  String get empty_evemt {
    return Intl.message(
      'Вы еще не создали мероприятие',
      name: 'empty_evemt',
      desc: '',
      args: [],
    );
  }

  /// `Подписаться`
  String get subscribe {
    return Intl.message(
      'Подписаться',
      name: 'subscribe',
      desc: '',
      args: [],
    );
  }

  /// `Создание мероприятия`
  String get create_event {
    return Intl.message(
      'Создание мероприятия',
      name: 'create_event',
      desc: '',
      args: [],
    );
  }

  /// `Организатор`
  String get organizator {
    return Intl.message(
      'Организатор',
      name: 'organizator',
      desc: '',
      args: [],
    );
  }

  /// `Организация`
  String get organization {
    return Intl.message(
      'Организация',
      name: 'organization',
      desc: '',
      args: [],
    );
  }

  /// `Выберите организацию`
  String get choose_org {
    return Intl.message(
      'Выберите организацию',
      name: 'choose_org',
      desc: '',
      args: [],
    );
  }

  /// `Категория мероприятия`
  String get category_event {
    return Intl.message(
      'Категория мероприятия',
      name: 'category_event',
      desc: '',
      args: [],
    );
  }

  /// `Добавить еще категорию`
  String get add_category {
    return Intl.message(
      'Добавить еще категорию',
      name: 'add_category',
      desc: '',
      args: [],
    );
  }

  /// `Детали мероприятия`
  String get event_details {
    return Intl.message(
      'Детали мероприятия',
      name: 'event_details',
      desc: '',
      args: [],
    );
  }

  /// `Язык проведения`
  String get lang_event {
    return Intl.message(
      'Язык проведения',
      name: 'lang_event',
      desc: '',
      args: [],
    );
  }

  /// `Формат`
  String get format {
    return Intl.message(
      'Формат',
      name: 'format',
      desc: '',
      args: [],
    );
  }

  /// `Тип`
  String get type {
    return Intl.message(
      'Тип',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Тип мероприятия`
  String get type_event {
    return Intl.message(
      'Тип мероприятия',
      name: 'type_event',
      desc: '',
      args: [],
    );
  }

  /// `Открытое мероприятие`
  String get open_event {
    return Intl.message(
      'Открытое мероприятие',
      name: 'open_event',
      desc: '',
      args: [],
    );
  }

  /// `Закрытое мероприятие`
  String get closed_event {
    return Intl.message(
      'Закрытое мероприятие',
      name: 'closed_event',
      desc: '',
      args: [],
    );
  }

  /// `Стоимость и дата мероприятия`
  String get date_fee_event {
    return Intl.message(
      'Стоимость и дата мероприятия',
      name: 'date_fee_event',
      desc: '',
      args: [],
    );
  }

  /// `Дата начала`
  String get date_start {
    return Intl.message(
      'Дата начала',
      name: 'date_start',
      desc: '',
      args: [],
    );
  }

  /// `Дата завершения`
  String get date_end {
    return Intl.message(
      'Дата завершения',
      name: 'date_end',
      desc: '',
      args: [],
    );
  }

  /// `Добавить еще дату`
  String get add_date {
    return Intl.message(
      'Добавить еще дату',
      name: 'add_date',
      desc: '',
      args: [],
    );
  }

  /// `Количество категорий\nбилетов`
  String get quantity_cat_tickets {
    return Intl.message(
      'Количество категорий\nбилетов',
      name: 'quantity_cat_tickets',
      desc: '',
      args: [],
    );
  }

  /// `В случае более одного типа билета, необходимо указать наименование билета`
  String get v_sluchae {
    return Intl.message(
      'В случае более одного типа билета, необходимо указать наименование билета',
      name: 'v_sluchae',
      desc: '',
      args: [],
    );
  }

  /// `Без возврата`
  String get bez_vozvrata {
    return Intl.message(
      'Без возврата',
      name: 'bez_vozvrata',
      desc: '',
      args: [],
    );
  }

  /// `С возвратом`
  String get s_vozvratom {
    return Intl.message(
      'С возвратом',
      name: 's_vozvratom',
      desc: '',
      args: [],
    );
  }

  /// `Возврат 75% при отмене за 7 дней до начала мероприятия`
  String get vozvrat75 {
    return Intl.message(
      'Возврат 75% при отмене за 7 дней до начала мероприятия',
      name: 'vozvrat75',
      desc: '',
      args: [],
    );
  }

  /// `Название билета`
  String get ticket_name {
    return Intl.message(
      'Название билета',
      name: 'ticket_name',
      desc: '',
      args: [],
    );
  }

  /// `Цена билета, ₸`
  String get ticket_cost {
    return Intl.message(
      'Цена билета, ₸',
      name: 'ticket_cost',
      desc: '',
      args: [],
    );
  }

  /// `Комиссия ticketizi 10% с каждого билета`
  String get commisstion10 {
    return Intl.message(
      'Комиссия ticketizi 10% с каждого билета',
      name: 'commisstion10',
      desc: '',
      args: [],
    );
  }

  /// `Бесплатно`
  String get free {
    return Intl.message(
      'Бесплатно',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `Количество билетов`
  String get ticket_quantity {
    return Intl.message(
      'Количество билетов',
      name: 'ticket_quantity',
      desc: '',
      args: [],
    );
  }

  /// `Без ограничений`
  String get no_limit {
    return Intl.message(
      'Без ограничений',
      name: 'no_limit',
      desc: '',
      args: [],
    );
  }

  /// `Добавить промокод`
  String get add_promo {
    return Intl.message(
      'Добавить промокод',
      name: 'add_promo',
      desc: '',
      args: [],
    );
  }

  /// `Адрес мероприятия`
  String get address_event {
    return Intl.message(
      'Адрес мероприятия',
      name: 'address_event',
      desc: '',
      args: [],
    );
  }

  /// `Город`
  String get city {
    return Intl.message(
      'Город',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Адрес`
  String get address {
    return Intl.message(
      'Адрес',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Указать на карте`
  String get show_on_map {
    return Intl.message(
      'Указать на карте',
      name: 'show_on_map',
      desc: '',
      args: [],
    );
  }

  /// `Контакты мероприятия`
  String get contacts_event {
    return Intl.message(
      'Контакты мероприятия',
      name: 'contacts_event',
      desc: '',
      args: [],
    );
  }

  /// `Изображения мероприятия`
  String get images_event {
    return Intl.message(
      'Изображения мероприятия',
      name: 'images_event',
      desc: '',
      args: [],
    );
  }

  /// `Добавьте от 1 до 10 изображений`
  String get add_1to10 {
    return Intl.message(
      'Добавьте от 1 до 10 изображений',
      name: 'add_1to10',
      desc: '',
      args: [],
    );
  }

  /// `Опубликовать`
  String get publish {
    return Intl.message(
      'Опубликовать',
      name: 'publish',
      desc: '',
      args: [],
    );
  }

  /// `Предпросмотр`
  String get preview {
    return Intl.message(
      'Предпросмотр',
      name: 'preview',
      desc: '',
      args: [],
    );
  }

  /// `Категория`
  String get category {
    return Intl.message(
      'Категория',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Добавьте название билета`
  String get to_add_another_name {
    return Intl.message(
      'Добавьте название билета',
      name: 'to_add_another_name',
      desc: '',
      args: [],
    );
  }

  /// `Добавить другое название`
  String get add_another_name {
    return Intl.message(
      'Добавить другое название',
      name: 'add_another_name',
      desc: '',
      args: [],
    );
  }

  /// `Добавить`
  String get add {
    return Intl.message(
      'Добавить',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Отмена`
  String get cancel {
    return Intl.message(
      'Отмена',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Промокод`
  String get promo {
    return Intl.message(
      'Промокод',
      name: 'promo',
      desc: '',
      args: [],
    );
  }

  /// `Процент скидки`
  String get percentage_skidka {
    return Intl.message(
      'Процент скидки',
      name: 'percentage_skidka',
      desc: '',
      args: [],
    );
  }

  /// `Удалить промокод`
  String get remove_promo {
    return Intl.message(
      'Удалить промокод',
      name: 'remove_promo',
      desc: '',
      args: [],
    );
  }

  /// `Дата`
  String get date {
    return Intl.message(
      'Дата',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Продолжительность`
  String get duration {
    return Intl.message(
      'Продолжительность',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Язык`
  String get language {
    return Intl.message(
      'Язык',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `минут`
  String get minutes {
    return Intl.message(
      'минут',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `г. `
  String get city_short {
    return Intl.message(
      'г. ',
      name: 'city_short',
      desc: '',
      args: [],
    );
  }

  /// `ул. `
  String get street_short {
    return Intl.message(
      'ул. ',
      name: 'street_short',
      desc: '',
      args: [],
    );
  }

  /// `Расписание`
  String get schedule {
    return Intl.message(
      'Расписание',
      name: 'schedule',
      desc: '',
      args: [],
    );
  }

  /// `Описание`
  String get description {
    return Intl.message(
      'Описание',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Контакты`
  String get contacts {
    return Intl.message(
      'Контакты',
      name: 'contacts',
      desc: '',
      args: [],
    );
  }

  /// `Карта`
  String get map {
    return Intl.message(
      'Карта',
      name: 'map',
      desc: '',
      args: [],
    );
  }

  /// `Стоимость`
  String get price {
    return Intl.message(
      'Стоимость',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `(оплата на месте)`
  String get oplata_na_meste {
    return Intl.message(
      '(оплата на месте)',
      name: 'oplata_na_meste',
      desc: '',
      args: [],
    );
  }

  /// `Купить билет`
  String get buy_ticket {
    return Intl.message(
      'Купить билет',
      name: 'buy_ticket',
      desc: '',
      args: [],
    );
  }

  /// `Оформление билета`
  String get oformlenie_bileta {
    return Intl.message(
      'Оформление билета',
      name: 'oformlenie_bileta',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get name {
    return Intl.message(
      'Имя',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Осталось`
  String get ostalos {
    return Intl.message(
      'Осталось',
      name: 'ostalos',
      desc: '',
      args: [],
    );
  }

  /// `билета`
  String get bilets {
    return Intl.message(
      'билета',
      name: 'bilets',
      desc: '',
      args: [],
    );
  }

  /// `Применить`
  String get primenit {
    return Intl.message(
      'Применить',
      name: 'primenit',
      desc: '',
      args: [],
    );
  }

  /// `от`
  String get from {
    return Intl.message(
      'от',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `Стоимость билетов`
  String get price_of_tickets {
    return Intl.message(
      'Стоимость билетов',
      name: 'price_of_tickets',
      desc: '',
      args: [],
    );
  }

  /// `Билет`
  String get ticket {
    return Intl.message(
      'Билет',
      name: 'ticket',
      desc: '',
      args: [],
    );
  }

  /// `шт`
  String get sht {
    return Intl.message(
      'шт',
      name: 'sht',
      desc: '',
      args: [],
    );
  }

  /// `К оплате`
  String get k_oplate {
    return Intl.message(
      'К оплате',
      name: 'k_oplate',
      desc: '',
      args: [],
    );
  }

  /// `Промокод не действительный`
  String get promo_error {
    return Intl.message(
      'Промокод не действительный',
      name: 'promo_error',
      desc: '',
      args: [],
    );
  }

  /// `Скидка по промокоду`
  String get skida_po_promo {
    return Intl.message(
      'Скидка по промокоду',
      name: 'skida_po_promo',
      desc: '',
      args: [],
    );
  }

  /// `Оплата билета`
  String get oplata_bileta {
    return Intl.message(
      'Оплата билета',
      name: 'oplata_bileta',
      desc: '',
      args: [],
    );
  }

  /// `Номер заказа`
  String get nomer_zakaza {
    return Intl.message(
      'Номер заказа',
      name: 'nomer_zakaza',
      desc: '',
      args: [],
    );
  }

  /// `Имя на карте`
  String get card_name {
    return Intl.message(
      'Имя на карте',
      name: 'card_name',
      desc: '',
      args: [],
    );
  }

  /// `Номер карты`
  String get card_number {
    return Intl.message(
      'Номер карты',
      name: 'card_number',
      desc: '',
      args: [],
    );
  }

  /// `ММ/ГГ`
  String get mmgg {
    return Intl.message(
      'ММ/ГГ',
      name: 'mmgg',
      desc: '',
      args: [],
    );
  }

  /// `Оплатить`
  String get oplatit {
    return Intl.message(
      'Оплатить',
      name: 'oplatit',
      desc: '',
      args: [],
    );
  }

  /// `Мои билеты`
  String get my_tickets {
    return Intl.message(
      'Мои билеты',
      name: 'my_tickets',
      desc: '',
      args: [],
    );
  }

  /// `Активные`
  String get active {
    return Intl.message(
      'Активные',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `История`
  String get history {
    return Intl.message(
      'История',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Оплачен`
  String get oplachen {
    return Intl.message(
      'Оплачен',
      name: 'oplachen',
      desc: '',
      args: [],
    );
  }

  /// `Ожидает оплаты`
  String get ojidaet_oplaty {
    return Intl.message(
      'Ожидает оплаты',
      name: 'ojidaet_oplaty',
      desc: '',
      args: [],
    );
  }

  /// `Не оплатил`
  String get ne_oplatil {
    return Intl.message(
      'Не оплатил',
      name: 'ne_oplatil',
      desc: '',
      args: [],
    );
  }

  /// `Возвращен`
  String get vozvrashen {
    return Intl.message(
      'Возвращен',
      name: 'vozvrashen',
      desc: '',
      args: [],
    );
  }

  /// `Детали заказа`
  String get order_details {
    return Intl.message(
      'Детали заказа',
      name: 'order_details',
      desc: '',
      args: [],
    );
  }

  /// `Дата заказа`
  String get order_date {
    return Intl.message(
      'Дата заказа',
      name: 'order_date',
      desc: '',
      args: [],
    );
  }

  /// `Стоимость заказа`
  String get order_price {
    return Intl.message(
      'Стоимость заказа',
      name: 'order_price',
      desc: '',
      args: [],
    );
  }

  /// `Статус оплаты`
  String get payment_status {
    return Intl.message(
      'Статус оплаты',
      name: 'payment_status',
      desc: '',
      args: [],
    );
  }

  /// `Покажите QR-код сотрудникам мероприятия`
  String get show_qr_to_admins {
    return Intl.message(
      'Покажите QR-код сотрудникам мероприятия',
      name: 'show_qr_to_admins',
      desc: '',
      args: [],
    );
  }

  /// `№ билета`
  String get ticket_number {
    return Intl.message(
      '№ билета',
      name: 'ticket_number',
      desc: '',
      args: [],
    );
  }

  /// `Тип билета`
  String get ticket_type {
    return Intl.message(
      'Тип билета',
      name: 'ticket_type',
      desc: '',
      args: [],
    );
  }

  /// `Поделиться билетом`
  String get ticket_share {
    return Intl.message(
      'Поделиться билетом',
      name: 'ticket_share',
      desc: '',
      args: [],
    );
  }

  /// `Вернуть билет`
  String get ticket_retrieve {
    return Intl.message(
      'Вернуть билет',
      name: 'ticket_retrieve',
      desc: '',
      args: [],
    );
  }

  /// `Сканировать QR`
  String get scan_qr {
    return Intl.message(
      'Сканировать QR',
      name: 'scan_qr',
      desc: '',
      args: [],
    );
  }

  /// `Билет не использован`
  String get qr_not_used {
    return Intl.message(
      'Билет не использован',
      name: 'qr_not_used',
      desc: '',
      args: [],
    );
  }

  /// `Билет использован`
  String get qr_used {
    return Intl.message(
      'Билет использован',
      name: 'qr_used',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка QR`
  String get qr_error {
    return Intl.message(
      'Ошибка QR',
      name: 'qr_error',
      desc: '',
      args: [],
    );
  }

  /// `Информация о мероприятии`
  String get event_info {
    return Intl.message(
      'Информация о мероприятии',
      name: 'event_info',
      desc: '',
      args: [],
    );
  }

  /// `Аналитика`
  String get analytics {
    return Intl.message(
      'Аналитика',
      name: 'analytics',
      desc: '',
      args: [],
    );
  }

  /// `Доход`
  String get income {
    return Intl.message(
      'Доход',
      name: 'income',
      desc: '',
      args: [],
    );
  }

  /// `Количество проданных билетов`
  String get quantity_ticket_sale {
    return Intl.message(
      'Количество проданных билетов',
      name: 'quantity_ticket_sale',
      desc: '',
      args: [],
    );
  }

  /// `Количество пришедших людей`
  String get quantity_came_people {
    return Intl.message(
      'Количество пришедших людей',
      name: 'quantity_came_people',
      desc: '',
      args: [],
    );
  }

  /// `Добавили в избранное`
  String get added_favourites {
    return Intl.message(
      'Добавили в избранное',
      name: 'added_favourites',
      desc: '',
      args: [],
    );
  }

  /// `Способ оплаты`
  String get payment_type {
    return Intl.message(
      'Способ оплаты',
      name: 'payment_type',
      desc: '',
      args: [],
    );
  }

  /// `Места`
  String get places {
    return Intl.message(
      'Места',
      name: 'places',
      desc: '',
      args: [],
    );
  }

  /// `Избранное`
  String get favorites {
    return Intl.message(
      'Избранное',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Избранных мероприятий еще нет`
  String get favorite_event_empty {
    return Intl.message(
      'Избранных мероприятий еще нет',
      name: 'favorite_event_empty',
      desc: '',
      args: [],
    );
  }

  /// `Избранных мест еще нет`
  String get favorites_place_empty {
    return Intl.message(
      'Избранных мест еще нет',
      name: 'favorites_place_empty',
      desc: '',
      args: [],
    );
  }

  /// `Способ бронирования билета`
  String get sposob_bron_bileta {
    return Intl.message(
      'Способ бронирования билета',
      name: 'sposob_bron_bileta',
      desc: '',
      args: [],
    );
  }

  /// `В ticketizi`
  String get v_ticketizi {
    return Intl.message(
      'В ticketizi',
      name: 'v_ticketizi',
      desc: '',
      args: [],
    );
  }

  /// `Через сторонний сайт`
  String get from_another_site {
    return Intl.message(
      'Через сторонний сайт',
      name: 'from_another_site',
      desc: '',
      args: [],
    );
  }

  /// `Ссылка на сторонний сайт`
  String get link_to_another_site {
    return Intl.message(
      'Ссылка на сторонний сайт',
      name: 'link_to_another_site',
      desc: '',
      args: [],
    );
  }

  /// `Описание типа билета`
  String get opisanie_tipa_bileta {
    return Intl.message(
      'Описание типа билета',
      name: 'opisanie_tipa_bileta',
      desc: '',
      args: [],
    );
  }

  /// `билет забронирован`
  String get bilet_zabronirov {
    return Intl.message(
      'билет забронирован',
      name: 'bilet_zabronirov',
      desc: '',
      args: [],
    );
  }

  /// `билета на эту дату не осталось`
  String get bilet_date_empty {
    return Intl.message(
      'билета на эту дату не осталось',
      name: 'bilet_date_empty',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка`
  String get error {
    return Intl.message(
      'Ошибка',
      name: 'error',
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
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
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
