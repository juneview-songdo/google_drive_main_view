import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../widget.recent_item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => StateChild();
}

class HomeViewState extends State<HomeView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        RecentItemView(
          fileImage:


          "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
          fileName: "Brouchere",
          fileType: 'docs',
        ),
        RecentItemView(
          fileImage:
          "https://images.unsplash.com/photo-1598212651529-14a6c5c4885f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          fileName: "Joan Louji v7",
          fileType: 'sheets',
        ),
        RecentItemView(
          fileImage: 'https://miro.medium.com/max/768/1*dFLf9y6lNmFDGBSQJvBWOA.jpeg',
          fileName: "Portflio Tracker",
          fileType: 'pdf',
        ),
        RecentItemView(
          fileImage: 'https://miro.medium.com/max/612/1*O_dmzQldxVWhmzW77S-60g.jpeg',
          fileName: "About Elements",
          fileType: 'docs',
        ),
        RecentItemView(
          fileImage:
          "https://images.unsplash.com/photo-1598309255528-fc495f54fadd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          fileName: "Brouchere",
          fileType: 'image',
        ),
      ],
    );
  }
}

main() async {
  return buildApp(appHome: HomeView());
}