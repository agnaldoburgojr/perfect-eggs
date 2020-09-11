import 'package:eggs/blocs/app.bloc.dart';
import 'package:eggs/widgets/button.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);

    switch (bloc.state) {
      case 'stopped':
        return Button(
          label: 'START',
          callback: bloc.start,
          selected: true,
        );
      case 'cooking':
        return Button(
          label: 'STOP',
          callback: bloc.stop,
          selected: true,
        );
      case 'done':
        return Button(
          label: 'ALL DONE',
          callback: bloc.reset,
          selected: true,
        );
      default:
        return Button(
          label: 'START',
          callback: bloc.start,
          selected: true,
        );
    }
  }
}
