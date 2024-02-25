import 'package:flutter/material.dart';
import 'package:hummingbird/screens/homepage/home.dart';
import 'package:hummingbird/screens/hummingpage/humminghome.dart';
import 'package:hummingbird/screens/mystorypage/mystoryhome.dart';
import 'package:hummingbird/screens/settingpage/setting.dart';

enum TabItem { home, humming, mystory, setting }

const Map<TabItem, int> tabIdx = {
  TabItem.home: 0,
  TabItem.humming: 1,
  TabItem.mystory: 2,
  TabItem.setting: 3,
};

Map<TabItem, Widget> tabScreen = {
  TabItem.home: const MainHomePage(),
  TabItem.humming: const HummingHomePage(),
  TabItem.mystory: const MyStoryHomePage(),
  TabItem.setting: const SettingPage(),
};
