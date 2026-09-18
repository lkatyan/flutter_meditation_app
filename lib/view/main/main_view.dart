import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/common/color_extension.dart';
import 'package:flutter_meditation_app/common_widget/button.dart';
import 'package:flutter_meditation_app/view/home/blank_view.dart';
import '../home/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int selectTab = 0;
  final PageStorageBucket pageBucket = PageStorageBucket(); 
  Widget currentTab = const HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: PageStorage(bucket: pageBucket, child: currentTab),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: TColor.primaryColor,
                ),
                borderRadius: BorderRadius.circular(35),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,)
                ]),
            child: Icon(Icons.search,color: TColor.white, size: 35, ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: TColor.white,
        child: Container(
        decoration: BoxDecoration(color: TColor.white, boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, -2))
        ]),
        height: kToolbarHeight,
        child: 
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button(
                  icon: "assets/img/home.png",
                  selectIcon: "assets/img/home_select.png",
                  isActive: selectTab == 0,
                  onTap: () {
                    selectTab = 0;
                    currentTab = const HomeView();
                    if (mounted) {
                      setState(() {});
                    }
                  }),
                Button(
                  icon: "assets/img/activity.png",
                  selectIcon: "assets/img/activity_select.png",
                  isActive: selectTab == 1,
                  onTap: () {
                    selectTab = 1;
                    currentTab = const BlankView();//SelectView();
                    if (mounted) {
                      setState(() {});
                    }
                  }),
                const  SizedBox(width: 40,),
                Button(
                  icon: "assets/img/camera.png",
                  selectIcon: "assets/img/camera_select.png",
                  isActive: selectTab == 2,
                  onTap: () {
                    selectTab = 2;
                    currentTab = const BlankView();//ProgressView();
                    if (mounted) {
                      setState(() {});
                    }
                  }),
                Button(
                  icon: "assets/img/profile.png",
                  selectIcon: "assets/img/profile_select.png",
                  isActive: selectTab == 3,
                  onTap: () {
                    selectTab = 3;
                    currentTab = const BlankView();//ProfileView();
                    if (mounted) {
                      setState(() {});
                    }
                  })
              ],
            ),
          )
        )
      ),
    );
  }
}