import 'package:flutter/material.dart';

import '../../../core/utils/button_data.dart';
import '../../../core/widgets/bottom_bar.dart';
import '../lead_mod.dart';

// ignore: must_be_immutable
class LeadAppBottomBar extends BottomBar {
  LeadAppBottomBar({Key? key})
      : super(key: key, buttonDatas: [
          ButtonData(
            icon: Icons.dashboard,
            label: 'Dashboard',
            link: LeadApp.home,
          ),
          ButtonData(
            icon: Icons.app_registration,
            label: 'About',
            link: LeadApp.about,
          ),
          ButtonData(
            icon: Icons.add_task,
            label: 'Add Lead',
            link: LeadApp.addEnquery,
          ),
        ]);
}
