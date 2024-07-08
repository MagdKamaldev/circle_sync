import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/widgets/logo.dart';
import 'package:circle_sync/features/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Logo(),
          centerTitle: true,
          toolbarHeight: size.height * 0.14,
        ),
        drawer: const Drawer(),
        body: context
            .read<HomeCubit>()
            .screens[context.read<HomeCubit>().currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.feed),
              label: 'Posts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            context.read<HomeCubit>().changeScreen(index);
          },
          currentIndex: context.read<HomeCubit>().currentIndex,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          backgroundColor: ColorManager.primary,
        ),
      ),
    );
  }
}
