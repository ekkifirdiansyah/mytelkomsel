import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: RichText(
            text: TextSpan(
              text: "Hai, ",
              style: TextStyle(
                fontSize: 18,
              ),
              children: [
                TextSpan(
                  text: "Muhammad",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(right: 20),
                width: 30,
                height: 30,
                child: Image.asset(
                  "assets/icons/qrcode.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
          backgroundColor: Color(0xFFEC2028),
          elevation: 0,
        ),
        body: Stack(
          children: [
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                height: 180,
                width: Get.width,
                color: Color(0xFFEC2020),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Column(
                    children: [
                      ClipPath(
                        clipper: ClipInfoClass(),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          //height: 210,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE52027),
                                Color(0xFFB31217),
                              ],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "081234567890",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Image.asset("assets/logo/simpati_logo.png"),
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Sisa Pulsa Anda",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Rp.34.000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Isi Pulsa",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFF7B731),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Divider(
                                color: Color(0xFFD9D9D9),
                              ),
                              SizedBox(height: 5),
                              RichText(
                                text: TextSpan(
                                  text: "Berlaku sampai ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "19 September 2024",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Telkomsel POIN ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF7B731),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      "172",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            StatusCard(
                                title: "Internet", data: "12.19", satuan: "GB"),
                            StatusCard(
                                title: "Telepon", data: "0", satuan: "Min"),
                            StatusCard(title: "SMS", data: "23", satuan: "SMS"),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                  Container(
                    height: 7,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                      child: Column(
                        children: [
                          // Body
                          Expanded(
                            child: Container(),
                          ),
                          // Navigation
                          Container(
                            height: 100,
                            color: Colors.amber,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [ItemNav(
                                icon: "user",
                                status: true,
                                title: "Akun Saya",
                              ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class ItemNav extends StatelessWidget {
  ItemNav({
    Key? key,
    required this.status,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final bool status;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-active.png"
                : "assets/icons/$icon.png",
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Beranda",
          style: TextStyle(
            color: (status == true) ? Color(0xFFEC2028) : Color(0xFF747D8C),
          ),
        ),
      ],
    );
  }
}

// Card internet, telepon, sms
class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.title,
    required this.data,
    required this.satuan,
  }) : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            RichText(
              text: TextSpan(
                text: data,
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFFEC2028),
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: " $satuan",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF747D8C),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Card logo simpati
class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 65, size.height);
    path.lineTo(size.width, size.height - 90);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

// Background awal
class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
