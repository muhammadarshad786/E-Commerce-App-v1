import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intern/Model/recommended.dart';
import 'package:intern/Views/Widget/heading.dart';
import 'package:intern/Views/Widget/topseller.dart';
import 'package:intern/Views/pages/detailedpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:intern/Views/Widget/Rowcarousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> name=[
    'Home',
    'Mobile',
    'Electronics',
    'Camera',
    'Laptops',
    'Women\n  Store',
    'Men\nStore',
    'Sports\nGame',
    'Health\nCare',
    'Baby\n&Toys'

  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        backgroundColor: Colors.grey.shade50,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Container(
      decoration: BoxDecoration(
       color:  Colors.white,

              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,

                ),
              ],
              borderRadius:const BorderRadius.only(
                bottomLeft: Radius.circular(7),
                bottomRight: Radius.circular(7),
              ),
            ),

          child:Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset(
            "assets/icons/Group 4054.png",
            height: 27,
            width: 34,
          ),
        ),
       const SizedBox(width: 10),
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1 / 2.2,
            child:  TextField(
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color:Colors.blue )),
                enabledBorder:const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xff13548d),
                  ),
                ),
                hintStyle:const TextStyle(fontSize: 12, color:  Color(0xFF263238), fontFamily: 'Poppins'),
                hintText: 'Search Product',
                prefixIcon:Image.asset('assets/icons/Search Icon.png',height: 10,width: 10),
                border: const OutlineInputBorder(

                ),
              ),
            ),
          ),
        ),

         IconButton(
        onPressed: () {},
        icon: Stack(
          children: [
            Image.asset('assets/icons/Chart Button.png', height: 30, width: 30),
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.mic, size: 20, color: Colors.white),
            ),
          ],
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Stack(
          children: [
            Image.asset('assets/icons/Chart Area.png', height: 30, width: 30),
            Padding(
              padding:const EdgeInsets.all(5),
              child: Image.asset('assets/icons/Group 171.png', height: 20, width: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2,left: 22),
              child: Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),

                child: Padding(
                  padding: const EdgeInsets.only(left: 1,top: 0),
                  child: Center(child: const Text('3',style: TextStyle(fontSize: 8,color: Colors.white),)),
                )),
            )
          ],
        ),
      ),
      ],
          ),

        ),
      ),


        body: ListView(
          children: [
           const SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items: bannershow.map((item) {
                return Container(
                    color: Colors.white,

                      child: Image.asset(
                        item.bannerimage,
                        fit: BoxFit.cover,

                      ),

                  );

              }).toList(),
              options: CarouselOptions(
                height: 100,
               aspectRatio: 16/7,
               enlargeCenterPage: true,
                enlargeFactor: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
                autoPlay: true,
              ),
            ),
           const SizedBox(
              height: 5,
            ),
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: bannershow.length,
                effect:const SwapEffect(
                  dotColor: Colors.grey,
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Colors.blue
                ),

              ),
            ),
          const  SizedBox(
              height: 8,
            ),
            Container(
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

                    ),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                 childAspectRatio: 0.5/0.6

                ),
                itemCount: productimage.length,
                itemBuilder: (context, index) {
                  ProductFeature productt=productimage[index];
                 return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailedScreen(imagess:productt.product),
                        ),
                      );
                    },
                    child: Container(
                      width: 55,
                      height: 56,
                      color: Colors.white,

                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              productt.product,
                              fit: BoxFit.fill,
                            ),
                           Expanded(
                                  child: Center(
                                    child: Text(
                                      name[index], style: const TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color.fromRGBO(38,50,56, 1)),
                                    ),
                                  ),

                              ),

                          ],
                        ),
                      ),
                    ),

                  );
                },
              ),
            ),
            const  SizedBox(
              height: 10,
            ),
           Row(
             children: [
              const Padding(
                   padding: EdgeInsets.only(left: 10),
                   child: Text('Recommended For You',style: TextStyle(fontFamily: 'PoppinsSemiBold',fontSize: 16,color: Color.fromRGBO(38,50,56,1)),)),
               Padding(
                 padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.9/2.5-(10)),
                 child: InkWell(child: const Text('See More',style: TextStyle(fontSize: 12,color: Color.fromRGBO(98,98,98, 1),fontFamily: 'PoppinsRegular'),),
                   onTap: (){},),
               ),
             ],
           ),
           const  SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: imagesrecommanded.map((image) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailedScreen(imagess: image.imagepath),
                        ),
                      );
                    },
                    child: RowCarousel(images: [image.imagepath]),
                  );
                }).toList(),
              ),
            ),
            const  SizedBox(
              height: 10,
            ),
               InkWell(
              onTap: () {},
              child: Container(

                margin:const EdgeInsets.only(left: 10,right: 10,top: 2) ,
                child: Image.asset('assets/banner/banner-327x90-(3) 1.jpg',),

              ),
            ),

            const  SizedBox(height: 10),
            Row(
              children: [
               const Padding(
                    padding: EdgeInsets.only(left: 13),
                    child: Text('Featured Products',style: TextStyle(fontFamily: 'PoppinsSemiBold',fontSize: 16),)),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.9/2-(10)),
                  child: InkWell(child:const Text('See More',style: TextStyle(fontSize: 12,color: Color.fromRGBO(98, 98, 98, 1),fontFamily: 'PoppinsRegular',fontWeight: FontWeight.w100),),
                    onTap: (){},),
                ),
              ],
            ),
           const SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: featureproductimage.map((image) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailedScreen(imagess: image.Featureimage),
                        ),
                      );
                    },
                    child: RowCarousel(images: [image.Featureimage]),
                  );
                }).toList(),
              ),
            ),
            const  SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                margin:const EdgeInsets.only(left: 10,right: 10) ,

                child: Image.asset('assets/banner/Group 2165.png'),
              ),
            ),
      const SizedBox(
        height: 10,
      ),
          Container(
        height: 400,
        decoration:const BoxDecoration(
          gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromRGBO(0, 0, 53, 1),
        Color.fromRGBO(48, 43, 99, 90),
        Color.fromRGBO(47, 43, 97, 91),
        Color.fromRGBO(0, 0, 53, 40),
      ],
      stops: [
        0.1,
        0.7,
        0.8,
        0.7,
      ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Budget Store',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'PoppinsSemiBold',
                fontSize: 16,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.5,
              ),
              child: Container(
                height: 30,
                color: Colors.white,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                  ),
                  onPressed: () {},
                  child:const Text(
                    'View All',
                    style: TextStyle(
                      color: Color.fromRGBO(19, 84, 141, 1),
                      fontFamily: 'PoppinsSemiBold',
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
           const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              height: 163.59,
              width: 180.34,
              child: Image.asset('assets/imagesused/Budget-Store-1.png'),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              height: 163.59,
              width: 170.34,
              child: Image.asset('assets/imagesused/Budget-Store-4.png'),
            ),
          ),
        ],
      ),
          const  SizedBox(
        height: 10,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              height: 163.59,
              width: 170.34,
              child: Image.asset('assets/imagesused/Budget-Store-1.png'),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              height: 163.59,
              width: 170.34,
              child: Image.asset('assets/imagesused/Budget-Store-4.png'),
            ),
          ),
        ],
      ),
          ],
        ),
      ),
        const  SizedBox(height: 10),

            InkWell(
              onTap: () {},
              child: Container(
                margin:const EdgeInsets.only(left: 10,right: 10,top: 0) ,
                child: Image.asset('assets/banner/banner-327x90(4).png'),
              ),
            ),
            const  SizedBox(height: 10),
            Row(
              children: [
              const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child:  Text('Top Selling Products',style: TextStyle(fontFamily: 'PoppinsSemiBold',fontSize: 16,color: Color.fromRGBO(38,50,56, 1)),)),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.9/2.2-(10)),
                  child: InkWell(child: const Text('See More',style: TextStyle(fontSize: 12,color: Color.fromRGBO(98,98,98, 1),fontFamily: 'PoppinsRegular',),),
                    onTap: (){},),
                ),
              ],
            ),
           const  SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: topsellingimag.map((image) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailedScreen(imagess: image.Topselling),
                        ),
                      );
                    },

                    child: RowCarousel(images:[ image.Topselling] ),
                  );
                }).toList(),
              ),
            ),
      const  SizedBox(height: 10),
            InkWell(
              onTap: () {},

                child: Image.asset('assets/banner/banner-327x90(5).jpg'),

            ),
            const  SizedBox(height: 20),
          const  Heading(name: 'Top Rated Products', more: 'See More'),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: featureimage.map((image) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailedScreen(imagess: image.featureImage),
                        ),
                      );
                    },
                    child: RowCarousel(images: [image.featureImage]),
                  );
                }).toList(),
              ),
            ),

            const  SizedBox(height: 10),
            Row(
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child:  Text('Featured Seller',style: TextStyle(fontFamily: 'PoppinsSemiBold',fontSize: 16,color: Color.fromRGBO(38,50,56,1)),)),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.9/1.7),
                  child: InkWell(child: const Text('See More',style: TextStyle(fontSize: 12,color: Color.fromRGBO(98,98,98, 1),fontFamily: 'PoppinsRegular'),),
                    onTap: (){},),
                ),
              ],
            ),
           const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: topsellerpic.map((image) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailedScreen(imagess: image.topsellerimage),
                        ),
                      );
                    },
                    child: TopSeller(images: [image.topsellerimage]),
                  );
                }).toList(),
              ),
            ),



          ],
        ),





      ),




    );
  }

}
