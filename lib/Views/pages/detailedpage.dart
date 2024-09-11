import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:intern/Views/Screen/secondscreen.dart';
import 'dart:ui';

class DetailedScreen extends StatefulWidget {

final String imagess;

  const DetailedScreen({super.key,required this.imagess});

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  String imagessss = '';
  bool moreimage = true;
  bool xs=false;
  bool s=false;
  bool m=false;
  bool l=false;
  bool lx=false;
  bool lxx=false;



  late List<String> productimagefirst;

  List<String> budgetimages = [
    'assets/imagesused/Budget-Store-1.png',
    'assets/imagesused/Budget-Store-2.png',
    'assets/imagesused/Budget-Store-3.png',
    'assets/imagesused/Budget-Store-4.png',
  ];

int  page=0;
@override
  void initState() {
  imagessss = widget.imagess.toString();
  productimagefirst = [
    imagessss,
    'assets/imagesused/Group 295.png',
    'assets/imagesused/Group 296.png',
    'assets/imagesused/Group 297.png',
  ];

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold
      (

        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Image.asset('assets/icons/back.png',height: 15,width: 10,),onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
        },),
        title:const Text( 'Product Detail',style: TextStyle(fontFamily: 'OpenSansBold',fontSize:18,color: Color.fromRGBO(38,50,56,1)),),
        centerTitle: true,
      ),
      bottomNavigationBar: SafeArea(
        child: SizedBox(
      height: 70,
      width: 370,
      child: Row(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width*0.1/2-10,),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration
            (
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset:const Offset(0, 6),
                ),
      
              ],
              color:const Color.fromRGBO(245,246,249,1),
              borderRadius: BorderRadius.circular(6)
          ),
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor:const Color.fromRGBO(245,246,249, 1),
                  foregroundColor: Colors.black,
                  shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                  ),
      
              ),
              onPressed: (){
                setState(() {
      
                });
              },
              child:Image.asset('assets/icons/Path Less.png',height: 20,width: 20,),
            ),
        ),
      
          SizedBox(width: MediaQuery.of(context).size.width*0.1/4,),
         const Text('1',style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'OpenSansBold'),),
          SizedBox(width: MediaQuery.of(context).size.width*0.1/4,),
          Container(
            height: 35,
            width: 35,
      
            decoration: BoxDecoration
              (
                color:const Color.fromRGBO(19, 84, 141, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset:const Offset(0, 6),
                  ),
      
                ],
              borderRadius: BorderRadius.circular(6)
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromRGBO(19, 84, 141, 1),
                foregroundColor: Colors.black,
                
                shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)
      
                ),
      
              ),
              onPressed: (){
                setState(() {
      
                });
              },
              child: Image.asset('assets/icons/Plus Icon.png',height: 20,width: 20,),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.1/2,),
        SizedBox(
      height: MediaQuery.of(context).size.height*0.1/1.3,
      width: MediaQuery.of(context).size.width*0.3,
      child: IconButton( 
        style: IconButton.styleFrom(
              backgroundColor:const Color.fromRGBO(218,218,218, 1),
                foregroundColor: Colors.white,
                shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5)
                    )
                ),
      
            ),
            onPressed: (){},
            icon: Row(
              children: [
                Image.asset('assets/icons/Vector.png',height: 16,width: 16,),
               const SizedBox(width: 10,),
      
                const Text('Add To Cart',style: TextStyle(fontFamily: 'OpenSansBold',fontSize: 10),),
      
              ],
            ),
            
            ),
        ),
          SizedBox(width: MediaQuery.of(context).size.width*0.1/5+3,),
          SizedBox(
      
            height: MediaQuery.of(context).size.height*0.1/1.3,
            width: MediaQuery.of(context).size.width*0.4-20,
            child: ElevatedButton( style: ElevatedButton.styleFrom(
              
                backgroundColor:const Color.fromRGBO(19, 84, 141, 1),
                foregroundColor: Colors.white,
                 
                 shape:const  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(14)
                    )
      
                ),
               
      
            ),
              onPressed: (){},
              child:const  Text('BUY NOW',style: TextStyle(fontFamily: 'OpenSansBold',fontSize: 15),),
            ),
          )
      
        ],
      ),
        ),
      ),
      
      
      
      body: SafeArea(
      
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.white,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
      
                SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
      
                  child:moreimage ? Image.asset(productimagefirst[page],fit: BoxFit.cover,):Image.asset(budgetimages[page],fit: BoxFit.cover,)),
      
      
                 Column(children: [
      
                  Padding(
                  padding:  EdgeInsets.only(
                    top: 10,
                   right: 5,
                    left: MediaQuery.of(context).size.width*0.9),
                  child: Container(
                    height: 40,
                    width: 50,
      
                    decoration: BoxDecoration(
                        color:const Color.fromRGBO(250, 249, 246, 100),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder()
                      ),
      
                      onPressed: (){}, child: Image.asset('assets/icons/Heart Icon 3.png')),
                  ),
                ),
               const SizedBox(height: 10,),
                Padding(
      
                    padding:  EdgeInsets.only(
                     right: 5,
                      left: MediaQuery.of(context).size.width*0.9),
                  child: Container(
                      height: 40,
                    width: 50,
                      decoration: BoxDecoration(
                          color:const Color.fromRGBO(250, 249, 246, 100),
                          borderRadius: BorderRadius.circular(6)
                      ),
      
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder()
                      ),
                      onPressed: (){}, child:Image.asset('assets/icons/share.png'))
                  ),
                ),
                  Padding(
      
                    padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.9,
                    right: 5,
                    top: 140),
                  child: Container(
                      height: 40,
                    width: 50,
                      decoration: BoxDecoration(
                          color:const Color.fromRGBO(250, 249, 246, 100),
                          borderRadius: BorderRadius.circular(6)
                      ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder()
                      ),
                      onPressed: (){}, child:Image.asset('assets/icons/save.png'))
                  ),
                ),
                 ],),
      
              ],
      
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for(int i=0;i<4;i++)
                GestureDetector(
                  onTap: (){
                    setState(() {
                      page=i;
      
      
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
      
                      shape: BoxShape.rectangle,
                      border: Border.all()
                    ),
                    child: moreimage ? Image.asset(productimagefirst[i],fit: BoxFit.fill,):Image.asset(budgetimages[i],fit: BoxFit.fill,),
      
                  ),
                ),
               const SizedBox(
                  width: 10,
                ),
                GestureDetector(
      
      
      
                    child:
      
                        Container(
                          height: 50,
                          width: 50,
      
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5
                            )
                          ),
                          child:Stack(
                           children: [
                            Image.asset('assets/imagesused/Group 297.png',filterQuality: FilterQuality.low,),
                             ClipRRect(
                               child: BackdropFilter(
                                 filter: ImageFilter.blur(sigmaX: 1,sigmaY: 1),
                                 child:  moreimage? const Center(child:  Text('+5',style: TextStyle(fontSize: 14,color: Colors.white,fontFamily: 'OpenSansBold'),)) :const Center(child:  Text('0',style: TextStyle(fontSize: 14,color: Colors.white,fontFamily: 'OpenSansBold'),)),
                               ),
      
      
                             ),
      
                         ],
        )
      
      
                        ),

      
      
      
      
                  onTap: (){
                    setState(() {
      
                          moreimage=!moreimage;
      
                    });
                  },
                ),
      
                const SizedBox(
                  width: 10,
                ),
         Padding(
           padding: const EdgeInsets.only(left: 15),
           child: Column(
            children: [
              GestureDetector(
                child: Image.asset('assets/icons/eye on.png',height: 20,width: 20,),
                onTap: (){},
              ),
             const SizedBox(
                height: 5,
              ),
              GestureDetector(
                child: Image.asset('assets/icons/Vector (1).png',height: 20,width: 20,),
                onTap: (){},
              )
      
            ],
               ),
         ),
         const SizedBox(
                  width: 20,
                ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
      
          const Padding(
             padding:  EdgeInsets.only(left: 6),
             child: Text('11.1k',style: TextStyle(fontSize: 14,fontFamily: 'OpenSansBold',color: Color.fromRGBO(117,117,117, 1)),),
           ),
            Padding(
              padding: const EdgeInsets.only(left: 6,top: 10),
              child: Container(
                height: 10,
                width: 40,
      
               decoration:const  BoxDecoration(
                   color: Colors.orange,
                 borderRadius: BorderRadius.all(Radius.circular(5))
               ),
               child:const Center(child: Text('Free',style: TextStyle(fontSize: 7,color: Colors.white),))),
      
            ),
      
          ],
         )
                   ],
            ),
      
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
               child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const SizedBox(height: 10,),
                const Padding(
                   padding:  EdgeInsets.only(left: 10),
                   child: Text('King Bedset (Brand Name )',style: TextStyle(fontSize: 12,fontFamily: 'OpenSansSemiBold',color: Color.fromRGBO(98,98,98, 1),),),
                 ),
      
                 const Padding(
                   padding: EdgeInsets.only(left: 10,top: 10),
                   child: Text('Comfy Bedset With Premium Quality Fabric Stuff',style: TextStyle(fontSize: 14,fontFamily: 'OpenSansSemiBold',color: Color.fromRGBO(38,50,56, 1)),),
                 ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  const  Padding(
                     padding:  EdgeInsets.only(left: 10,top: 10),
                     child:  Text('Model Number : KB1010',style: TextStyle(fontSize: 12,fontFamily: 'OpenSansSemiBold',color: Color.fromRGBO(151,151,151, 1)),),
                   ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12,top: 8),
                      child: Image.asset('assets/icons/Assured.png',height: 20,width: 56,),
                    ),
      
                  ],),
                 const  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 16.3,
                        width: 34,
                        color: Colors.green,
                        child:const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Padding(
                             padding:  EdgeInsets.only(left: 2,top: 0),
                             child: Text('4.4',style: TextStyle(fontSize: 10,fontFamily: 'PoppinsSemiBold',color: Colors.white),),
                           ),
                           Padding(
                             padding:  EdgeInsets.only(left: 2,top: 2),
                             child: Icon(Icons.star,size: 10,color: Colors.white,),
                           )
      
                         ],
      
                        ),
                      ),
                    ),
                   SizedBox(
                     width: MediaQuery.of(context).size.width*0.1/2-20,
                   ),
                  const Padding(
                     padding:  EdgeInsets.only(left: 6,top: 0),
                     child:  Text('Very Good |2,308 Rating',style: TextStyle(fontSize: 12,fontFamily: 'PoppinsSemiBold',color: Color.fromRGBO(98,98,98,1)),),
                   ),
                   // Image.asset('assets/icons/Group 4054.png',height: 20,width: 20,),
      
                  ],),
                const  SizedBox(height: 10,),
                  Row(children: [
                  const Padding(
                     padding:  EdgeInsets.only(left: 10),
                     child:  Text('QAR 976',style: TextStyle(fontSize: 20,color: Color.fromRGBO(38,50,56,1),fontFamily: 'OpenSansExtra',),),
                   ),
                  const  Padding(
                      padding:  EdgeInsets.only(left: 10),
                      child: Text('QAR 1000',style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 10),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1/4),
                      child: const Text('20% off',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.green),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1/4),
                      child: Image.asset('assets/icons/exclamation mark.png',height: 10,width: 10,)
                    ),
      
                  ],),
                 const Divider(
                    thickness: 1.0,
                  ),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Padding(
                     padding:  EdgeInsets.only(left: 10),
                     child:  Text('Size :',style: TextStyle(fontSize: 16,fontFamily: 'OpenSansBold',color: Color.fromRGBO(38,50,56,1)),),
                   ),
      
                    Padding(
                      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.6+20,top: 8),
                      child: const Text('Size chart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.blue),),
                    ),
                      const SizedBox(width: 6,),
                       Padding(
                         padding: const EdgeInsets.only(top: 5),
                         child: Image.asset('assets/icons/Vectorchart.png',height: 20,width: 20,),
                       ),
      
                  ],
                ),
      
                ],
              ),
            ),
          const  SizedBox(height: 2,),
               Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0,left: 5),
                    child: DottedBorder(
                    strokeWidth: 1,
                    borderType: BorderType.RRect,
                    dashPattern:const [2,4],
                    child:
                                   Stack(
                     children: [
                      SizedBox(
                         height: 32 ,
                                width: 50,
                        child: Image.asset('assets/icons/Group 3727.png',fit: BoxFit.fitWidth,),
                      ),
                     const Padding(
                        padding: EdgeInsets.only(left: 18.0,top: 4),
                        child: Center(child: Text('XS',style: TextStyle(fontFamily: 'OpenSansBold',fontSize: 14),)),
                      ),
      
                     ]
                                   )
                                   ),
                  ),
      
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.1/5,
                  ),
      
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: DottedBorder(
                        strokeWidth: 1,
                        borderType: BorderType.RRect,
                        dashPattern:const [2,4],
                        child:
                        Stack(
                            children: [
                              SizedBox(
                                height: 32 ,
                                width: 50,
                                child: Image.asset('assets/icons/Group 3727.png',fit: BoxFit.fitWidth,),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 23.0,top: 4),
                                child: Center(child: Text('S',style: TextStyle(fontFamily: 'OpenSansBold',fontSize: 14))),
                              ),
      
                            ]
                        )
                    ),
                  ),
      
      
      
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.1/5,
                  ),
                 Container(
                  height: 37,
                  width: 50,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color:const Color.fromRGBO(196,196,196, 1)
                   )
                 ),
                   child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: m ? const Color.fromRGBO(19, 84, 141, 1):Colors.white ,
                            foregroundColor: m ? Colors.white :Colors.black,
      
      
                           
      
                            shape: const RoundedRectangleBorder(
      
      
                            )
                        ),child: const Text('M',style: TextStyle(fontFamily: 'OpenSansBold',fontSize: 14)),onPressed: (){
                          setState(() {
                            m=!m;
                          });
                      },),
                 ),
      
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.1/5,
                  ),
                  Container(
                    height: 37,
                  width: 50,
      
                    decoration: BoxDecoration(
                        border: Border.all(
                            color:const Color.fromRGBO(196,196,196, 1)
                        )
                    ),
                    child: TextButton(
                         style: TextButton.styleFrom(
                             backgroundColor: l ? const Color.fromRGBO(19, 84, 141, 1):Colors.white ,
                             foregroundColor: l ? Colors.white :Colors.black,
                            
                             shape: const RoundedRectangleBorder()
                            ),
                        child: const  Text('L',style: TextStyle(fontFamily: 'OpenSansBold',fontSize: 14)),onPressed: (){
                           setState(() {
                             l=!l;
                           });
                       },),
                  ),
      
      
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.1/5,
                  ),
      
                    Container(
                      height: 37,
                  width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color:const Color.fromRGBO(196,196,196, 1)
                          )
                      ),
                      child: TextButton(
                           style: TextButton.styleFrom(
                               backgroundColor: lx? const Color.fromRGBO(19, 84, 141, 1):Colors.white ,
                               foregroundColor: lx? Colors.white :Colors.black,
                          
      
                               shape: const RoundedRectangleBorder()
                              ),
                          child:const Text('XL',style: TextStyle(fontFamily: 'OpenSansBold',fontSize: 14)),onPressed: (){
                             setState(() {
                               lx=!lx;
                             });
                         },),
                    ),
      
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.1/9,
                  ),
                 Container(
                  height: 37,
                  width: 50,
      
                   decoration: BoxDecoration(
                       border: Border.all(
                           color:const Color.fromRGBO(196,196,196, 1)
                       )
                   ),
                   child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: lxx ? const  Color.fromRGBO(19, 84, 141, 1):Colors.white ,
                            foregroundColor: lxx? Colors.white :Colors.black,
                           
                            shape: const RoundedRectangleBorder()
                        ),
                        child:
                        const Text('XXL',style: TextStyle(fontFamily: 'OpenSansBold',fontSize: 14),),
                        onPressed: (){
                          setState(() {
                            lxx=!lxx;
                          });
                        },),
                 ),
      
      
      
                ]
               ),
            const SizedBox(height: 10,),
             const  Divider(
                 thickness: 1,
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: Row(
                  children: [
                   const Text('Seller :' ,style: TextStyle(fontFamily: 'OpenSansBold',fontSize: 16,color: Color.fromRGBO(38,50,56,1)),),
      
                    Padding(
                      padding:  const EdgeInsets.only(left: 10,top: 7,right: 7),
                      child: Container(
                        height: 16,
                        width: 34,
                        color: Colors.green,
                          child:const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Padding(
                                padding:  EdgeInsets.only(left: 2,top: 0),
                                child: Text('4.4',style: TextStyle(fontSize: 10,fontFamily: 'PoppinsSemiBold',color: Colors.white),),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 2,top: 2),
                                child: Icon(Icons.star,size: 10,color: Colors.white,),
                              )
      
                            ],
      
                          ),
      
      
      
                      ),
                    ),
                  const  Padding(
                      padding:  EdgeInsets.only(left: 8,top: 5),
                      child: Text('RetailNet',style: TextStyle(fontFamily: 'PoppinsSemiBold',color: Colors.blue,fontSize: 12),),
                    ),
                    Padding(
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1/4,top: 3),
                        child: Image.asset('assets/icons/exclamation mark.png',height: 10,width: 10,)
                    ),
                  ],
                 ),
               ),
             const Padding(
                padding:  EdgeInsets.only(left: 75,top: 5),
                child:  Text('14 Days Return Policy',style: TextStyle(fontFamily: 'PoppinsSemiBold',fontSize: 10,color: Colors.grey),),
              ),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1/2),
                child: const Divider(thickness: 1,),
              ),
          ],
      
        ),
      ),
        ),
      ),
      
      
      
      ),
    );
  }






}


