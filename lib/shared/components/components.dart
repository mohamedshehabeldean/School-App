import 'package:flutter/material.dart';

Widget defaultButton({
  double width=double.infinity,
  Color background=Colors.blue,
  required function,
  required String text,
  bool isuppercase=true,
})=>Container(
  width: width,
  height: 54,
  child: MaterialButton(
    onPressed: function,
    child: Text(
      isuppercase?text.toUpperCase():text,
      style:TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      )
      ,),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Color(0XFF2855AE).withBlue(400),
  ),
);


Widget textFormField({
  required TextEditingController controller,
  required TextInputType type,
  void Function(String)?onsubmitted,
  void Function(String)?onchanged,
  void Function()?sffpressed,
  bool isobsecure=false,
  required  validate,
  required String label,
  IconData? suffix,

})=>TextFormField(
  controller: controller,
  onFieldSubmitted: onsubmitted,
  onChanged:onchanged,
  obscureText:isobsecure,
  validator: validate,
  keyboardType:type ,
  decoration: InputDecoration(
    labelText: label,
    border:UnderlineInputBorder(),

    suffixIcon: suffix!=null?IconButton(
        onPressed:sffpressed ,
        icon: Icon(suffix)
    )
        :null,
  ),



);
