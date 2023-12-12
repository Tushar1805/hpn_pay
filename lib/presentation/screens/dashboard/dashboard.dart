// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final PageController _pageController = PageController(initialPage: 0);
//   int _currentPageIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Drawer Demo'),
//       ),
//       drawer: Drawer(
//         width: 300,
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Drawer Header',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               title: Text('Page 1'),
//               tileColor: _currentPageIndex == 0 ? Colors.red : null,
//               onTap: () {
//                 setState(() {
//                   _currentPageIndex = 0;
//                 });
//                 _pageController.jumpToPage(0);
//                 Navigator.pop(context); // Close the drawer
//               },
//             ),
//             ListTile(
//               title: Text('Page 2'),
//               tileColor: _currentPageIndex == 1 ? Colors.green : null,
//               onTap: () {
//                 setState(() {
//                   _currentPageIndex = 1;
//                 });
//                 _pageController.jumpToPage(1);
//                 Navigator.pop(context); // Close the drawer
//               },
//             ),
//           ],
//         ),
//       ),
//       body: PageView(
//         controller: _pageController,
//         physics: NeverScrollableScrollPhysics(),
//         children: [
//           Page1(),
//           Page2(),
//         ],
//       ),
//     );
//   }
// }
//
// class Page1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Page 1 Content'),
//     );
//   }
// }
//
// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Page 2 Content'),
//     );
//   }
// }