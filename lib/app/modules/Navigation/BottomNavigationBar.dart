import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../controllers/page_index_controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final PageIndexController PageC;
  const CustomBottomNavigationBar({
    Key? key,
    // ignore: non_constant_identifier_names
    required this.PageC,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      style: TabStyle.react,
      items: const [
        TabItem(icon: Icons.home, title: "Beranda"),
        TabItem(icon: Icons.auto_awesome, title: "Atraksi"),
        TabItem(icon: Icons.map_sharp, title: "Peta"),
        TabItem(icon: Icons.calendar_today, title: "Kalender"),
        TabItem(icon: Icons.notification_add, title: "Notifikasi"),
      ],
      initialActiveIndex: PageC.pageIndex.value,
      onTap: (int i) => PageC.changeaPage(i),
    );
  }
}

// class CustomNavigationBar extends StatelessWidget {
//   final PageIndexController PageC;
//   const CustomNavigationBar({
//     Key? key,
//     // ignore: non_constant_identifier_names
//     required this.PageC,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GNav(
//       activeColor: Colors.blue,
//       tabs: [
//         GButton(
//           icon: Icons.home,
//           text: "Beranda",
//         ),
//         GButton(
//           icon: Icons.auto_awesome,
//           text: "Atraksi",
//         ),
//         GButton(
//           icon: Icons.map_sharp,
//           text: "Peta",
//         ),
//         GButton(
//           icon: Icons.calendar_month,
//           text: "Kalender",
//         ),
//         // GButton(
//         //   icon: Icons.notification_add,
//         //   text: "Notifikasi",
//         // ),
//       ],
//       selectedIndex: PageC.pageIndex.value,
//       // onTabChange: (int i) => PageC.changeaPage(i),
//       onTabChange: (int i) {
//         SetState(() {
//           PageC.changeaPage(i);
//         });
//       },
//     );
//   }
// }
