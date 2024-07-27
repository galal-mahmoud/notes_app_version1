import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16.0,
        left: 16.0,
      ),
      child: Container(
          height: 170.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
        children: [
          ListTile(
            title: const Text(
              'Flutter',
              style: TextStyle(fontSize: 28.0, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'you will success',
                style: TextStyle(
                    fontSize: 20.0, color: Colors.black.withOpacity(0.4)),
              ),
            ),
            trailing: const Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
              size: 32.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 16.0),
                child: Text(
                'July 25, 2024',
                style: TextStyle(
                    fontSize: 18.0, color: Colors.black.withOpacity(0.4)),
              ),)
            ],
          ),
        ],
      )),
    );
  }
}
