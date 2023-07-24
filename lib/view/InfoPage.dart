import 'package:flutter/material.dart';
import 'package:tas/model/user_model.dart';

class InfoPage extends StatelessWidget {
  final AllDatum info;
  const InfoPage({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff171725),
        title: Padding(
          padding: const EdgeInsets.only(left:210),
          child: Icon(Icons.favorite_border,color: Colors.white,size: 30,),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff171725)),
        child: Column(children: [

         Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
          child: Image(image: NetworkImage(info.img),fit: BoxFit.fill,)),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(info.title,style: TextStyle(color: Colors.white,fontSize: 30),),
          ),
                   Row(
                                                        
                       children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 80,right: 60),
                            child: Text(info.price,style: TextStyle(color: Colors.white,fontSize: 30)),
                          ),
                           
                           Text("1",style: TextStyle(fontSize: 30,color: Colors.white),),
                           Icon(Icons.add_box,size: 40,color: Colors.green,),
                                ],
                              ),


        ],),
      ),
    );
  }
}
