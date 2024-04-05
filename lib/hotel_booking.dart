import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HotelBooking extends StatefulWidget {
  const HotelBooking({super.key});

  @override
  State<HotelBooking> createState() => _HotelBookingState();
}

class _HotelBookingState extends State<HotelBooking> {
  var _selectedDay;
  int indexValue = 0;
  // final Set<DateTime> _selectedDays = LinkedHashSet<DateTime>(
  //   equals: isSameDay,
  //   hashCode: getHashCode,
  // );
  // final Set<DateTime> events =
  //     LinkedHashMap<DateTime>(equals: isSameDay, hashCode: getHashCode);

  // void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
  //   setState(() {
  //     _focusedDay = focusedDay;
  //     if (_selectedDay) {}
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.cyan,
                Colors.blue,
              ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 30, right: 30),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TableCalendar(
                  weekendDays: [DateTime.sunday],
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.utc(2022, 01, 01),
                  lastDay: DateTime(2030, 01, 01),
                  pageAnimationEnabled: true,
                  shouldFillViewport: true,
                  availableGestures: AvailableGestures.all,
                  calendarStyle: CalendarStyle(
                      weekendTextStyle: TextStyle(color: Colors.blue)),

                  headerStyle: const HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  // calendarBuilders: CalendarBuilders(
                  //   dowBuilder: (context, day) {
                  //     if (day.weekday == DateTime.sunday) {

                  //       return Center(child: Text(text,),)
                  //     }
                  //   },
                  // ),
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      // if (selectedDay != _temp) {
                      //   _DayList[indexValue] = selectedDay;
                      //   indexValue++;
                      // }
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 360),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 60, left: 150),
                child: Text(
                  'Hotel Booking',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text(_focusedDay.toString().split(' ')[0]),
              SizedBox(
                height: 20,
              ),
              const Text(
                'Date',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    '22 january 2025 ',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.arrow_right_alt,
                    color: Colors.blue,
                  ),
                  Text(
                    ' 29 january 2025',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 20),
              const Text(
                'Guests',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  const Text('Adults : '),
                  // DropdownButton<int>(
                  //   value: ,
                  //     items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((int value) {
                  //       return new DropdownMenuItem<int>(
                  //         value: value,
                  //         child:  Text(value.toString()),
                  //         );
                  //     }),
                  //     onChanged: )

                  // DropdownButton<int>(
                  //     items: const [
                  //       DropdownMenuItem(
                  //         child: Text('1'),
                  //         value: 1,
                  //       )
                  //     ],
                  //     onChanged: (value) {
                  //       setState(() {
                  //         return;
                  //       });
                  //     }),
                  SizedBox(
                    child: const DropdownMenu(
                      dropdownMenuEntries: [
                        DropdownMenuEntry(value: 1, label: '1'),
                        DropdownMenuEntry(value: 2, label: '2'),
                        DropdownMenuEntry(value: 3, label: '3'),
                        DropdownMenuEntry(value: 4, label: '4'),
                        DropdownMenuEntry(value: 5, label: '5'),
                        DropdownMenuEntry(value: 6, label: '6'),
                        DropdownMenuEntry(value: 7, label: '7'),
                        DropdownMenuEntry(value: 8, label: '8'),
                        DropdownMenuEntry(value: 9, label: '9'),
                        DropdownMenuEntry(value: 10, label: '10')
                      ],
                      initialSelection: 1,
                      enabled: true,
                      menuStyle: MenuStyle(
                        fixedSize: MaterialStatePropertyAll(Size(10, 200)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Children : '),
                  DropdownMenu(
                    dropdownMenuEntries: [
                      DropdownMenuEntry(value: 1, label: '1'),
                      DropdownMenuEntry(value: 2, label: '2'),
                      DropdownMenuEntry(value: 3, label: '3'),
                      DropdownMenuEntry(value: 4, label: '4'),
                      DropdownMenuEntry(value: 5, label: '5'),
                      DropdownMenuEntry(value: 6, label: '6'),
                      DropdownMenuEntry(value: 7, label: '7'),
                      DropdownMenuEntry(value: 8, label: '8'),
                      DropdownMenuEntry(value: 9, label: '9'),
                      DropdownMenuEntry(value: 10, label: '10')
                    ],
                    initialSelection: 1,
                    enabled: true,
                    menuStyle: MenuStyle(
                      fixedSize: MaterialStatePropertyAll(Size(10, 200)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              const Text(
                'Rooms',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
              ),
              const DropdownMenu(
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 1, label: '1 Room with Kitchen'),
                  DropdownMenuEntry(value: 2, label: '2 Rooms'),
                  DropdownMenuEntry(value: 3, label: '3 Rooms'),
                ],
                initialSelection: 1,
                enabled: true,
                menuStyle: MenuStyle(
                  fixedSize: MaterialStatePropertyAll(Size(10, 200)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 100),
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
                      'Next',
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
              ),
            ],
          ),
        )
      ],
    ));
  }
}
