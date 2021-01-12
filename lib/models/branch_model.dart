import 'package:flutter/material.dart';

class BranchModel {
  final String id;
  final String title;
  final String image;

  const BranchModel({
    @required this.id,
    @required this.title,
     this.image ,
   });
}
