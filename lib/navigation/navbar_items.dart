import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<BottomNavigationBarItem> navbarItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset('assets/icons/home_sel.svg'),
    icon: SvgPicture.asset('assets/icons/home.svg'),
    label: 'Home',
    backgroundColor: const Color(0xFF8F8F8F),
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset('assets/icons/hummingbird_sel.svg'),
    icon: SvgPicture.asset('assets/icons/hummingbird.svg'),
    label: 'Humming',
    backgroundColor: const Color(0xFF8F8F8F),
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset('assets/icons/paper_sel.svg'),
    icon: SvgPicture.asset('assets/icons/paper.svg'),
    label: 'My Story',
    backgroundColor: const Color(0xFF8F8F8F),
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset('assets/icons/setting_sel.svg'),
    icon: SvgPicture.asset('assets/icons/setting.svg'),
    label: 'Settings',
    backgroundColor: const Color(0xFF8F8F8F),
  ),
];
