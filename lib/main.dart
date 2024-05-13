// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iDealsApp',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Container(
          //color: Colors.black,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Positioned(
                left: 0,
                top: -40,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(76, 245, 180, 164),
                  ),
                ),
              ),
              Positioned(
                left: -40,
                top: 0,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(76, 245, 180, 164),
                  ),
                ),
              ),
              Positioned(
                  top: 130,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        BtnMenu(),
                        Container(margin: EdgeInsets.only(right: 70.0),
                          child:Text("Home", textAlign: TextAlign.center,
                          style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                          ) ,
                        ),
                        btnDarkMode(),
                        btnProfileImg(),
                      ],
                    ),

                  )
              ),

              Container(
                  //color: Colors.black,
                  margin: EdgeInsets.only(top:210, left: 30 ,right: 22.0),

                  child: SingleChildScrollView(
                      child:Column(children: const <Widget>[
                    Row(
                        children: <Widget>[
                          Expanded(
                              child:TextInputWidget()
                          ),
                          filterBtn(),
                        ]
                    ),
                      BannerWidget(),
                      CategoryWidget(),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CardWidget(),
                          CardWidget(),
                        ]
                          ,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CardWidget(),
                            CardWidget(),
                          ]
                          ,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CardWidget(),
                            CardWidget(),
                          ]
                          ,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CardWidget(),
                            CardWidget(),
                          ]
                          ,)





                  ],
                  ))


              ),





            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (value) => {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_sharp),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger),
            label: 'message',
          ),

        ],
      ),

    );
  }
}

//Motif
// ignore: camel_case_types
//Button Menu en stateful widget
class BtnMenu extends StatefulWidget {
  const BtnMenu({super.key});

  @override
  State<BtnMenu> createState() => _BtnMenuState();
}

class _BtnMenuState extends State<BtnMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 50.0),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: IconButton(
            onPressed: () => {},
            iconSize: 22,
            color: Color.fromARGB(164, 234, 58, 14),
            icon: Icon(Icons.menu)));
  }
}

//Button Dark Mode en stateful widget
// ignore: camel_case_types
class btnDarkMode extends StatefulWidget {
  const btnDarkMode({super.key});

  @override
  State<btnDarkMode> createState() => _btnDarkModeState();
}

// ignore: camel_case_types
class _btnDarkModeState extends State<btnDarkMode> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 30.0),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: IconButton(
            onPressed: () => {},
            iconSize: 22,
            color: Color.fromARGB(164, 234, 58, 14),
            icon: Icon(Icons.dark_mode)));
  }
}


//Btn for filtring
class filterBtn extends StatefulWidget {
  const filterBtn({super.key});

  @override
  State<filterBtn> createState() => _filterBtnState();
}

class _filterBtnState extends State<filterBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 30.0, right: 6),
        width: 50,
        height: 50,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: IconButton(
            onPressed: () => {},
            iconSize: 26,
            color: Color.fromARGB(164, 234, 58, 14),
            icon: Icon(Icons.filter_list_alt)));
  }
}


// ignore: camel_case_types
class btnProfileImg extends StatefulWidget {
  const btnProfileImg({super.key});

  @override
  State<btnProfileImg> createState() => _btnProfileImgState();
}

// ignore: camel_case_types
class _btnProfileImgState extends State<btnProfileImg> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 30.0),
        width: 50,
        height: 50,
        decoration: BoxDecoration(

          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: IconButton(
            onPressed: () => {},
            iconSize: 35,
            color: Color.fromARGB(164, 234, 58, 14),
            icon: Icon(Icons.person))

        );
  }
}

//Search Bar
class TextInputWidget extends StatefulWidget {
  const TextInputWidget({super.key});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.0),
          borderRadius: BorderRadius.circular(30.0),

        ),
        suffixIcon: IconButton(onPressed: ()=>{},
          iconSize: 30,
          color: Colors.grey,
          icon: Icon(Icons.search),),
        labelText: "Search",
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 21.0,
            fontFamily: 'Poppins',

          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0)


      ),
    );
  }
}

//Banner for premium product
class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 30.0),
      width: double.infinity,
      height: 240,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/banner.png'),
          fit: BoxFit.cover,
        ),

        //shape: BoxShape.circle,
        //color: Colors.white,
      ),

        child:Stack(children: <Widget>[
          Positioned(
            right: 0,
            left: 0,

            child:Text("PREMIUM SELECTION", textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ) ,
          ),
          Container(
            width: 148,
            height: 38,
            margin: EdgeInsets.only(top: 185.0, left: 130),
            decoration:
            BoxDecoration(
            border: Border.all(
            color: Colors.black, // Couleur du contour
            width: 2, // Largeur du contour
          ),
            //borderRadius: BorderRadius.circular(10), // Bord arrondi du contour
          ),
            child:Positioned(

              left: 0,
              right: 0,

              child:TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                    return Color.fromARGB(255, 0, 0, 0);
                  }),
                ),
                child: Row(

                  children:const <Widget>[

                    SizedBox(width: 20),
                    Text('EXPLORE', textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Poppins',
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_right, size: 22),
                  ],
                ),
              )

          ),
          )

        ]
    ),
    ) ;
  }
}

