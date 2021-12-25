import 'package:breakpoint/breakpoint.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:web_profile/commons/widgets.dart';
import 'package:web_profile/providers/app_provider.dart';
import 'package:web_profile/widgets/nav_link_widget.dart';
import 'package:web_profile/widgets/photo_card_widget.dart';
import 'package:web_profile/widgets/skill_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: [
          _navbar(context),
          _home(context),
        ],
      ),
      floatingActionButton: Consumer<AppProvider>(
        builder: (context, appState, _) => FloatingActionButton(
          onPressed: () => appState.toggleTheme(),
          child: appState.isLightTheme
              ? const Icon(Icons.dark_mode)
              : const Icon(Icons.light_mode),
        ),
      ),
    );
  }

  Widget _navbar(BuildContext context) {
    final breakpoint = Breakpoint.fromMediaQuery(context);

    return SliverPadding(
      padding: EdgeInsets.all(breakpoint.gutters),
      sliver: SliverToBoxAdapter(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(size: 30.r),
            const Spacer(),
            const NavLinkWidget(
              label: "Home",
              isActive: true,
              icon: Icon(Icons.home_outlined),
            ),
            SizedBox(width: 4.w),
            const NavLinkWidget(
              label: "About",
              icon: Icon(Icons.info_outline),
            ),
            SizedBox(width: 4.w),
            const NavLinkWidget(
              label: "Portfolio",
              icon: Icon(Icons.phonelink),
            ),
            SizedBox(width: 4.w),
            const NavLinkWidget(
              label: "Contact",
              icon: Icon(Icons.contact_page_outlined),
            ),
          ],
        ),
      ),
    );
  }

  Widget _home(BuildContext context) {
    final breakpoint = Breakpoint.fromMediaQuery(context);

    return SliverPadding(
      padding: EdgeInsets.all(breakpoint.gutters * 2),
      sliver: SliverToBoxAdapter(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: SizedBox(
                height: 450.r,
                child: Swiper(
                  itemCount: 2,
                  itemBuilder: (context, i) =>
                      PhotoCardWidget(image: "assets/me_${i + 1}.jpg"),
                  pagination: const SwiperPagination(),
                  autoplay: true,
                  autoplayDelay: 5000,
                  autoplayDisableOnInteraction: true,
                  itemWidth: 400.r,
                  itemHeight: 400.r,
                  layout: SwiperLayout.STACK,
                ),
              ),
            ),
            SizedBox(width: 8.w),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).primaryColor.withOpacity(0.75),
                    child: Padding(
                      padding: Widgets.insets16and8,
                      child: Text(
                        "Hi there! Welcome aboard. Introduce me,",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.r),
                  Text(
                    "Saddam Sinatrya Jalu Mukti",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(height: 8.r),
                  Text(
                    "A passionate and rational developer who wants to learn and evolve with a team. Experienced with the latest cutting-edge development tools and tech stack.",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(height: 24.r),
                  Text("Skills", style: Theme.of(context).textTheme.subtitle1),
                  SizedBox(height: 8.r),
                  Column(
                    children: [
                      const SkillWidget(
                        value: 0.8,
                        label: "Fullstack Web Developer",
                      ),
                      SizedBox(height: 16.r),
                      const SkillWidget(
                        value: 0.6,
                        label: "Flutter Developer",
                      ),
                      SizedBox(height: 16.r),
                      const SkillWidget(
                        value: 0.3,
                        label: "Data Science",
                      ),
                    ],
                  ),
                  SizedBox(height: 36.r),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.download_rounded),
                    label: const Text("Download CV"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
