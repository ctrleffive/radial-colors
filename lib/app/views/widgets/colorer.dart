import 'package:flutter/material.dart';

class Colorer extends StatelessWidget {
  final double size;
  final int value;

  Colorer({this.size, this.value});

  Color get _color {
    switch (value) {
      case 0:
        return Colors.blue;
        break;
      case 1:
        return Colors.green;
        break;
      case 2:
        return Colors.redAccent;
        break;
      default:
        return Colors.blue;
    }
}

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      width: this.size,
      decoration: BoxDecoration(
        color: Colors.black12,
        shape: BoxShape.circle,
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: this._color,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: this._color,
                  offset: Offset(0, 7),
                ),
              ],
            ),
          ),
          Transform.rotate(
            angle: this.value + 0.0,
            child: Stack(
              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  right: this.size - 52,
                  child: Transform.rotate(
                    angle: 0.79,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      width: 20,
                      height: 20,
                      color: this._color,
                    ),
                  ),
                ),
                Positioned(
                  right: this.size - 12,
                  child: Transform.rotate(
                    angle: 0.79,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: this._color,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
