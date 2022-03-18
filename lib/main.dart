import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_tow_basic/lay_out/home_Lay_out.dart';
import 'package:test_tow_basic/models/App_Cubit/App_Cubit.dart';

import 'shar/style/Style.dart';

void main() async{

  String ?sam;
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).catchError((error){
    print(error);
  });

 await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,overlays: []);
  runApp( MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) =>App_Cubit(),),

      ],
      child: MaterialApp(

        theme: App_Style.light_theme,
        home: home_layout(),
      ),
    );
  }
}


