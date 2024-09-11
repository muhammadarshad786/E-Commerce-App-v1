import 'package:flutter/material.dart';

class TopSeller extends StatelessWidget {
  final List<String> images;

  TopSeller({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: images.map((e) => TopSellerBuild(context,e)).toList()

    );
  }

  Widget TopSellerBuild(BuildContext context,String urlImage) {

    return Container(
      // height: 200,//200
      // width:  MediaQuery.of(context).size.height*0.2-30,//150
      height:  MediaQuery.of(context).size.height*0.2+20 ,//247
      width: MediaQuery.of(context).size.width*0.4 ,
      margin: const EdgeInsets.only(left: 10,bottom: 10),
     decoration: BoxDecoration(
         color: Colors.white,
            boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 3,
                ),          
              ],
              borderRadius: const BorderRadius.all(Radius.circular(7))
                    ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(7),topRight: Radius.circular(7),),
                child: Image.asset(
                  urlImage,
                  height: 140,
                  width: MediaQuery.of(context).size.width*0.4 ,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                  padding:const EdgeInsets.only(top: 126,left: 64),
             child: Container(
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.blue
                   ),

                 ),

                 child: Image.asset('assets/imagesused/Last/Rectangle 701.png',height: 40,width: 40,)))
            ],
          ),
        const Center(child: Text('Orient',style: TextStyle(fontFamily: 'OpenSansSemiBold',fontSize: 10,color: Color.fromRGBO(38,50,56, 1)),)),
         const Center(child: Text('Washing Machine',style: TextStyle(fontFamily: 'OpenSansSemiBold',fontSize: 7,color: Color.fromRGBO(19,84,141, 1)),)),

        ],
      ),
    );
  }
}