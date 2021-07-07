import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartbuyer/Screens/Home_Screen.dart';
import 'package:smartbuyer/widgets/botttombarwidget.dart';

class OtpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        elevation: 3,
        title: Text(
          'Verify',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Enter Verification code we\'ve sent on given number.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextFormField(
                maxLength: 4,
                keyboardType: TextInputType.number,
                autocorrect: false,
                decoration: const InputDecoration(
                  hintText: 'ENTER VERIFICATION CODE',
                ),
              ),
            ),
            const Spacer(),
             MaterialButton(
                height: 50,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
                },
                child: const Text('Continue',style:TextStyle(
                  fontSize: 18,
                ) ,),
                color: Colors.black54,
                textColor: Colors.white,
              )
          ],
        ),
      ),
    );
  }
}
