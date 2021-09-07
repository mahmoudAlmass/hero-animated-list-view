import 'package:flutter/material.dart';
import 'package:flutter_challange_animated_list_view/card_screen.dart';
import 'package:flutter_challange_animated_list_view/data_source.dart';

class CardRow extends StatelessWidget {
  final DataSource dataSource ;
  const CardRow({ required this.dataSource});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.push(context, 
        PageRouteBuilder(
          pageBuilder: (_,__,___)=>CardScreen(data: dataSource),
          transitionDuration: (Duration(milliseconds: 500)
          ),
          ),
      ),
          child: Container(
          
        margin: EdgeInsets.fromLTRB(24.0, 16.0, 16.0, 16.0),
        child: Stack(children: [
            Card(color: Color(0xFF272727),
              elevation: 0,
              child: Container(
              height: 190.0,
              margin: EdgeInsets.only(left:46.0),
              decoration: BoxDecoration(
                color: Color(0xFF383838),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: Offset(0.0,10.0)
                )]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 52.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 165,
                              height: 90,
                              child: ListTile(minVerticalPadding: 10, title:Text(dataSource.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 15.0),),
                              subtitle: Text(dataSource.subtitle,style: TextStyle(color: Colors.white38,fontSize: 10),),)),
                          ),
                          ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.more_vert,), 
                            label: Text(""),
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF383838),),
                            elevation: MaterialStateProperty.all(0),
                            padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                            
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 2,indent: 18,endIndent: 190, color: Colors.blueAccent,),
                      Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          children: [
                            ElevatedButton.icon(
                              
                              onPressed: (){},
                              icon: Icon(Icons.location_on_outlined,size: 16,), 
                              label: Text(dataSource.location,style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                              style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF383838),),
                              elevation: MaterialStateProperty.all(0),
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: (){},
                              icon: Icon(Icons.favorite_outlined,size: 16,), 
                              label: Text(dataSource.likes.toString(),style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                              style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF383838),),
                              elevation: MaterialStateProperty.all(0),
                                ),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          
          Hero(
            tag: 'image-${dataSource.imageUrl}',
            
                      child: Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              alignment: Alignment.centerLeft,
              width: 92.0,
              height: 92.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image:DecorationImage(
                    image:AssetImage(dataSource.imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              
            ),
          ),
        
        ],),
      ),
    );
  }
}