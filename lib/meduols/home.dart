import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_tow_basic/models/App_Cubit/App_Cubit.dart';
import 'package:test_tow_basic/models/App_Cubit/App_State.dart';

class home_for_screen extends StatelessWidget {
  const home_for_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<App_Cubit,App_State>(

        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          App_Cubit cubit=App_Cubit.git(context);
          return cubit.screen_home(context);
        },
        );
  }
}
