import 'package:flutter/material.dart';
import 'package:hummingbird/screens/homepage/home.dart';
import 'package:hummingbird/screens/hummingpage/humminghome.dart';
import 'package:hummingbird/screens/mystorypage/mystoryhome.dart';

enum TabItem { home, humming, mystory }

const Map<TabItem, int> tabIdx = {
  TabItem.home: 0,
  TabItem.humming: 1,
  TabItem.mystory: 2,
};

Map<TabItem, Widget> tabScreen = {
  TabItem.home: const MainHomePage(),
  TabItem.humming: const HummingHomPage(),
  TabItem.mystory: const MyStoryHomePage(),
};
