import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class SmallGridItemView extends StatefulWidget {
  SmallGridItemView(
      {super.key,
      required this.fileType,
      required this.fileName,
      required this.fileImage,
      required this.isFolder});

  final String fileType;
  final String fileName;
  final String fileImage;
  final bool isFolder;

  @override
  State<SmallGridItemView> createState() => StateChild();
}

class SmallGridItemViewState extends State<SmallGridItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Container(
          height: 290,
          padding: EdgeInsets.only(bottom: 5, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.isFolder
                  ? Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 100,
                      child: Container(
                          padding: EdgeInsets.only(
                              top: 5, left: 20, right: 20, bottom: 10),
                          child: Icon(
                            Icons.folder,
                            size: 120,
                            color: Colors.grey[500],
                          )),
                    )
                  : Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200]),
                      child: Container(
                          padding:
                              EdgeInsets.only(top: 30, left: 20, right: 20),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: InteractiveViewer(
                                  panEnabled: false,
                                  // Set it to false
                                  boundaryMargin: EdgeInsets.all(80),
                                  minScale: 0.5,
                                  maxScale: 3,
                                  child: Image.network(
                                    widget.fileImage,
                                    fit: BoxFit.cover,
                                    width: 340,
                                    height: 130,
                                  )))),
                    ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.isFolder
                        ? SizedBox.shrink()
                        : Container(
                            height: 25,
                            width: 20,
                            child: fileImage(widget.fileType)),
                    Text(
                      widget.fileName,
                      style: TextStyle(fontSize: 13),
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  fileImage(String filename) {
    if (filename == 'docs') {
      return Image.asset("assets/view/google_drive_main_view/google-docs.webp");
    } else if (filename == 'image') {
      return Image.asset("assets/view/google_drive_main_view/photo.webp");
    } else if (filename == 'pdf') {
      return Image.asset("assets/view/google_drive_main_view/pdf.webp");
    } else if (filename == 'sheets') {
      return Image.asset(
          "assets/view/google_drive_main_view/google-sheets.webp");
    } else if (filename == 'video') {
      return Image.asset(
          "assets/view/google_drive_main_view/photographic-film.webp");
    } else {
      return Image.asset(
        "assets/view/google_drive_main_view/pdf.webp",
        color: Colors.blue,
      );
    }
  }
}

main() async {
  return buildApp(
      appHome: SmallGridItemView(
    fileImage:
        'https://user-images.githubusercontent.com/38372696/91842542-e1aea480-ec71-11ea-938f-7bcd3d23a382.png',
    fileName: "Joan Louji v7",
    fileType: 'sheets',
    isFolder: true,
  ).center());
}
