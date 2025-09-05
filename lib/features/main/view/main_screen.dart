import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_haven/features/cart/view/cart_screen.dart';
import 'package:home_haven/features/home/view/home_screen.dart';
import 'package:home_haven/features/main/cubit/navbar_cubit.dart';
import 'package:home_haven/features/profile/view/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final List<Widget> _screens = const [
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, NavbarState>(
      builder: (context, state) {
        final navBar = context.read<NavbarCubit>();
        return Scaffold(
          body: _screens[state.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.currentIndex,
            onTap: navBar.updateIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                activeIcon: Icon(Icons.shopping_cart),
                label: 'My Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
