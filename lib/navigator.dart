import 'package:hummingbird/screens/homepage/home.dart';
import 'package:hummingbird/screens/hummingpage/humminghome.dart';
import 'package:hummingbird/screens/mystorypage/mystoryhome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int _selectedIndex = 0;
  final _navigatorKeyList =
      List.generate(3, (index) => GlobalKey<NavigatorState>());

  final List<Widget> _widgetOptions = <Widget>[
    const MainHomePage(),
    const HummingHomePage(),
    const MyStoryHomePage(),
  ];

  void _selectTab(int tabIndex) {
    if (tabIndex == _selectedIndex) {
      _navigatorKeyList[tabIndex]!
          .currentState!
          .popUntil((route) => route.isFirst);
    } else {
      setState(() => _selectedIndex = tabIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    //final ThemeData theme = Theme.of(context); //뭔지 찾아봐
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        if (didPop) {
          await _navigatorKeyList[_selectedIndex].currentState!.maybePop();
        }
      },
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _widgetOptions.map((page) {
            int index = _widgetOptions.indexOf(page);
            return Navigator(
              key: _navigatorKeyList[index],
              onGenerateRoute: (_) {
                return MaterialPageRoute(builder: (context) => page);
              },
            );
          }).toList(),
        ),
        
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
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
              activeIcon:
                  Badge(child: SvgPicture.asset('assets/icons/paper_sel.svg')),
              icon: Badge(child: SvgPicture.asset('assets/icons/paper.svg')),
              label: 'My Story',
              backgroundColor: const Color(0xFF8F8F8F),
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset('assets/icons/setting_sel.svg'),
              icon: SvgPicture.asset('assets/icons/setting.svg'),
              label: 'Settings',
              backgroundColor: const Color(0xFF8F8F8F),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFF5D45F0),
          onTap: (index) => setState(() {
            _selectedIndex = index;
          }),
        ),
      ),
    );
  }
}
