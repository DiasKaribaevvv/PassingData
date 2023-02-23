import 'package:flutter/material.dart';




class ShowNameAndSurname extends StatelessWidget {
  static ValueNotifier<String> enteredValue1 = ValueNotifier('');
  static ValueNotifier<String> enteredValue2 = ValueNotifier('');


  const ShowNameAndSurname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name and Surname"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder(valueListenable: enteredValue1,
                  builder: (BuildContext context,String value, Widget? child){
                    return Text('Your name: ' + value,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                    ),

                    );
                  }),
              SizedBox(height: 10,),
              ValueListenableBuilder(valueListenable: enteredValue2,
                  builder: (BuildContext context,String value, Widget? child){
                    return Text('Your surname: ' + value,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                      ),

                    );
                  }),
              SizedBox(height: 10,),


            ],
          ),
        ),
      )





    );
  }
}
