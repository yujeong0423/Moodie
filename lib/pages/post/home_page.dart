// import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:get/get.dart';
// import 'package:moodie1/pages/post/detail_page.dart';
//
// class HomePage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Swiper(
//         itemCount: 10,
//         itemBuilder: (BuildContext context, int index){
//           return RoundedBeautifulCard(
//             index: index,
//           );
//         },
//         viewportFraction: 0.8,
//         scale: 0.9,
//         layout: SwiperLayout.TINDER,
//         itemHeight: 400.0,
//         itemWidth: 300.0,
//         control: SwiperControl(),
//       )
//     );
//   }
// }
//
//
// // @override
// // Widget build(BuildContext context) {
// //   return Scaffold(
// //     // appBar: AppBar(),
// //     body: ListView.separated(
// //       itemCount: 20,
// //       itemBuilder: (context, index) {
// //         return ListTile(
// //           onTap: () {
// //             Get.to(DetailPage(index), arguments: "arguments 속성 테스트");
// //           },
// //           title: Text("제목1"),
// //           leading: Text("1"),
// //         );
// //       },
// //       separatorBuilder: (context, index) {
// //         return Divider();
// //       },
// //     ),
// //   );
// // }