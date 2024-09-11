import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RowCarousel extends StatefulWidget {
  final List<String> images;

  RowCarousel({Key? key, required this.images}) : super(key: key);

  @override
  State<RowCarousel> createState() => _RowCarouselState();
}

class _RowCarouselState extends State<RowCarousel> {

  bool screen=false;
  late double height;
  @override
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // This callback is run after the build has been fully completed
      height = MediaQuery.of(context).size.height;


        setState(() {

          if (height >700)
            {
              screen = true;
            }
          else
            {
              screen = false;
            }

        });



    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: widget.images.map((e) => carouselBuild(context,e)).toList()

    );
  }

  Widget carouselBuild(BuildContext context,String urlImage) {

    return LayoutBuilder(
      builder:  (BuildContext context, BoxConstraints constraints)
      {

        return Container(
          height:  screen ? MediaQuery.of(context).size.height*0.3-15 : MediaQuery.of(context).size.height*0.3+30 ,//247
          width: MediaQuery.of(context).size.width*0.4 ,//165.98   MediaQuery.of(context).size.width*0.4
          clipBehavior: Clip.none,
          margin: const EdgeInsets.only(left: 10,bottom: 3),
          decoration: BoxDecoration(
              color: Colors.white,


              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 3,
                  // offset:const Offset(0, 6),
                ),

              ],
              borderRadius: BorderRadius.all(Radius.circular(7))
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                urlImage,
                height:screen ?  MediaQuery.of(context).size.height*0.2-9 : MediaQuery.of(context).size.height*0.2+20,
                width: MediaQuery.of(context).size.width*0.4,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 3),
                child:  Text('SAMSUNG',style: TextStyle(fontSize: 10,color: Color.fromRGBO(	253,143,31, 1),fontFamily: 'PoppinsSemiBold',),),
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 3),
                child: Text('LED Monitor 24” With High Quality',style: TextStyle(fontSize: 12,fontFamily: 'PoppinsSemiBold',color: Color.fromRGBO(38,50,56,1))),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 3),
                child: Text('QAR 976',style: TextStyle(fontSize: 13,color: Color.fromRGBO(19,84,141, 1),fontFamily: 'PoppinsSemiBold')),
              ),
              Padding(
                padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.2+10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingBar.builder(
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 9,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(Icons.star,color: Color.fromRGBO(253,143,31, 1),),
                      onRatingUpdate: (rating) {

                      },
                    ),
                    Text('(12)',style: TextStyle(fontSize: 7,color: Colors.grey),)
                  ],
                ),
              )
            ],
          ),
        );

      }

    );
  }
}