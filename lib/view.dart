import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// class Img extends StatefulWidget {
//   const Img({Key? key}) : super(key: key);
//
//   @override
//   _ImgState createState() => _ImgState();
// }
//
// class _ImgState extends State<Img> {
//    File? imageFile;
//    TextEditingController controller=TextEditingController();
//    int x=5;
//
// @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     controller.dispose();
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // x!=5?Container(height: 50,width: 50,color: Colors.red,):Container(height: 50,width: 50,color: Colors.yellow,),
//
//           Container(
//             height: 100,
//             width: 200,
//             decoration: BoxDecoration(shape: BoxShape.circle),
//             child: imageFile == null
//                 ? Container(
//                 child: Container(
//                   height: 100,
//                   width: 200,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                           image: NetworkImage("https://picsum.photos/150"),
//                           fit: BoxFit.cover)),
//                 ))
//                 : Container(
//
//                 decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     image: DecorationImage(
//                         image: new FileImage(imageFile!),
//                         fit: BoxFit.cover))),
//           ),
//           Padding(
//             padding: const EdgeInsets.only (top:10.0),
//             child: Container(
//               alignment: Alignment.center,
//               child: GestureDetector(
//                 child: Container(
//                     height: 30,
//                     width: 100,
//                     decoration: BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.circular(10)),
//                     child: Center(
//                         child: Text(
//                           "Image",
//                           style: TextStyle(color: Colors.white),
//                         ))),
//                 onTap: () {
//                   showModalBottomSheet<void>(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return Container(
//                         height: 200,
//                         color: Colors.blueGrey,
//                         child: Center(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               Container(
//                                 height: 30,
//                                 width: 100,
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey.shade200,
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: GestureDetector(
//                                   child: Text(" From Gallery"),
//                                   onTap: () async {
//
//                                     _getFromGallery();
//                                     Navigator.pop(context);
//                                   },
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 4,
//                               ),
//                               Container(
//                                 height: 30,
//                                 width: 100,
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey.shade200,
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: GestureDetector(
//                                   child: Text(" From Camera"),
//                                   onTap: () async {
//                                     _getFromCamera();
//                                     Navigator.pop(context);
//                                   },
//                                 ),
//                               ),
//                               ElevatedButton(
//                                 child: const Text('Close BottomSheet'),
//                                 onPressed: () => Navigator.pop(context),
//                               )
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   _getFromGallery() async {
//
//     XFile? pickedFile=await ImagePicker().pickImage(source: ImageSource.gallery);
//     // PickedFile? pickedFile = await ImagePicker().getImage(
//     //   source: ImageSource.gallery,
//     //   // maxWidth: 1800,
//     //   // maxHeight: 1800,
//     // );
//     if (pickedFile != null) {
//       setState(() {
//         imageFile = File(pickedFile.path);
//       });
//     }
//   }
//
//   _getFromCamera() async {
//
//     XFile? pickedFile=await ImagePicker().pickImage(source: ImageSource.camera);
//     // PickedFile? pickedFile = await ImagePicker().getImage(
//     //   source: ImageSource.camera,
//     //   // maxWidth: 1800,
//     //   // maxHeight: 1800,
//     // );
//     if (pickedFile != null) {
//       setState(() {
//         imageFile = File(pickedFile.path);
//       });
//     }
//   }
// }
//

// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// import 'customTextField.dart';
// //
// // class MyView extends StatelessWidget {
// //    MyView({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.blueGrey,
// //       body: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         // crossAxisAlignment: CrossAxisAlignment.center,
// //         children: [
// //           Container(
// //             height: 50,
// //             width: 50,
// //             decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(30),
// //                 color: Colors.red,
// //                 shape: BoxShape.rectangle),
// //             child: Center(child: const Text("Areej,jawaeria",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
// //             ),
// //           ),
// //           Container(
// //             height: 50,
// //             width: 50,
// //             decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(30),
// //                 color: Colors.red,
// //                 shape: BoxShape.rectangle),
// //             child: Center(child: const Text("Areej,jawaeria",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
// //             ),
// //           ),
// //           Container(
// //             height: 50,
// //             width: 50,
// //             decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(30),
// //                 color: Colors.red,
// //                 shape: BoxShape.rectangle),
// //             child: Center(child: const Text("Areej,jawaeria",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
// //             ),
// //           ),
// //
// //         ],
// //       ),
// //       // body:
// //       // Center(
// //       //   child: Container(
// //       //     height: 150,
// //       //     width: 150,
// //       //     decoration: BoxDecoration(
// //       //         borderRadius: BorderRadius.circular(30),
// //       //         color: Colors.red,
// //       //         shape: BoxShape.rectangle),
// //       //     child: Center(child: const Text("Areej,jawaeria",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
// //       //   ),
// //       // ),
// //       // )
// //     );
// //   }
// // }
//
// class MyView extends StatefulWidget {
//   const MyView({Key? key}) : super(key: key);
//
//   @override
//   State<MyView> createState() => _MyViewState();
// }
//
// class _MyViewState extends State<MyView> {
//   File? imageFile;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // bottomSheet: mybottomsheet(context: context),
//       appBar: AppBar(
//         leading: Icon(Icons.add),
//       ),
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           imageFile == null
//               ? SizedBox()
//               : Container(
//                   height: 200,
//                   width: 500,
//                   child: Image.file(imageFile!),
//                 ),
//           Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 // setState(() {
//                 //
//                 //   x=8;
//                 //
//                 // });
//
//                 showModalBottomSheet(
//                   context: context,
//                   builder: (context) {
//                     return Container(
//                       height: 150,
//                       color: Colors.grey,
//                       width: MediaQuery.of(context).size.width,
//                       child: Column(
//                         children: [
//                           InkWell(
//                             onTap: () async {
//                               _getFromGallery();
//
//                               // await ImagePicker()
//                               //     .pickImage(source: ImageSource.gallery);
//                             },
//                             child: ListTile(
//                               leading: CircleAvatar(
//                                 radius: 20,
//                               ),
//                               title: Text("Choose From Gallery"),
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () async {
//                               _getFromCamera();
//                               setState(() {});
//                               // await ImagePicker()
//                               //     .pickImage(source: ImageSource.camera);
//                             },
//                             child: ListTile(
//                               leading: CircleAvatar(
//                                 radius: 20,
//                               ),
//                               title: Text("Choose From Camera"),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 );
//                 // ScaffoldMessenger.of(context)
//                 //     .showSnackBar(SnackBar(content: Text("Hello")));
//                 // showDialog(
//                 //   context: context,
//                 //   builder: (context) {
//                 //     return AlertDialog(
//                 //       backgroundColor: Colors.white,
//                 //       content: Container(
//                 //         height: 90,
//                 //         child: Column(
//                 //           crossAxisAlignment: CrossAxisAlignment.start,
//                 //           children: [
//                 //             Text(
//                 //               "Do you want to exit?",
//                 //               // style: TextStyle(color: blu),
//                 //             ),
//                 //             const SizedBox(height: 20),
//                 //             Row(
//                 //               children: [
//                 //                 Expanded(
//                 //                   child: ElevatedButton(
//                 //                     onPressed: () async {
//                 //                       print('yes selected');
//                 //
//                 //                     },
//                 //                     child: const Text(
//                 //                       "Yes",
//                 //                       style: TextStyle(color: Colors.black),
//                 //                     ),
//                 //                     style: ElevatedButton.styleFrom(
//                 //                         backgroundColor: Colors.blueGrey.withAlpha(100)),
//                 //                   ),
//                 //                 ),
//                 //                 const SizedBox(width: 15),
//                 //                 Expanded(
//                 //                     child: ElevatedButton(
//                 //                       onPressed: () {
//                 //                         print('no selected');
//                 //
//                 //                       },
//                 //                       child: const Text("No",
//                 //                           style: TextStyle(color: Colors.black)),
//                 //                       style: ElevatedButton.styleFrom(
//                 //                         backgroundColor: Colors.white,
//                 //                       ),
//                 //                     ))
//                 //               ],
//                 //             )
//                 //           ],
//                 //         ),
//                 //       ),
//                 //     );
//                 //   },
//                 // );
//               },
//               child: Text("Open"),
//             ),
//           )
//         ],
//       ),
//       // body: ListView.builder(
//       //   itemCount: 10,
//       //   itemBuilder: (context, index) {
//       //     return Container(
//       //       height: MediaQuery.of(context).size.height / 4,
//       //       margin: EdgeInsets.all(10),
//       //       width: MediaQuery.of(context).size.width,
//       //       decoration: BoxDecoration(
//       //           color: Colors.green, borderRadius: BorderRadius.circular(30)),
//       //       child: Column(
//       //         mainAxisAlignment: MainAxisAlignment.center,
//       //         children: [
//       //           Row(
//       //             children: [
//       //               SizedBox(
//       //                 width: 10,
//       //               ),
//       //               CircleAvatar(
//       //                 radius: 40,
//       //               ),
//       //               SizedBox(
//       //                 width: 10,
//       //               ),
//       //               Text("Hello!! I am New Here"),
//       //             ],
//       //           ),
//       //           Container(
//       //             height: 1,
//       //             margin: EdgeInsets.only(left: 20, right: 20),
//       //             width: MediaQuery.of(context).size.width,
//       //             color: Colors.black,
//       //           )
//       //         ],
//       //       ),
//       //     );
//       //   },
//       // )
//       // bottomNavigationBar: Container(
//       //   height: 50,
//       //   width: MediaQuery.of(context).size.width,
//       //   child: Center(child: Text("ABC")),color: Colors.red,),
//     );
//   }
//
//   _getFromGallery() async {
//     XFile? pickedFile =
//         await ImagePicker().pickImage(source: ImageSource.gallery);
//
//     // await ImagePicker().getImage(
//     //   source: ImageSource.gallery,
//     //   maxWidth: 1800,
//     //   maxHeight: 1800,
//     // );
//     if (pickedFile != null) {
//       File imageFile = File(pickedFile.path);
//
//       setState(() {});
//       return imageFile;
//     }
//   }
//
//   _getFromCamera() async {
//     XFile? pickedFile =
//         await ImagePicker().pickImage(source: ImageSource.camera);
//
//     // await ImagePicker().getImage(
//     //   source: ImageSource.gallery,
//     //   maxWidth: 1800,
//     //   maxHeight: 1800,
//     // );
//     if (pickedFile != null) {
//       File imageFile = File(pickedFile.path);
//
//       print(pickedFile.path);
//
//       setState(() {});
//
//       return imageFile;
//     }
//   }
// }
// //
// //
// // Widget mybottomsheet({required BuildContext context}){
// //   return Container(
// //     height: 150,
// //     color: Colors.red,
// //     width: MediaQuery.of(context).size.width,
// //     child: Column(
// //       children: [
// //         ListTile(
// //           leading: CircleAvatar(
// //             radius: 20,
// //           ),
// //           title: Text("Press 1"),
// //           subtitle: Text("hello"),
// //           trailing: Text("2"),
// //         ),
// //         ListTile(
// //           leading: CircleAvatar(
// //             radius: 20,
// //           ),
// //           title: Text("Press 1"),
// //           subtitle: Text("hello"),
// //           trailing: Text("2"),
// //         ),
// //       ],
// //     ),
// //   );
// // }

class MyView extends StatefulWidget {
  const MyView({Key? key}) : super(key: key);

  @override
  State<MyView> createState() => _MyViewState();
}


enum Gender { male, female }

enum Depart {CS,IT,CPEN,BBA}





class _MyViewState extends State<MyView> {
  bool value = false;
  bool value1=false;

  Gender? gender = Gender.male;
  Depart? depart=Depart.CS;


   String? name;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          children: [

            Switch(
                value: this.value,
                onChanged: (bool? value) {
                  setState(() {
                    print(value);
                    this.value = value!;
                  });
                }),
            Checkbox(
                value: this.value1,
                onChanged: (bool? value) {
                  setState(() {
                    print(value);
                    this.value1 = value!;
                  });
                }),




            ListTile(
              title:  Text('CS'),
              leading: Radio<Depart>(
                value: Depart.CS,
                groupValue: depart,
                onChanged: (Depart? value) {
                  setState(() {
                    depart = value;
                  });
                },
              ),
            ),




            ListTile(
              title:  Text('IT'),
              leading: Radio<Depart>(
                value: Depart.IT,
                groupValue: depart,
                onChanged: (Depart? value) {
                  setState(() {
                    depart = value;
                  });
                },
              ),
            ),

            ListTile(
              title:  Text('BBA'),
              leading: Radio<Depart>(
                value: Depart.BBA,
                groupValue: depart,
                onChanged: (Depart? value) {
                  setState(() {
                    depart = value;
                  });
                },
              ),
            ),


            // ListTile(
            //   title:  Text('Male'),
            //   leading: Radio<Gender>(
            //     value: Gender.male,
            //     groupValue: gender,
            //     onChanged: (Gender? value) {
            //       setState(() {
            //         gender = value;
            //       });
            //     },
            //   ),
            // ),
            //
            //
            // ListTile(
            //   title:  Text('Female'),
            //   leading: Radio<Gender>(
            //     value: Gender.female,
            //     groupValue: gender,
            //     onChanged: (Gender? value) {
            //       setState(() {
            //
            //         print(value);
            //         gender = value;
            //       });
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }




//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   SingingCharacter? _character = SingingCharacter.lafayette;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         ListTile(
//           title: const Text('Lafayette'),
//           leading: Radio<SingingCharacter>(
//             value: SingingCharacter.lafayette,
//             groupValue: _character,
//             onChanged: (SingingCharacter? value) {
//               setState(() {
//                 _character = value;
//               });
//             },
//           ),
//         ),
//         ListTile(
//           title: const Text('Thomas Jefferson'),
//           leading: Radio<SingingCharacter>(
//             value: SingingCharacter.jefferson,
//             groupValue: _character,
//             onChanged: (SingingCharacter? value) {
//               setState(() {
//                 _character = value;
//               });
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
}
