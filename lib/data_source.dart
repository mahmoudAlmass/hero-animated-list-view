import 'dart:async';
class DataSource {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String location;
  final int likes;

  const DataSource({required this.title,
                    required this.subtitle,
                    required this.imageUrl,
                    required this.location,
                    required this.likes
                  });
  
}
class InitData{
  Future<List<DataSource>> getInitData() async{
    List<DataSource> content= [

    DataSource(
    title: "Deschutes Brewery",
    subtitle:'Beers brewed on-site & gourmet pub grub in a converted auto-body shop with a fireplace & wood beams.',
    imageUrl: 'assets/images/2.jpg',
    location: 'Finland',
    likes: 14),

    DataSource(
    title: "Vietnamese Kitchen",
    subtitle:'Popular counter-serve offering pho, banh mi & other Vietnamese favorites in a stylish setting.',
    imageUrl: 'assets/images/1.jpg',
    location: 'Chile',
    likes: 63),


    DataSource(
    title: "Salt & Straw",
    subtitle:'Quirky flavors & handmade waffle cones draw crowds to this artisinal ice cream maker\'s 3 parlors.',
    imageUrl: 'assets/images/3.jpg',
    location: 'Uruguay',
    likes: 148),



    DataSource(
    title: "Social Club",
    subtitle:'Popular counter-serve offering pho, banh mi & other Vietnamese favorites in a stylish setting.',
    imageUrl: 'assets/images/4.jpg',
    location: 'Sweden',
    likes: 32),


    DataSource(
    title: "TILT",
    subtitle:'Beers brewed on-site & gourmet pub grub in a converted auto-body shop with a fireplace & wood beams.',
    imageUrl: 'assets/images/5.jpg',
    location: 'Spain',
    likes: 45),

    DataSource(
    title: "Chevys",
    subtitle:'Quirky flavors & handmade waffle cones draw crowds to this artisinal ice cream maker\'s 3 parlors.',
    imageUrl: 'assets/images/1-1.jpg',
    location: 'Finland',
    likes: 154),

    DataSource(
    title: "Cinetopia",
    subtitle:'Moviegoers can take food from the on-site eatery to their seats, with table service in 21+ theaters.',
    imageUrl: 'assets/images/2-2.jpg',
    location: 'Japan',
    likes: 50),

    DataSource(
    title: "Salt & Straw",
    subtitle:'Quirky flavors & handmade waffle cones draw crowds to this artisinal ice cream maker\'s 3 parlors.',
    imageUrl: 'assets/images/3-3.jpg',
    location: 'Uruguay',
    likes: 148),

    
    DataSource(
    title: "Social Club",
    subtitle:'Popular counter-serve offering pho, banh mi & other Vietnamese favorites in a stylish setting.',
    imageUrl: 'assets/images/4-4.jpg',
    location: 'Sweden',
    likes: 32),

        DataSource(
    title: "TILT",
    subtitle:'Beers brewed on-site & gourmet pub grub in a converted auto-body shop with a fireplace & wood beams.',
    imageUrl: 'assets/images/5-5.jpg',
    location: 'Spain',
    likes: 45),

    ];
    return Future.value(content);
  } 

}