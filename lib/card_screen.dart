import 'package:flutter/material.dart';
import 'package:flutter_challange_animated_list_view/data_source.dart';
class CardScreen extends StatelessWidget {
  DataSource data;
  CardScreen({required this.data});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
          appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,),
          body: SingleChildScrollView(
            child: Card(
            clipBehavior: Clip.antiAlias,
            color: Theme.of(context).canvasColor,
            elevation: 0,
            child: Column(
            children: [
              Hero(
                  tag: 'image-${data.imageUrl}',
                  child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    image: DecorationImage(
                      image: AssetImage(data.imageUrl),
                      fit: BoxFit.fill
                      ),
                  ),
                ),
              ),
              ListTile(
                
                title: Center(child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text(data.title,
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  data.subtitle,
                  style: TextStyle(color: Colors.white60),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.location_on_outlined,size: 16,), 
                          label: Text(data.location,style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                          style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).canvasColor,),
                          elevation: MaterialStateProperty.all(0),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.favorite,size: 16,), 
                          label: Text(data.likes.toString(),style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                          style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).canvasColor,),
                          elevation: MaterialStateProperty.all(0),
                          ),
                        ),
                ],
              ),
              
              
            ],
              ),
      ),
          ),
    );
  }
}