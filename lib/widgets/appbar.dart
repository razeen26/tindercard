// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SrAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SrAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            constraints: BoxConstraints(maxWidth: 25),
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            visualDensity: VisualDensity.compact,
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 28,
            ),
          ),
          SizedBox(
            width: 25,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[400],
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 25),
            child: SvgPicture.asset(
              "assets/images/selfridges-logo.svg",
              height: 23,
              width: 23,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            // padding: EdgeInsets.only(left: 80),
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
      color: Colors.white,
    );
  }
}



// AppBar(
//       leading: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Expanded(
//             child: IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.menu_outlined,
//               ),
//               color: Colors.black,
//             ),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Expanded(
//             child: CircleAvatar(
//               backgroundColor: Colors.grey,
//               radius: 10,
//               child: IconButton(
//                 visualDensity: VisualDensity.compact,
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.person_outline,
//                   color: Colors.black,
//                   size: 28,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       backgroundColor: Colors.white,
//       elevation: 0,
//       title: SvgPicture.asset(
//         "assets/images/selfridges-logo.svg",
//         height: 25,
//         width: 25,
//       ),
//       centerTitle: true,
//       actions: [
//         IconButton(
//           onPressed: () {},
//           icon: Icon(
//             Icons.search,
//             color: Colors.black,
//           ),
//         ),
//         IconButton(
//           onPressed: () {},
//           icon: Icon(
//             Icons.shopping_bag_outlined,
//             color: Colors.yellow,
//           ),
//         ),
//       ],
//     );