import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../widget.smail_grid_item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class MyDriveView extends StatefulWidget {
  MyDriveView({super.key});

  @override
  State<MyDriveView> createState() => StateChild();
}

class MyDriveViewState extends State<MyDriveView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      padding: EdgeInsets.all(20),
      children: [
        SmallGridItemView(
          fileImage:
              'https://miro.medium.com/max/768/1*dFLf9y6lNmFDGBSQJvBWOA.jpeg',
          fileName: "Brouchere",
          fileType: 'docs',
          isFolder: false,
        ),
        SmallGridItemView(
          fileImage:
              'https://user-images.githubusercontent.com/38372696/91842542-e1aea480-ec71-11ea-938f-7bcd3d23a382.png',
          fileName: "Joan Louji v7",
          fileType: 'sheets',
          isFolder: true,
        ),
        SmallGridItemView(
          fileImage:
              'https://miro.medium.com/max/768/1*dFLf9y6lNmFDGBSQJvBWOA.jpeg',
          fileName: "Portflio Tracker",
          fileType: 'pdf',
          isFolder: false,
        ),
        SmallGridItemView(
          fileImage:
              'https://miro.medium.com/max/612/1*O_dmzQldxVWhmzW77S-60g.jpeg',
          fileName: "About Elements",
          fileType: 'docs',
          isFolder: false,
        ),
        SmallGridItemView(
          fileImage:
              'https://miro.medium.com/max/612/1*O_dmzQldxVWhmzW77S-60g.jpeg',
          fileName: "Brouchere",
          fileType: 'image',
          isFolder: false,
        ),
      ],
    );
  }
}

main() async {
  return buildApp(appHome: MyDriveView());
}
