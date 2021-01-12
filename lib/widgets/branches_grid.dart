import 'package:flutter/material.dart';
import 'package:infoquest_2020/widgets/app_scaffold.dart';
import '../models/data.dart';
import '../widgets/branch_item.dart';

class BranchesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: GridView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(25),
        children: ALLBRANCHES
            .map(
              (catData) => BranchItem(
                catData.id,
                catData.title,
                catData.image,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
        ),
      ),
    );
  }
}

class BranchesList extends StatelessWidget {
    static const String routeName =  '/branches_grid';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Technical Events',
          body: AppScaffold(
            appBar: AppBar(title: Text("Technical Events"),),
            title: 'Branches List',
                      body: ListView(
              
       // scrollDirection: Axis.horizontal,
        // physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        children: ALLBRANCHES
              .map(
                (catData) => BranchItem(
                  catData.id,
                  catData.title,
                  catData.image,
                ),
              )
              .toList(),
       
      ),
          ),
    );
  }
}