
import 'package:flutter/material.dart';
import 'package:nemoapp/core/network/utils/app_colors.dart';
import 'package:nemoapp/core/network/utils/app_strings.dart';
import 'package:nemoapp/core/network/utils/image_constant.dart';
import 'package:nemoapp/core/network/utils/main_btn.dart';
import 'package:nemoapp/presentation/createAccount/create_account.dart';
import 'package:nemoapp/presentation/login/login_screen.dart';

class OpiningScreen extends StatelessWidget {
  const OpiningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:AppColor.primaryColor,
      child: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
          child: Image.asset(ImageConstant.opining,fit: BoxFit.cover,),
          ),
        MainButton(txt:AppString.createAccount,onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateAccount()),
          );
        },
        color:Colors.white, txtColor:AppColor.primaryColor  ,),
          SizedBox(height: 15),
          MaterialButton(
        onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );},
            height: 42,
            minWidth: 342,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.white, // Set your desired border color here
                width: 2.0, // Adjust the border width as needed
              ),
              borderRadius: BorderRadius.circular(8.0), // Adjust the border radius as needed
            ),
          child: Text(AppString.login,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
            color:AppColor.primaryColor,
          ),
          SizedBox(height: 16,),
          GestureDetector(
              onTap: (){},
              child: Text(AppString.continueASGest, style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w700))),

        ],
      ),
    );
  }
}
