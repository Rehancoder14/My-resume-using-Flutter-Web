import 'package:flutter/material.dart';
import 'package:flutterwebintern/constants/constant.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<bool> changeColor = [];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    for (int i = 0; i < contentList.length; i++) {
      changeColor.add(false);
    }

    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              drawerDash(deviceWidth, deviceHeight),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleWidget(deviceWidth, deviceHeight),
                    mainContent(deviceHeight, deviceWidth)
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget mainContent(var deviceHeight, var deviceWidth) {
    return Container(
      child: Column(
        children: [
          aboutData(deviceHeight, deviceWidth),
          skillsData(deviceHeight, deviceWidth),
          experienceData(deviceHeight, deviceWidth)
        ],
      ),
    );
  }

  Widget drawerDash(var deviceWidth, var deviceHeight) {
    return Container(
      width: deviceWidth * 0.25,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/bg3.jpg',
            ),
            fit: BoxFit.cover),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.only(top: deviceHeight * 0.1),
          child: CircleAvatar(
            backgroundImage: const AssetImage(
              'assets/profile.png',
            ),
            radius: deviceWidth * 0.04,
          ),
        ),
        Center(
          child: Container(
            height: deviceHeight * 0.5,
            width: deviceWidth,
            padding: EdgeInsets.only(top: deviceHeight * 0.03),
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: contentList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        top: deviceHeight * 0.02,
                        left: deviceWidth * 0.07,
                        right: deviceWidth * 0.075),
                    child: InkWell(
                      onHover: (value) {
                        setState(() {
                          changeColor[index] = value;
                        });
                      },
                      onTap: () {
                        setState(() {
                          changeColor[index] = !changeColor[index];
                        });
                      },
                      child: Text(
                        contentList[index],
                        style: TextStyle(
                            color: changeColor[index]
                                ? Colors.blueGrey
                                : Colors.white,
                            fontSize: changeColor[index]
                                ? deviceHeight * 0.04
                                : deviceHeight * 0.03),
                      ),
                    ),
                  );
                }),
          ),
        )
      ]),
    );
  }

  Widget titleWidget(var deviceWidth, var deviceHeight) {
    return Container(
      height: deviceHeight * 0.65,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bgmain.png'), fit: BoxFit.cover)),
      width: deviceWidth * 0.75,
      padding: EdgeInsets.only(
          left: deviceWidth * 0.03,
          right: deviceWidth * 0.05,
          bottom: deviceHeight * 0.15),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Row(
            children: [
              Text('Hello... I am ',
                  style: TextStyle(
                      color: Colors.white, fontSize: deviceHeight * 0.08)),
              Text('Rehan Mahat',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 164, 171, 174),
                      fontSize: deviceHeight * 0.08)),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: deviceHeight * 0.018),
            child: Row(
              children: [
                Text(
                  'Mobile App/ Web developer',
                  style: TextStyle(
                      fontSize: deviceHeight * 0.035, color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: deviceHeight * 0.01),
            child: Text(
              'A highly motivated and dedicated computer engineering graduate seeking an entry-level position in the field of computer engineering. Eager to apply technical knowledge, problem-solving skills, and creativity to contribute to the growth and success of an organization.Worked in multiple live project, and have experience in development as intern',
              style: TextStyle(
                  color: const Color.fromARGB(255, 182, 179, 179),
                  fontSize: deviceHeight * 0.025),
            ),
          )
        ]),
      ),
    );
  }

  Widget aboutData(var deviceHeight, var deviceWidth) {
    return Container(
      width: deviceWidth * 0.5,
      padding:
          EdgeInsets.only(top: deviceHeight * 0.05, left: deviceWidth * 0.01),
      child: Column(children: [
        Row(
          children: [
            Text('About',
                style: TextStyle(
                    fontSize: deviceHeight * 0.05, color: Colors.black)),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: deviceHeight * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headTitle(deviceHeight, deviceWidth, "Name", "Rehan Mahat",
                  icon: Icons.person),
              headTitle(deviceHeight, deviceWidth, 'DOB', 'June 14, 2002',
                  icon: Icons.calendar_month),
              headTitle(deviceHeight, deviceWidth, 'Address', 'Pune',
                  icon: Icons.location_on)
            ],
          ),
        )
      ]),
    );
  }

  Widget experienceData(var deviceHeight, var deviceWidth) {
    return Container(
      width: deviceWidth * 0.5,
      padding: EdgeInsets.only(left: deviceWidth * 0.01),
      child: Column(children: [
        Row(
          children: [
            Text('Experience',
                style: TextStyle(
                    fontSize: deviceHeight * 0.05, color: Colors.black)),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: deviceHeight * 0.04, bottom: deviceHeight * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headTitle(
                deviceHeight,
                deviceWidth,
                "Binary Dots",
                "Oct 2022 - March 2023",
              ),
              const SizedBox(
                height: 10,
              ),
              headTitle(
                deviceHeight,
                deviceWidth,
                'Hutri distribution pvt ltd (Freelance)',
                'Jan 2023 - March 2023',
              ),
              SizedBox(
                height: 10,
              ),
              headTitle(
                deviceHeight,
                deviceWidth,
                'Desktivo Tech',
                'April 2023 - Present',
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ]),
    );
  }
  // Widget portFolioData(var deviceHeight, var deviceWidth) {
  //   return Container(
  //     width: deviceWidth * 0.5,
  //     padding: EdgeInsets.only(left: deviceWidth * 0.01),
  //     child: Column(children: [
  //       Row(
  //         children: [
  //           Text('Portfolio',
  //               style: TextStyle(
  //                   fontSize: deviceHeight * 0.05, color: Colors.black)),
  //         ],
  //       ),
  //       Padding(
  //         padding: EdgeInsets.only(
  //             top: deviceHeight * 0.04, bottom: deviceHeight * 0.04),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             headTitle(deviceHeight, deviceWidth, "GitHub",
  //                 "Oct 2022 - Jan 2023"),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             headTitle(
  //               deviceHeight,
  //               deviceWidth,
  //               'Binary Dots',
  //               'Jan 2023 - March 2023',
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             headTitle(deviceHeight, deviceWidth, 'Hutri distribution pvt ltd',
  //                 'Jan 2023 - March 2023'),
  //             SizedBox(
  //               height: 10,
  //             ),
  //           ],
  //         ),
  //       )
  //     ]),
  //   );
  // }

  Widget skillsData(var deviceHeight, var deviceWidth) {
    return Container(
      height: deviceHeight * 1.1,
      width: deviceWidth * 0.5,
      padding:
          EdgeInsets.only(top: deviceHeight * 0.02, left: deviceWidth * 0.01),
      child: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Text('Skills',
                  style: TextStyle(
                      fontSize: deviceHeight * 0.05, color: Colors.black)),
            ],
          ),
          Container(
              height: deviceHeight,
              width: deviceWidth,
              padding: EdgeInsets.only(top: deviceHeight * 0.07),
              child: GridView.builder(
                  padding: const EdgeInsets.only(bottom: 0),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 2.5),
                  itemCount: skill.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      height: deviceHeight * 0.04,
                      width: deviceWidth * 0.06,
                      child: headTitle(
                          deviceHeight,
                          deviceWidth,
                          skill.keys.elementAt(index),
                          skill.values.elementAt(index),
                          icon: Icons.stars_outlined),
                    );
                  }))
        ]),
      ),
    );
  }

  Widget headTitle(
      var deviceHeight, var deviceWidth, String title, String description,
      {IconData? icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: deviceHeight * 0.03),
        ),
        Text("$description",
            style: TextStyle(
                fontSize: deviceHeight * 0.025, color: Colors.black54))
      ],
    );
  }
}
