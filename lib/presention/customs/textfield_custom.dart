import 'package:flutter/material.dart';

import 'custom_text.dart';


class CustomTextSearch extends StatelessWidget {
  TextEditingController controller;
  IconData iconData;
  IconData? iconData2;
  String hint;
  Function? function;
  TextInputType? textInputType;
  GestureTapCallback? callback;
  CustomTextSearch({super.key,required this.iconData,this.callback,this.textInputType,this.iconData2,required this.controller,required this.hint,this.function});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 370,
        child: TextFormField(
          obscureText:hint=="Password"?true:false ,
          keyboardType:textInputType?? TextInputType.text,
          controller: controller,
          onChanged:(val)=>function!(val),
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color:  Theme.of(context).colorScheme.secondary,
              ),
              isDense: true,
              prefixIcon: const Icon(Icons.search),
              contentPadding:const EdgeInsets.all(10),
              suffixIcon: Container(
                width: 70,
                margin:const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Icon(Icons.timer_outlined),
                    CustomText(name: "الان", fontWeight: FontWeight.bold, font: 14),
                  ],
                ),
              ),
              border:WidgetOutLineBorder(context),
              focusedBorder: WidgetOutLineBorder(context),
              enabledBorder: WidgetOutLineBorder(context)
          ),
        ),
      ),
    );
  }
  WidgetOutLineBorder(BuildContext context){
    return  OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.secondary,
        )
    );
  }
}
class CustomTextF extends StatelessWidget {
  TextEditingController controller;
  IconData iconData;
  IconData? iconData2;
  String hint;
  Function? function;
  TextInputType? textInputType;
  GestureTapCallback? callback;
  CustomTextF({super.key,required this.iconData,this.callback,this.textInputType,this.iconData2,required this.controller,required this.hint,this.function});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 370,
        child: TextFormField(

          validator: (val){
            if(hint == "E-mail") {
              if(val!.isEmpty) {
                return "Enter your email";
              }
              else if(!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(val)) {
                return "your email invalide";
              }
            }else if(val!.length<6&&val.isEmpty&&hint=="Password") {
              return "Enter your Password";
            }else if(val.length<6&&val.isEmpty&&hint=="تأكيد كلمة المرور") {
              return "ادخل ست احرف علي الاقل";
            }else if(val.isEmpty&&hint=="Name") {
              return "Enter your Name";
            }
            return null;
          },
          obscureText:hint=="Password"?true:false ,
          keyboardType:textInputType?? TextInputType.text,
          controller: controller,
          onChanged:(val)=>function!(val),
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color:  Theme.of(context).colorScheme.secondary,
              ),
              isDense: true,
              prefixIcon: hint=='ابحث عن الأيه بالرقم'?null:Icon(iconData),
              contentPadding: EdgeInsets.all(10),
              suffixIcon: hint=='ابحث عن الأيه بالرقم'?IconButton(onPressed:callback, icon: Icon(iconData2)):null,
              border:WidgetOutLineBorder(context),
              focusedBorder: WidgetOutLineBorder(context),
              enabledBorder: WidgetOutLineBorder(context)
          ),
        ),
      ),
    );
  }
  WidgetOutLineBorder(BuildContext context){
    return  OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.secondary,
        )
    );
  }
}