import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_picker/image_picker.dart';

import '../../core/colors/app_colors.dart';
import '../../core/constants/assets_base_path.dart';
import '../../core/constants/font_weight.dart';
import '../routers/app_router.dart';
import 'app_easy_loading.dart';

class UploadPhotoWidget extends StatefulWidget {
  const UploadPhotoWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<UploadPhotoWidget> createState() => UploadPhotoWidgetState();
}

class UploadPhotoWidgetState extends State<UploadPhotoWidget> {
  List<String> imagePathlist = [];

  List get imageList => imagePathlist;
  //final file = File;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: imagePathlist.length + 1,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
      itemBuilder: (BuildContext context, int index) {
        return index == 0 ?
         _uploadButtonsWidget() :
         _imageWidget(imagePathlist[index - 1], index - 1);
      },
    );
  }

  Widget _uploadButtonsWidget() {
    return InkWell(
      onTap: () {
        // _imagePathlist.length == 2
        //     ? easyLoadingShowError("Maximum two images can be selected!")
        //     :
        modelSheet();
      },
      // child: Container(
      //   height: 400,
      //   width: 400,
      //   child: DottedBorder(
      //       strokeWidth: 1,
      //
      //       borderType: BorderType.RRect,
      //       radius: const Radius.circular(5),
      //
      //       dashPattern: const [5,5],
      //       color: green95BF47Color,
      //       padding: const EdgeInsets.all(0),
      //       child: ClipRRect(
      //         borderRadius: const BorderRadius.all(Radius.circular(5)),
      //         child: Center(
      //           child: Container(
      //            height: 40,
      //            width: 40,
      //             color: Colors.white,
      //             child: Center(
      //               child: SvgPicture.asset(
      //                 "$svgAssetsBasePath/add_img.svg",
      //               ),
      //             ),
      //           ),
      //         ),
      //       )),
      // ),
    );
  }

  Widget _imageWidget(String imagePath, int i) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Image.file(
            File(imagePath ?? ""),
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: () {
              setState(() {
                imagePathlist.removeAt(i);
              });
            },
            child: Container(
              height: 20,
              width: 20,
              margin: const EdgeInsets.only(
                right: 4,
                bottom: 4,
              ),
              decoration: const BoxDecoration(color: whiteFFFFFFColor, shape: BoxShape.circle),
              child: Center(
                child: SvgPicture.asset(
                  "$svgAssetsBasePath/delete_icon.svg",
                  width: 10,
                  height: 10,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  modelSheet() {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        backgroundColor: whiteFFFFFFColor,
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Select Image Source",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: medium,
                              fontSize: 16,
                              color: black000000Color),
                        ),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          AppRouter.navigatorKey.currentState?.pop();
                        },
                        child: const Icon(Icons.close,
                            color: black000000Color))
                  ],
                ),
              ),
              const Divider(
                height: 0.5,
                thickness: 0.5,
                color: black000000Color,
              ),
              ListTile(
                onTap: () {
                  selectImage(ImageSource.camera);
                },
                leading:
                    const Icon(Icons.camera_alt, color: black000000Color),
                title: Text(
                  "Camera",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontWeight: medium,
                        fontSize: 14,
                        color: black000000Color),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  selectImage(ImageSource.gallery);
                },
                leading: const Icon(Icons.picture_in_picture,
                    color: black000000Color),
                title: Text(
                  "Gallery",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: medium,
                        fontSize: 14,
                        color: black000000Color),
                  ),
                ),
              )
            ],
          );
        });
  }

  selectImage(ImageSource imageSource) async {
    AppRouter.navigatorKey.currentState?.pop();
    final XFile? pickedFile =
        await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      final file = File(
        pickedFile.path,
      );
      setState(() {
        imagePathlist.add(file.path);
      });
    }
  }
}
