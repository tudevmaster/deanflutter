import 'package:flutter/material.dart';
import 'package:shopmaytinh/pages/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  double getSmallDiamter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiamter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiamter(context) / 3,
            top: -getSmallDiamter(context) / 3,
            child: Container(
              width: getBigDiamter(context),
              height: getBigDiamter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            right: -getBigDiamter(context) / 4,
            top: -getBigDiamter(context) / 4,
            child: Container(
              width: getBigDiamter(context),
              height: getBigDiamter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Text(
                  "Dear Pro",
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: -getBigDiamter(context) / 2,
            bottom: -getBigDiamter(context) / 2,
            child: Container(
              width: getBigDiamter(context),
              height: getBigDiamter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E9EE),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    // obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.numbers,
                        color: Color(0xFFFF4891),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade100),
                      ),
                      labelText: "Number",
                      enabledBorder: InputBorder.none,
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Color(0xFFFF4891),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade100),
                      ),
                      labelText: "Full Name",
                      enabledBorder: InputBorder.none,
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: Container(
                //     margin: EdgeInsets.fromLTRB(0, 10, 20, 10),
                //     child: Text(
                //       "Quên Mật Khẩu ?",
                //       style: TextStyle(
                //         color: Color(0xFFFF4891),
                //         fontSize: 12,
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 15),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.amber,
                      child: Center(
                        child: Text(
                          "Tạo tài khoản",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Đã có tài khoản ?",
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Text(
                        "Đăng Nhập",
                        style: TextStyle(
                          // fontSize: 1,
                          color: Color(0xFFFF4891),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
