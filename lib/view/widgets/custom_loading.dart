import 'package:flutter/material.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({this.width, this.height, Key? key, this.message}) : super(key: key);
  final double? width;
  final double? height;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height,
      width: width ?? MediaQuery.of(context).size.width,
      child: const Center(child: CircularProgressIndicator()),
    );
  }
}
