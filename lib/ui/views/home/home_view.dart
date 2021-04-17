import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Home View'),
            actions: [
              IconButton(
                icon: Icon(Icons.alternate_email),
                onPressed: model.toAboutView,
              ),
            ],
          ),
          floatingActionButton: _Fab(),
          body: Column(
            children: [
              MaterialButton(
                onPressed: model.getData,
                child: Text('Get Data'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _Fab extends StatelessWidget {
  const _Fab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.favorite),
    );
  }
}
