import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_hotel_booking/hotel_booking.dart';

class AtlantisPalaceHotel extends StatefulWidget {
  const AtlantisPalaceHotel({super.key});

  @override
  State<AtlantisPalaceHotel> createState() => _AtlantisPalaceHotelState();
}

class _AtlantisPalaceHotelState extends State<AtlantisPalaceHotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('asset/AtlantisPalaceHotel_BG.jpg'),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Atlantis Palace Hotel',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                const Row(
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
                      'Via Spiaggia, 257, 95016 Mascali CT, Italy',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Details',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Modern building on the Fondachello seafront close to Mascali, 30mt from a private beach. It is surrounded by a garden which hosts the pools and the relax areas. It is easily reached via the motorway and is only 12km away from Giardini Naxos and 15km from Taormina. \n\n42 rooms modernly and comfortably furnished. Extremely accurate restaurant service. Private beach, entertainment, shuttle service.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                const Text(
                  'Amenities',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 500,
                  height: 100,
                  child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 80,
                      ),
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: const LinearGradient(colors: [
                                      Colors.cyan,
                                      Colors.blue,
                                    ])),
                                child: const Icon(Icons.local_parking,
                                    size: 14, color: Colors.white)),
                            const Text(
                              'Free Parking',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: const LinearGradient(colors: [
                                      Colors.cyan,
                                      Colors.blue,
                                    ])),
                                child: const Icon(Icons.pool_outlined,
                                    size: 14, color: Colors.white)),
                            const Text(
                              'Pool',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: const LinearGradient(colors: [
                                      Colors.cyan,
                                      Colors.blue,
                                    ])),
                                child: const Icon(Icons.beach_access,
                                    size: 14, color: Colors.white)),
                            const Text(
                              'Beach',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: const LinearGradient(colors: [
                                      Colors.cyan,
                                      Colors.blue,
                                    ])),
                                child: const Icon(Icons.wifi,
                                    size: 14, color: Colors.white)),
                            const Text(
                              'Public Wifi',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: const LinearGradient(colors: [
                                      Colors.cyan,
                                      Colors.blue,
                                    ])),
                                child: const Icon(Icons.flight_takeoff_outlined,
                                    size: 14, color: Colors.white)),
                            const Text(
                              'Airport',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          '\$250.00',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reviews',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '4.7',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
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
                              color: Colors.yellow,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black54,
                              size: 12,
                            ),
                            Text(
                              '1663',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 100),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(colors: [
                          Colors.cyan,
                          Colors.blue,
                        ])),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HotelBooking(),
                            ));
                      },
                      child: Text(
                        'Book Now',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(200, 60),
                          backgroundColor: Colors.transparent,
                          surfaceTintColor: Colors.transparent,
                          shadowColor: Colors.transparent),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
