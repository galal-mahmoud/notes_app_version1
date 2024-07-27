import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsetsDirectional.only(start: 16.0, end: 16.0, bottom: 8.0),
      height: 180.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsetsDirectional.zero,
            title: const Padding(
              padding: EdgeInsetsDirectional.only(start: 16.0),
              child: Text(
                'Flutter',
                style: TextStyle(fontSize: 28.0, color: Colors.black),
              ),),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Text(
                'you will success',
                style: TextStyle(
                    fontSize: 18.0, color: Colors.black.withOpacity(0.4)),
              ),
            ),
            trailing: const Padding(
                padding: EdgeInsetsDirectional.only(end: 16.0),
                child: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24.0,
                )),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  end: 16.0,
                ),
                child: Text(
                  'July 25, 2024',
                  style: TextStyle(
                      fontSize: 18.0, color: Colors.black.withOpacity(0.4)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
