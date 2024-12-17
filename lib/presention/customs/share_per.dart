import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';




class SharePer{
   static  saveData(String token,String tokenValue)async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
      sharedPreferences.setString(token, tokenValue);
  }
   static  saveDataBool()async{
     SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
     sharedPreferences.setBool("done", true);
   }
   static Future<String> getData(String token)async{
    SharedPreferences sharedPreferences=  await SharedPreferences.getInstance();
    if(sharedPreferences.getString(token) != null){
     return sharedPreferences.getString(token).toString();
    }else{
      return "NA";
    }
  }


   static Future<bool?> getDataBool()async{
     SharedPreferences sharedPreferences=  await SharedPreferences.getInstance();
     if(sharedPreferences.getBool("done")!= null){
       return sharedPreferences.getBool("done");
     }else{
       return false;
     }
   }
   static  removeData(String token,BuildContext context)async{
     SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
     await  sharedPreferences.remove(token);
    // navigatToandfinish(context, SplashScreen());
   }
   static  removeDataBool(BuildContext context)async{
     SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
      await  sharedPreferences.remove("done");
       await removeData("rem", context);
     //  navigatToandfinish(context, SplashScreen());

   }
}