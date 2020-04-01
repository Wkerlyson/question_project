import 'package:flutter/material.dart';

class Reply extends StatelessWidget {
  final String text;
  final void Function() onSelect;

  Reply(this.text, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(text),
        onPressed: onSelect,
      ),
    );
  }
}
