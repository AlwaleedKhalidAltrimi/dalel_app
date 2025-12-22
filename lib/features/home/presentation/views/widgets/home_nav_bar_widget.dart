import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../cart/presentaion/views/cart_view.dart';
import '../../../../profile/presentation/views/profile_view.dart';
import '../../../../search/presentaion/views/search_view.dart';
import '../home_view.dart';

PersistentTabController _controller = PersistentTabController();

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      controller: _controller,
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.primaryColor,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeView(),
    const CartView(),
    const SearchView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(AppImages.imagesHomeIconActive),
      inactiveIcon: SvgPicture.asset(AppImages.imagesHomeIcon),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(AppImages.imagesShoppingCartActive),
      inactiveIcon: SvgPicture.asset(AppImages.imagesShoppingCart),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(AppImages.imagesSearchActive),
      inactiveIcon: SvgPicture.asset(AppImages.imagesSearch),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(AppImages.imagesPersonActive),
      inactiveIcon: SvgPicture.asset(AppImages.imagesPerson),
    ),
  ];
}
