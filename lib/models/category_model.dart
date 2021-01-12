import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String title;
  final String image;

  const CategoryModel({
    @required this.id,
    @required this.title,
     this.image ,
   });
}
