import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  hintText: "Buscar Producto",
                  hintStyle: TextStyle(
                    color: Color(0xff9D9EA0),
                  ),
                  filled: true,
                  suffixIcon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFF7B4D),
                            Color(0xffF72727),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffF72727).withOpacity(0.6),
                            blurRadius: 7,
                            offset: Offset(0, 4),
                          ),
                        ]),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  fillColor: Color(0xffF7F8FA),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 76,
                      width: 140,
                      margin: EdgeInsets.only(right: 12, bottom: 12,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFF7B4D),
                            Color(0xffF72727),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffF72727).withOpacity(0.6),
                            blurRadius: 7,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "KikoBank",
                          style: TextStyle(
                            fontSize: 15.5,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        height: 76,
                        width: 220,
                        margin: EdgeInsets.only(right: 12, bottom: 12,),
                        padding: EdgeInsets.only(left: 16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff131416),
                              Color(0xff404546),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pide tu Tarjeta de Credito",
                              style: TextStyle(
                                fontSize: 12.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "te devolvemos hasta el 3% de tu compra",
                              style: TextStyle(
                                fontSize: 10.5,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )),
                    Container(
                        height: 76,
                        width: 220,
                        margin: EdgeInsets.only(right: 12, bottom: 12,),
                        padding: EdgeInsets.only(left: 16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff131416),
                              Color(0xff404546),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pide tu Tarjeta de Credito",
                              style: TextStyle(
                                fontSize: 12.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "te devolvemos hasta el 3% de tu compra",
                              style: TextStyle(
                                fontSize: 15.5,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
