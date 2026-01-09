import 'package:flutter/material.dart';
import 'package:finance_mobile_app/ui/core_components/app_icon.dart';
import 'package:finance_mobile_app/ui/core_components/h1.dart';
import 'package:finance_mobile_app/ui/core_components/paragraph.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// TODO improve this feature with annotation style and more addons
void main() {
  runApp(const WidgetBookApp());
}

@widgetbook.App()
class WidgetBookApp extends StatelessWidget {
  const WidgetBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: [
        WidgetbookComponent(name: "Core Component", useCases: [
          WidgetbookUseCase(
            name: "App icon",
            designLink: "http://www.figma.org",
            builder: (context) => const AppIcon(Icons.add),
          ),
          WidgetbookUseCase(
              name: "H1 ",
              builder: (context) {
                return const H1(
                  text: "Hello world",
                );
              }),
          WidgetbookUseCase(
              name: "Paragraph",
              builder: (context) {
                return const Paragraph(
                  title: "Title",
                );
              })
        ])
      ],
      addons: [
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(name: 'Light', data: ThemeData()),
            WidgetbookTheme(name: 'Dark', data: ThemeData.dark()),
          ],
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone13,
          ],
        ),
        AlignmentAddon(
          initialAlignment: Alignment.center,
        ),
      ],
    );
  }
}
