import 'package:app_todo/modules/cadastre/cadastre_presenter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CadastreView extends StatelessWidget {
  const CadastreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CadastrePresenter(),
      child: Consumer<CadastrePresenter>(
          builder: (context, cadastrePresenter, child) {
        return Scaffold(
          body: Text(cadastrePresenter.model.nome),
          floatingActionButton: FloatingActionButton(
            onPressed: () => cadastrePresenter.setName('Daniela'),
          ),
        );
      }),
    );
  }
}
