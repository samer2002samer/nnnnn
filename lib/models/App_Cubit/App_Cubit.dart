import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_tow_basic/models/App_Cubit/App_State.dart';

class App_Cubit extends Cubit<App_State>{
  App_Cubit() : super(App_InationalState());
  static App_Cubit git(context)=>BlocProvider.of(context);
  static int currentindex=0;
  void currentindex_change(int index){

    currentindex=index;
    emit(currentindex_change_State());

  }
   Widget screen_home (context)=> Container(

    child: Row(
      children: [

        Expanded(
            flex: 1,
            child: Container(
              child: List_all.right_element(context)[currentindex]
            )),
        Container(
          color: Colors.white,
          width: 3,

        ),
        Expanded(
            flex: 2
            ,child: Container(
          child: List_all.lift_element(context)[currentindex],
        ))
      ],
    ),
  );
}
//________________________________________________________________________
abstract class List_all{
 static List<Widget>right_element(context)=>[
   Container(
     child: right_element_basic(context,
       is_life: true,
       separatorBuilder: Container(
         height: 2,
         width: double.infinity,
       ),
       List_view_widget: (index)=>Container(
         height: 50,
         width: double.infinity,
         child: Center(child: Text('$index',style: TextStyle(
           fontSize: 20
         ),),

         ),
         color: Colors.white,
       ),
       List_view_widget_lenth: 10,
     ),
   ),
   Container(
     child: right_element_basic(context,
       is_life: false,
       separatorBuilder: Container(
         height: 2,
         width: double.infinity,
       ),
       List_view_widget: (index)=>Container(
         height: 50,
         width: double.infinity,
         child: Center(child: Text('$index first',style: TextStyle(
             fontSize: 20
         ),),

         ),
         color: Colors.white,
       ),
       List_view_widget_lenth: 10,
     ),
   ),
   Container(
     child: right_element_basic(context,
       is_life: false,
       separatorBuilder: Container(
         height: 2,
         width: double.infinity,
       ),
       List_view_widget: (index)=>Container(
         height: 50,
         width: double.infinity,
         child: Center(child: Text('$index soconed',style: TextStyle(
             fontSize: 20
         ),),

         ),
         color: Colors.white,
       ),
       List_view_widget_lenth: 10,
     ),
   ),
   Container(
     child: right_element_basic(context,
       is_life: false,
       separatorBuilder: Container(
         height: 2,
         width: double.infinity,
       ),
       List_view_widget: (index)=>Container(
         height: 50,
         width: double.infinity,
         child: Center(child: Text('$index thared',style: TextStyle(
             fontSize: 20
         ),),

         ),
         color: Colors.white,
       ),
       List_view_widget_lenth: 10,
     ),
   ),
   Container(
     child: right_element_basic(context,
       is_life: false,
       separatorBuilder: Container(
         height: 2,
         width: double.infinity,
       ),
       List_view_widget: (index)=>Container(
         height: 50,
         width: double.infinity,
         child: Center(child: Text('$index fourth',style: TextStyle(
             fontSize: 20
         ),),

         ),
         color: Colors.white,
       ),
       List_view_widget_lenth: 10,
     ),
   ),
   Container(
     child: right_element_basic(context,
       is_life: false,
       separatorBuilder: Container(
         height: 2,
         width: double.infinity,
       ),
       List_view_widget: (index)=>Container(
         height: 50,
         width: double.infinity,
         child: Center(child: Text('$index seventh',style: TextStyle(
             fontSize: 20
         ),),

         ),
         color: Colors.white,
       ),
       List_view_widget_lenth: 10,
     ),
   ),
   Container(
     child: right_element_basic(context,
       is_life: false,
       separatorBuilder: Container(
         height: 2,
         width: double.infinity,
       ),
       List_view_widget: (index)=>Container(
         height: 50,
         width: double.infinity,
         child: Center(child: Text('$index eateth' ,style: TextStyle(
             fontSize: 20
         ),),

         ),
         color: Colors.white,
       ),
       List_view_widget_lenth: 10,
     ),
   ),
   Container(
     child: right_element_basic(context,
       is_life: false,
       separatorBuilder: Container(
         height: 2,
         width: double.infinity,
       ),
       List_view_widget: (index)=>Container(
         height: 50,
         width: double.infinity,
         child: Center(child: Text('$index nineth',style: TextStyle(
             fontSize: 20
         ),),

         ),
         color: Colors.white,
       ),
       List_view_widget_lenth: 10,
     ),
   ),
   Container(
     child: right_element_basic(context,
       is_life: false,
       separatorBuilder: Container(
         height: 2,
         width: double.infinity,
       ),
       List_view_widget: (index)=>Container(
         height: 50,
         width: double.infinity,
         child: Center(child: Text('$index tenth',style: TextStyle(
             fontSize: 20
         ),),

         ),
         color: Colors.white,
       ),
       List_view_widget_lenth: 10,
     ),
   ),
   Container(
     child: right_element_basic(context,
       is_life: false,
       separatorBuilder: Container(
         height: 2,
         width: double.infinity,
       ),
       List_view_widget: (index)=>Container(
         height: 50,
         width: double.infinity,
         child: Center(child: Text('$index tenth',style: TextStyle(
             fontSize: 20
         ),),

         ),
         color: Colors.white,
       ),
       List_view_widget_lenth: 10,
     ),
   ),
 ];
 static List<Widget>lift_element(context)=>[
   Container(

      child: Center(
        child: Text('${App_Cubit.currentindex}',
        style: TextStyle(
          color: Colors.white,
          fontSize: 50
        ),
        ),
      ),
    ),
   Container(

     child: Center(
       child: Text('${App_Cubit.currentindex}',
         style: TextStyle(
             color: Colors.white,
             fontSize: 50
         ),
       ),
     ),
   ),
   Container(

     child: Center(
       child: Text('${App_Cubit.currentindex}',
         style: TextStyle(
             color: Colors.white,
             fontSize: 50
         ),
       ),
     ),
   ),
   Container(

     child: Center(
       child: Text('${App_Cubit.currentindex}',
         style: TextStyle(
             color: Colors.white,
             fontSize: 50
         ),
       ),
     ),
   ),
   Container(

     child: Center(
       child: Text('${App_Cubit.currentindex}',
         style: TextStyle(
             color: Colors.white,
             fontSize: 50
         ),
       ),
     ),
   ),
   Container(

     child: Center(
       child: Text('${App_Cubit.currentindex}',
         style: TextStyle(
             color: Colors.white,
             fontSize: 50
         ),
       ),
     ),
   ),
   Container(

     child: Center(
       child: Text('${App_Cubit.currentindex}',
         style: TextStyle(
             color: Colors.white,
             fontSize: 50
         ),
       ),
     ),
   ),
   Container(

     child: Center(
       child: Text('${App_Cubit.currentindex}',
         style: TextStyle(
             color: Colors.white,
             fontSize: 50
         ),
       ),
     ),
   ),
   Container(

     child: Center(
       child: Text('${App_Cubit.currentindex}',
         style: TextStyle(
             color: Colors.white,
             fontSize: 50
         ),
       ),
     ),
   ),
   Container(

     child: Center(
       child: Text('${App_Cubit.currentindex}',
         style: TextStyle(
             color: Colors.white,
             fontSize: 50
         ),
       ),
     ),
   ),
   Container(),
   Container(),
   Container(),
   Container(),
   Container(),
 ];
 static Widget right_element_basic(context,{
  bool is_life=true,
   required Widget List_view_widget(index),
   required Widget separatorBuilder,
   required int List_view_widget_lenth,
}){

   return Container(
     child: Column(
       children: [
         is_life?Container(
           height: 150,
           width: double.infinity,
           color: Colors.black.withOpacity(0.8),
           child: Center(
             child: Text(
               'Live',
               style: TextStyle(
                   color: Colors.red,
                   fontSize: 30
               ),
             ),
           ),
         ):Container(
           height: 50,
           width: double.infinity,
           color: Colors.black,
           child: Row(
             children: [
               IconButton(onPressed: (){
                 App_Cubit.git(context).currentindex_change(0);
               }, icon: Icon(Icons.arrow_back,
               color: Colors.white,
                 size: 30,
               ))
             ],
           ),
         ),
         Expanded(
           child: SingleChildScrollView(

             child: Column(
               children: [
                 Container(
                   width: double.infinity,
                   height: is_life?250:350,
                   child: ListView.separated(
                       shrinkWrap: true,
                       itemBuilder: (context, index) => GestureDetector(
                         onTap: (){
                           App_Cubit.git(context).currentindex_change(index);
                         },
                           child: List_view_widget(index)),
                       separatorBuilder:  (context, index) => separatorBuilder,
                       itemCount:List_view_widget_lenth),
                 ),
               ],
             ),
           ),
         ),
       ],
     ),
   );









 }

}