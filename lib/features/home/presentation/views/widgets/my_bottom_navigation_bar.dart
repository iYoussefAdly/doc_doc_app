import 'package:flutter/material.dart';
import 'package:doc_doc_app/core/assets_data.dart';

class MyBottomNavigationBarr extends StatefulWidget {
  const MyBottomNavigationBarr({super.key});

  @override
  State<MyBottomNavigationBarr> createState() => _MyBottomNavigationBarrState();
}

class _MyBottomNavigationBarrState extends State<MyBottomNavigationBarr> {
  int currentIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildNavItem(
                  icon: Image.asset(
                    AssetsData.home,
                    color: currentIndex == 0 ? const Color(0xff2377F5) : null,
                  ),
                  index: 0,
                ),
                buildNavItem(
                  icon: Image.asset(
                    AssetsData.message,
                    color: currentIndex == 1 ? const Color(0xff2377F5) : null,
                  ),
                  index: 1,
                ),
                SizedBox(width: 70),
                buildNavItem(
                  icon: Image.asset(
                    AssetsData.calender,
                    height: 24,
                    width: 24,
                    color: currentIndex == 3 ? const Color(0xff2377F5) : null,
                  ),
                  index: 3,
                ),
                buildNavItem(
                  icon: Image.asset(AssetsData.profile, height: 24, width: 24),
                  index: 4,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            child: GestureDetector(
              onTap: () => onItemTapped(2),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: const Color(0xff2377F5),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff2377F5).withOpacity(0.4),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Icon(Icons.search, color: Colors.white, size: 36),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavItem({required Widget icon, required int index}) {
    return InkWell(
      onTap: () => onItemTapped(index),
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: icon,
      ),
    );
  }
}
