import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_actions/quick_actions.dart';

class QuickAction extends StatefulWidget {
  const QuickAction({super.key});

  @override
  State<QuickAction> createState() => _QuickActionState();
}

class _QuickActionState extends State<QuickAction> {
  Map quickActionsPage = {
    "page1": const Page11(text: "page1"),
    "page2": const Page11(
      text: "page2",
    ),
  };
  final QuickActions quickActions = const QuickActions();
  @override
  void initState() {
    quickActions.initialize((type) {
      return _navigate(quickActionsPage[type]);
    });

    quickActions.setShortcutItems(<ShortcutItem>[
      const ShortcutItem(
          type: 'action_main', localizedTitle: 'Main view', icon: 'icon_main'),
      const ShortcutItem(
          type: 'action_help', localizedTitle: 'Help', icon: 'icon_help')
    ]);
    super.initState();
  }

  void _navigate(Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => screen,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Page11 extends StatelessWidget {
  const Page11({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
}