//Btn scrollable btn for filtering
class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          Container(
            margin: EdgeInsets.only(right: 15.0,),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),


         child:TextButton(
              onPressed: () {},
          style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
            return Color.fromARGB(164, 234, 58, 14);
          }),
          ),
      child: Row(
        children:const <Widget>[
          SizedBox(width: 5),
          Icon(Icons.menu_sharp, size: 22),
          Text('ALL', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Poppins',
              //fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    ),
          ),

          Container(
            margin: EdgeInsets.only(right: 15.0,),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),


            child:TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                  return Color.fromARGB(255, 149, 145, 145);
                }),
              ),
              child: Row(
                children:const <Widget>[
                  SizedBox(width: 5),
                  Icon(Icons.home, size: 22),
                  Text('House', textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Poppins',
                      //fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),),
          Container(margin: EdgeInsets.only(right: 15.0,),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),


            child:TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                  return Color.fromARGB(255, 149, 145, 145);
                }),
              ),
              child: Row(
                children:const <Widget>[
                  SizedBox(width: 5),
                  Icon(Icons.laptop, size: 22),
                  Text('Laptop', textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Poppins',
                      //fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),),
          Container(margin: EdgeInsets.only(right: 15.0,),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),



            child:TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                  return Color.fromARGB(255, 149, 145, 145);
                }),
              ),
              child: Row(
                children:const <Widget>[
                  SizedBox(width: 5),
                  Icon(Icons.tv, size: 22),
                  Text('TV', textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Poppins',
                      //fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),),
          Container(margin: EdgeInsets.only(right: 15.0,),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),



            child:TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                  return Color.fromARGB(255, 149, 145, 145);
                }),
              ),
              child: Row(
                children:const <Widget>[
                  SizedBox(width: 5),
                  Icon(Icons.phone_android, size: 22),
                  Text('Phone', textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Poppins',
                      //fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),),
          Container(margin: EdgeInsets.only(right: 15.0,),
            width: 100,
            height: 100,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),

            child:TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                  return Color.fromARGB(255, 149, 145, 145);
                }),
              ),
              child: Row(
                children:const <Widget>[
                  SizedBox(width: 5),
                  Icon(Icons.car_rental, size: 22),
                  Text('Car', textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Poppins',
                      //fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),),
          // Ajoutez d'autres éléments ici si nécessaire
        ],
      )
      );
  }
}


class CardWidget extends StatefulWidget {
  const CardWidget({super.key});
  /*String Url ="" ;
  String productName ="" ;
  String cityName = "" ;
  String sellerName ="" ;
  double price = 0 ;
  bool isVerified = false;
  bool isFav = false;


  CardWidget({Key? key, required this.Url,
    required this.isVerified, required this.isFav,
    required this.price, required this.sellerName, required this.cityName,
    required this.productName,}) : super(key: key){
    this.Url =this.Url;
    this.isVerified =this.isVerified;
    this.isFav =this.isFav;
    this.price =this.price;
    this.sellerName =this.sellerName;
    this.cityName =this.cityName;
    this.productName =this.productName;

  }*/

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {

    return Container(

      margin: EdgeInsets.only(top: 20.0),
      width: MediaQuery.of(context).size.width / 2 - 30,
      height: 230,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),

      child:Stack(children: <Widget>[
        /*Positioned(
          right: 0,
          left: 0,

          child:Text("PREMIUM SELECTION", textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ) ,
        ),*/

        Container(
          width: 60,
          height: 20,
          margin: EdgeInsets.only(top: 10.0, left: 10),
          decoration:
          BoxDecoration(
            color: Color.fromARGB(164, 234, 58, 14),
            border: Border.all(
              color: Color.fromARGB(164, 234, 58, 14), // Couleur du contour
              width: 0, // Largeur du contour
            ),
            borderRadius: BorderRadius.circular(10), // Bord arrondi du contour
          ),

          child:Text('verified', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

        ),

        Container(
          margin: EdgeInsets.only(bottom: 250, left: 148, ),
          child:IconButton(
            onPressed: () {  },
            icon: Icon(Icons.favorite_border), iconSize: 25,)

        ),


       Container(
            margin: EdgeInsets.only(top: 55, left: 45, ),

            width: 110,
            height: 85,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/banner.png'),
                fit: BoxFit.fill,
              ),
            ),
        ),

        Container(
          margin: EdgeInsets.only(top: 150, ),
          height: 80,
          //color: Colors.red,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:   <Widget>[
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(child:Container(
                  //margin: EdgeInsets.only(left: 10, ),
                  child: Text("Glasses", textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      height: 1.9,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade400,
                    ),
                  )
              )
                ,),

              Expanded(child:Container(
                  margin: EdgeInsets.only(left: 9, ),
                  child: Text("200Dh", textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Poppins',
                      height: 0.7,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
              )
                ,),

              Expanded(child:Container(
                  //margin: EdgeInsets.only(left: 10, bottom: 1 ),
                  child: Text("Tanger", textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      height: 0.1,
                      fontFamily: 'Poppins',
                      //fontWeight: FontWeight.bold,
                      color: Colors.grey.shade400,
                    ),
                  )
              )
                ,)




              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child:Container(
                    //margin: EdgeInsets.only(left: 10, ),
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/avatar.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),

                )
                  ,),

                Expanded(child:Container(
                    margin: EdgeInsets.only(top: 15, right: 5),
                    child: Text("Xavier Lorem", textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11.0,
                        fontFamily: 'Poppins',
                        height: 0.2,
                        //fontWeight: FontWeight.bold,
                        color: Colors.grey.shade400,
                      ),
                    )
                )
                  ,),






              ],
            )
          ],
        ) ,)


      ]
      ),






    );
  }
}





