import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  var isPressed = true;

  //mainImage
  Widget mainImageWidget(height) => Container(
      height: height/2,
      decoration: BoxDecoration(
        image:DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1498758536662-35b82cd15e29?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),fit:
        BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:48,left: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                onPressed: (){
                  Navigator.pop(context);
                }),

            IconButton(
              icon:(isPressed)? Icon(Icons.bookmark_border,color: Colors.white,size: 28,):
              Icon(Icons.bookmark,color: Colors.white,size: 28,),
              onPressed: (){
                setState(() {
                  if(isPressed == true){
                    isPressed = false;
                  }else{
                    isPressed = true;
                  }
                });
              },
            )
          ],
        ),
      ),
    );


  //Bottom Sheet Content

  Widget bottomContent(height, width) => Container(
    margin: EdgeInsets.only(top: height/20),
    width: width,

    child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          //Category
          Text("FREELANCE",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange
            ),
          ),

          SizedBox(height: 12,),


          //Title
          Text("Why The Freelance Life May Get Easier",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),

          SizedBox(height: 12,),

          //like and duration
          Row(
            children: <Widget>[
              Icon(Icons.access_time,color: Colors.grey,size: 16,),
              SizedBox(width: 5,),
              Text("25 sec ago",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14
              ),
              ),
              SizedBox(width: 20,),
              Icon(Icons.thumb_up,color: Colors.grey,size: 16,),
              SizedBox(width: 10,),
              Text("786",style: TextStyle(color: Colors.grey,fontSize: 14),)
            ],
          ),

          SizedBox(
            height: 20,
          ),

          //Profile Pic
          Row(
            children: <Widget>[
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1506919258185-6078bba55d2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"))
                ),
              ),
              SizedBox(width: 10,),
              Text("Ted Milano",style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),),
            ],
          ),

          SizedBox(
            height: 30,
          ),

          //Paragraph
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 16.5,
                height: 1.4
            ),
            textAlign: TextAlign.left,
            maxLines: 8,
          ),

        ],
      ),
    ),
  );





  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
            child: Stack(
              alignment: Alignment.topCenter,
              overflow: Overflow.visible,
              children: <Widget>[

                //Main Image
                mainImageWidget(height),


                //Bottom Sheet
                Container(
                  //Bottom Sheet Dimensions
                  margin: EdgeInsets.only(top:height/2.3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                    ),
                  ),

                  child: bottomContent(height, width),

                ),
              ],
            ),
          ),
    );
  }

}
