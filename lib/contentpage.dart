import 'package:flutter/material.dart';
import 'centerpage.dart';
import 'model.dart';

final ScrollController _firstController = ScrollController();
Widget buildSheet() => DraggableScrollableSheet(
  initialChildSize: 0.9,

  builder: (_ , controller) => Container(
    width: 60,
    decoration: const BoxDecoration(
        color: Colors.blue,
      borderRadius: BorderRadius.vertical(top: Radius.circular(20))
    ),
    padding: const EdgeInsets.all(2),
    child: Scrollbar(
      isAlwaysShown: true,
      controller: _firstController,
      child: ListView(
        children:<Widget>[
          Stack(
            children: <Widget>[
              Container(
              height: 350,
              width: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('Images/tree.jpg'),
                fit: BoxFit.fill,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20),
                ),
              ),
            ),
             const Positioned(
                  top: 300,
                  left: 15,
                  child: Text('Picturesque Nebula' , style: TextStyle(fontSize: 30 , fontWeight:
                  FontWeight.bold , color: Colors.white),), ),
          ],
          ),
          Container(
            height: 200,
            width: 100,
            color: Colors.yellow.shade50,
              child: Stack(
                children: <Widget>[
                  const Positioned(
                      top: 10,
                      left: 4,
                      child: Text('Nebula NGC 2014 & NGC 2020',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 16
                        ),
                      ),
                  ),
                  Positioned(
                      top: 30,
                      left: 4,
                      child: Container(
                        width: 350,
                        child: Text('The image features the giant nebula NGC 2014 and its neighbour NGC 2020 which together form part of a vast star-forming region in the Large Magellanic Cloud, a satellite galaxy of the Milky Way, approximately 163 000 light-years away.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade900
                        ),
                        ),
                      ),

                  )
                ],
              ),
            ),
          Container(
            height: 300,
            width: 100,

            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('Images/tree.jpg'),
                fit: BoxFit.fill,
              ),
              ),
            ),
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow.shade50,
            child: Stack(
              children: const <Widget>[
                Positioned(
                    top: 10,
                    left: 8,
                    child: Icon(Icons.location_on),
                ),
                Positioned(
                    top: 14,
                    left: 40,
                    child: Text('L location' ,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                    ), ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Text('Muttra' , style: TextStyle( fontSize: 28 , fontWeight: FontWeight.bold),), )
              ],
            ),
          ),

        ],
      ),
    ),
  ),

);