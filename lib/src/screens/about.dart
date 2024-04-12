import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '/src/config.dart';
import '/src/oss_licenses.dart';
import '/src/widgets/collapsible_section.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          tooltip: "Back",
          icon: Icon(Icons.adaptive.arrow_back),
          color: Theme.of(context).appBarTheme.foregroundColor,
        ),
      ),
      body: ListView(
        children: [
          if (tourForgeConfig.appDesc != null)
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(tourForgeConfig.appDesc!,
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
          CollapsibleSection(
            title: "Licensing Information",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Text(
                      "This application makes use of many open source software libraries. "
                      "Some of these libraries require that we credit their authors. "
                      "Also, these libraries' authors deserve credit for making it easier for us "
                      "to develop this application.",
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                const SizedBox(height: 12.0),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Text(
                      "We thank the authors of the following libraries for generously "
                      "making their work available under an open source license:"
                      "http://www.grecoapp.com/2023/06/16/osl_credits/",
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
