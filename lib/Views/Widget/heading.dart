import 'package:flutter/material.dart';

class Heading extends StatelessWidget {

  final String name;
  final String more;
   const Heading({required this.name,required this.more});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
    Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(name,style: const TextStyle(fontFamily: 'PoppinsSemiBold',fontSize: 16,color: Color.fromRGBO(38,50,56,1)),)),
    Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.9/2.2),
      child: InkWell(child: Text(more,style:const TextStyle(fontSize: 12,color: Color.fromRGBO(98,98,98, 1),fontFamily: 'Poppins',),),
      onTap: (){},),
    ),
  ],


    );
  }
}