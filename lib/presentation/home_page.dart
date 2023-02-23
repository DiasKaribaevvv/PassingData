import 'package:flutter/material.dart';
import 'package:passingdata/presentation/show_page.dart';









class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  TextEditingController textNameController = TextEditingController();
  TextEditingController textSurnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing data'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),

        child: Column(

          children: [

            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),

                  border: Border.all()
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: textNameController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Name',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),

                  border: Border.all()
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: textSurnameController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Surname',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  ShowNameAndSurname.enteredValue1.value = textNameController.text;
                  ShowNameAndSurname.enteredValue2.value = textSurnameController.text;
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowNameAndSurname()));
                }, child: Text(
                    'Send data to next widget'
                ))
              ],
            )





          ],



        ),



      ),
    );
  }
}

