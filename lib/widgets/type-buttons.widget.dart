import 'package:eggs/blocs/app.bloc.dart';
import 'package:eggs/widgets/button.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TypeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return bloc.state == 'stopped' ? buttons(bloc) : SizedBox();
  }

  Widget buttons(bloc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Button(
          label: 'Soft',
          callback: () {
            bloc.select('soft');
          },
          selected: bloc.selected == 'soft',
        ),
        Button(
          label: 'Medium',
          callback: () {
            bloc.select('medium');
          },
          selected: bloc.selected == 'medium',
        ),
        Button(
          label: 'Hard',
          callback: () {
            bloc.select('hard');
          },
          selected: bloc.selected == 'hard',
        ),
      ],
    );
  }
}
