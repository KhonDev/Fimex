import 'package:flutter/material.dart';

import 'package:fimex/app/ui/widgets/index.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: const [
                CustomIconButton(),
                Flexible(child: SearchInput()),
              ],
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: ListView.separated(
                itemCount: 20,
                padding:
                    const EdgeInsets.all(10.0).copyWith(bottom: 20.0, top: 0.0),
                separatorBuilder: (_, __) => const SizedBox(height: 10.0),
                itemBuilder: (context, index) => const BigProductCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: BottomSheet (KhonDev)

// class CatalogButtons extends StatelessWidget {
//   const CatalogButtons({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.zero,
//       padding: const EdgeInsets.all(10.0),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.blueAccent),
//       ),
//       child: Row(
//         children: <Widget>[],
//       ),
//     );
//   }
// }



    // Scaffold(
    //   backgroundColor: const Color(0xff000000),
    //   body: Center(
    //     child: ElevatedButton(
    //       child: const Text('open'),
    //       onPressed: () {
    //         showBottomSheet(
    //           context: context,
    //           shape: const RoundedRectangleBorder(
    //             borderRadius: BorderRadius.vertical(
    //               top: Radius.circular(20),
    //             ),
    //           ),
    //           builder: (context) => SizedBox(
    //             height: 576.0,
    //             width: double.infinity,
    //             child: Column(
    //               children: [
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     const SizedBox(),
    //                     TextButton(
    //                       onPressed: () {},
    //                       child: const Text(
    //                         'CLOSE',
    //                         style: TextStyles.s16w600,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 const CustomDivider(),
    //                 const ExpansionTile(
    //                   title: Text('Model'),
    //                   children: <Widget>[
    //                     ListTile(title: Text('This is tile number 1')),
    //                   ],
    //                 ),
    //                 CatalogButtons(),
    //               ],
    //             ),
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // );
