import 'package:flutter/material.dart';
import 'package:project_hotel_booking/atlantis_palace_hotel.dart';

class SearchHotel extends StatefulWidget {
  const SearchHotel({super.key});

  @override
  State<SearchHotel> createState() => _SearchHotelState();
}

class _SearchHotelState extends State<SearchHotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                  Colors.blue,
                  Colors.cyan,
                ])),
            child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Column(
                children: [
                  const Text(
                    'Hotel Search',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Search Hotels',
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 20),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const ListTile(
              leading: Text('Recommended',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  )),
              trailing: Text(
                'View all',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              )),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 1,
                      color: Colors.black12,
                      offset: Offset(0, .9),
                      spreadRadius: 1)
                ]),
            child: ListTile(
              minVerticalPadding: 10,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: SizedBox(
                height: 100,
                child: ClipPath(
                    clipper: const ShapeBorderClipper(
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ))),
                    child: Image.asset(
                      'asset/AtlantisPalaceHotel.jpg',
                      height: 100,
                    )),
              ),
              title: const Text(
                'Atlantis Palace Hotel',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              subtitle: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Via Spiaggia, 257, 95016 \nMascali CT, Italy',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black54,
                        size: 12,
                      ),
                      Text(
                        '1663 Reviews',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ],
              ),
              trailing: const Text(
                '\$250/Key',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AtlantisPalaceHotel(),
                    ));
              },
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 1,
                      color: Colors.black12,
                      offset: Offset(0, .9),
                      spreadRadius: 1)
                ]),
            child: ListTile(
              minVerticalPadding: 10,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: ClipPath(
                  clipper: const ShapeBorderClipper(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ))),
                  child: Image.asset('asset/EllermanHouse.jpg')),
              title: const Text(
                'Ellerman House',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              subtitle: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '180 Kloof Rd, Bantry Bay, \nCape Town, 8005, South Africa',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black54,
                        size: 12,
                      ),
                      Text(
                        '1702 Reviews',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ],
              ),
              trailing: const Text(
                '\$225/Key',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 1,
                      color: Colors.black12,
                      offset: Offset(0, .9),
                      spreadRadius: 1)
                ]),
            child: ListTile(
              minVerticalPadding: 10,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: ClipPath(
                  clipper: const ShapeBorderClipper(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ))),
                  child: Image.asset('asset/LandsEndWayanad.jpg')),
              title: const Text(
                'Lands End Wayanad- Resort & Spa',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              subtitle: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Valathur, Rippon Post, Meppadi,\nWayanad, Kerala 673577',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black54,
                        size: 12,
                      ),
                      Text(
                        '1654 Reviews',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ],
              ),
              trailing: const Text(
                '\$241/Key',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 1,
                      color: Colors.black12,
                      offset: Offset(0, .9),
                      spreadRadius: 1)
                ]),
            child: ListTile(
              minVerticalPadding: 10,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: ClipPath(
                  clipper: const ShapeBorderClipper(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ))),
                  child: Image.asset('asset/LeGrandBellevue.jpg')),
              title: const Text(
                'Le Grand Bellevue',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              subtitle: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Untergstaadstrasse 17, 3780 \nGstaad, Switzerland',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black54,
                        size: 12,
                      ),
                      Text(
                        '6541 Reviews',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ],
              ),
              trailing: const Text(
                '\$309/Key',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 1,
                      color: Colors.black12,
                      offset: Offset(0, .9),
                      spreadRadius: 1)
                ]),
            child: ListTile(
              minVerticalPadding: 10,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: ClipPath(
                  clipper: const ShapeBorderClipper(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ))),
                  child: Image.asset('asset/MercureBristolGrandHotel.jpg')),
              title: const Text(
                'Mercure Bristol Grand Hotel',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              subtitle: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        ' Broad St, Bristol BS1 2EL, \nUnited Kingdom',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black54,
                        size: 12,
                      ),
                      Text(
                        '3540 Reviews',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ],
              ),
              trailing: const Text(
                '\$299/Key',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 1,
                      color: Colors.black12,
                      offset: Offset(0, .9),
                      spreadRadius: 1)
                ]),
            child: ListTile(
              minVerticalPadding: 10,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: ClipPath(
                  clipper: const ShapeBorderClipper(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ))),
                  child: Image.asset('asset/MontagePalmettoBluff.jpg')),
              title: const Text(
                'Montage Palmetto Bluff',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              subtitle: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '477 Mt Pelia Rd, Bluffton, SC \n29910, United States',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black54,
                        size: 12,
                      ),
                      Text(
                        '9852 Reviews',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ],
              ),
              trailing: const Text(
                '\$999/Key',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 1,
                      color: Colors.black12,
                      offset: Offset(0, .9),
                      spreadRadius: 1)
                ]),
            child: ListTile(
              minVerticalPadding: 10,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: ClipPath(
                  clipper: const ShapeBorderClipper(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ))),
                  child: Image.asset('asset/NobuHotel.jpg')),
              title: const Text(
                'Nobu Hotel Los Cabos',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              subtitle: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Los Cangrejos, 23473 Cabo \nSan Lucas, B.C.S., Mexico',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black54,
                        size: 12,
                      ),
                      Text(
                        '1212 Reviews',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ],
              ),
              trailing: const Text(
                '\$265/Key',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 1,
                      color: Colors.black12,
                      offset: Offset(0, .9),
                      spreadRadius: 1)
                ]),
            child: ListTile(
              minVerticalPadding: 10,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: ClipPath(
                  clipper: const ShapeBorderClipper(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ))),
                  child: Image.asset('asset/SpanishCourtHotel.jpg')),
              title: const Text(
                'Spanish Court Hotel',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              subtitle: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '1 St Lucia Ave, Kingston, \nJamaica',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black54,
                        size: 12,
                      ),
                      Text(
                        '2897 Reviews',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ],
              ),
              trailing: const Text(
                '\$132/Key',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 1,
                      color: Colors.black12,
                      offset: Offset(0, .9),
                      spreadRadius: 1)
                ]),
            child: ListTile(
              minVerticalPadding: 10,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: ClipPath(
                  clipper: const ShapeBorderClipper(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ))),
                  child: Image.asset('asset/TheWestinExcelsior_Rome.jpg')),
              title: const Text(
                'The Westin Excelsior, Rome',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              subtitle: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Via Vittorio Veneto, 125, \n00187 Roma RM, Italy',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black54,
                        size: 12,
                      ),
                      Text(
                        '1702 Reviews',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ],
              ),
              trailing: const Text(
                '\$598/Key',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 1,
                      color: Colors.black12,
                      offset: Offset(0, .9),
                      spreadRadius: 1)
                ]),
            child: ListTile(
              minVerticalPadding: 10,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: ClipPath(
                  clipper: const ShapeBorderClipper(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ))),
                  child: Image.asset('asset/TitanicMardanPalace.jpg')),
              title: const Text(
                'Titanic Mardan Palace',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              subtitle: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Kundu Mah. Yaşar Sobutay \nBul. No: 450, D:1, 07112\nAksu/Antalya, Türkiye',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black54,
                        size: 12,
                      ),
                      Text(
                        '7802 Reviews',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ],
              ),
              trailing: const Text(
                '\$445/Key',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
//    
//    asset/EllermanHouse.jpg
//    asset/LandsEndWayanad.jpg
//    
//    asset/MercureBristolGrandHotel.jpg
//    asset/MontagePalmettoBluff.jpg
//    
//    
//    asset/TheWestinExcelsior_Rome.jpg
//    asset/TitanicMardanPalace.jpg
