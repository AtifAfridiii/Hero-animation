import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hero/screen/bag.dart';
import 'package:hero/screen/shoes.dart';
import 'package:hero/screen/watch.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.1),
          Center(
            child: Text(
              'Best items from around',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: height * 0.05),
          Container(
            height:600,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3, // Number of items in the list
              itemBuilder: (BuildContext context, int index) {
                // Return each item in the list
                return Container(
                  width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: (){
                         if(index==0){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes(),));
                         }else if (index==1){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Watch(),));
                         }else if(index==2){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Bag(),));
                         }
                        },
                        child: Hero(
                          transitionOnUserGestures: true,
                          tag: image[index],
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(21),
                            child: image[index], 
                          ),
                        ),
                      ),
                      // Display image from the image list
                      SizedBox(height: height*0.090,),
                      Text(
                        name[index]['title'] ?? '', // Fetch title from the name list
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.red.shade500),
                      ),
                      SizedBox(width: width*0.03,),
                      Text(
                        '\$${name[index]['price'] ?? ''}', // Fetch price from the name list
                        style: TextStyle(fontSize: 16,color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
         
          ],
      ),
    );
  }
}

List<Widget> image = [
  Image.asset('asset/it.jpg',fit: BoxFit.cover,height: 441,),
  Image.asset('asset/it2.jpg',fit: BoxFit.cover,height: 441,),
  Image.asset('asset/it3.jpg',fit: BoxFit.cover,height: 441,),
];

List<Map<String, String>> name = [
  {'title': 'Shoes', 'price': '250'},
  {'title': 'Watch', 'price': '700'},
  {'title': 'Leather Bag', 'price': '499'},
];
