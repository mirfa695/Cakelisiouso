import 'package:cake/api_services/api_service.dart';
import 'package:cake/custom_widgets/CustomContainer.dart';
import 'package:cake/custom_widgets/CustomText.dart';
import 'package:cake/custom_widgets/cusom_item_container.dart';
import 'package:cake/custom_widgets/custom_listtile.dart';
import 'package:cake/utilities/textstyle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Cakeliciouso',style: Text1.textStyle,),centerTitle: true,backgroundColor: Colors.deepOrange[200]?.withOpacity(.4),),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/img_2.png'),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomText(text: 'Occasions', size: 40),
              CarouselSlider(
                items: [
                  CustomContainer(
                    img:
                        'https://www.doughandcream.com/wp-content/uploads/2023/04/2-1.jpeg',
                    text: 'Birthday',
                  ),
                  CustomContainer(
                    img:
                        'https://www.brides.com/thmb/G4mntbTYl7uCGz0d-50U5qyXKps=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/aef-a1eb0550df2645e581844a61585422ac-a1fe8db5082c4bdcb0bb6da5e7cf688a.jpg',
                    text: 'Wedding',
                  ),
                  CustomContainer(
                    img:
                        'https://i.etsystatic.com/8159813/r/il/5be24c/3213275072/il_fullxfull.3213275072_tnoz.jpg',
                    text: 'Anniversary',
                  ),
                  CustomContainer(
                      img:
                          'https://liliyum.com/cdn/shop/products/ValentinesDayHeartShapeCake-frontview_800x.jpg?v=1643717622',
                      text: 'Valentines')
                ],
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(text: 'Our Specials', size: 30),
              FutureBuilder(future: apiService().Getdata('assets/api_data/api_data.json'), builder: (context,snapshot){
                if(snapshot.connectionState==ConnectionState.done){if(snapshot.hasData){
                  return Container(height: 300,
                    child: ListView.builder(itemCount: snapshot.data['products'].length,
                        itemBuilder: (BuildContext context,int index)=>CustomListTile(img: snapshot.data['products'][index]['image'],
                            name: snapshot.data['products'][index]['name'], price: snapshot.data['products'][index]['price'], description: snapshot.data['products'][index]['Description'])),
                  );
                }}
              return Text('Error');}),
              SizedBox(
                height: 10,
              ),
              CustomText(text: 'Desserts', size: 28),
              Container(
                height: 100,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomItemContainer(
                      img:
                          'https://www.thereciperebel.com/wp-content/uploads/2022/05/brownie-sundae-TRR-1200-25-of-40.jpg',
                      name: 'Brownie',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomItemContainer(
                        img:
                            'https://celebratingsweets.com/wp-content/uploads/2023/05/Small-Batch-Vanilla-Cupcakes-9.jpg', name: 'Cupcake',),
                    SizedBox(
                      width: 10,
                    ),
                    CustomItemContainer(
                        img:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAGczHhZ67RJN6iUbtJnM9VAHSvE9sIkHnDA&usqp=CAU', name: 'Macrons',),
                    SizedBox(
                      width: 10,
                    ),
                    CustomItemContainer(
                        img:
                            'https://fullofplants.com/wp-content/uploads/2023/04/vegan-semolina-pudding-with-caramel-sauce-easy-french-inspired-dessert-12-1400x2100.jpg', name: 'Pudding',),
                    SizedBox(
                      width: 10,
                    ),
                    CustomItemContainer(
                        img:
                            'https://bkmedia.bakingo.com/sq-Jar-Cake-13-AA_0.jpg', name: 'Jar cake',)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomContainer(
                img:
                    'https://preppykitchen.com/wp-content/uploads/2022/05/Strawberry-Cake-Recipe-Card.jpg',
                text: 'Customize your cake',
                height: 200,
                align: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
