import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'App Title';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: Image.asset('assets/images/card.png').image,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: _buildIconButton(
                                      context: context,
                                      onTap: () {},
                                      iconData: Icons.notification_add),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  margin:
                                      const EdgeInsets.only(left: 2, right: 2),
                                  child: Material(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(8),
                                      child: const SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.location_on_outlined),
                                              Text('Чебоксары')
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            _buildIconButton(
                                context: context,
                                onTap: () {},
                                iconData: Icons.notification_add),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              maxLines: 2,
                              'ООО ПК "Промтрактор" \nООО ПК "Промтрактор"',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            )),
      ),
    );
  }

  Widget _buildIconButton({
    required BuildContext context,
    required IconData iconData,
    required Function() onTap,
  }) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: SizedBox(
          height: 30,
          width: 30,
          child: Center(child: Icon(iconData)),
        ),
      ),
    );
  }
}
