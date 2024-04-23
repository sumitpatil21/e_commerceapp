import 'package:e_commerceapp/utils/Deatils_Page/Deatils_Page.dart';
import 'package:e_commerceapp/utils/HomePage/ProductDataMap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_widget/ticket_widget.dart';

class BillPayment extends StatefulWidget {
  const BillPayment({super.key});

  @override
  State<BillPayment> createState() => _BillPaymentState();
}

class _BillPaymentState extends State<BillPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
            total = 0;
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Icon(
              Icons.arrow_back_ios,
              size: 25,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Bill Payment",
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40)),
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 500)),
              TicketWidget(
                width: 350,
                height: 600,
                isCornerRounded: true,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(
                          vertical: 10,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 135),
                          child: Text(
                            "💵",
                            style: TextStyle(
                              fontSize: 60,
                            ),
                          ),
                        ),
                        Text(
                          "Payment Successfully",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                        ),
                        Text("uid:CHE987654321CVDKJM",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1)),
                        Padding(padding: EdgeInsets.all(10)),
                        Container(
                          height: 80,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5)),
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'Assest/Images/ProductAllImge/825.jpg'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                    vertical: 10,
                                  )),
                                  Text(
                                    "Akhil Sodvadiya",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  Text(
                                    "ID:251154122521211",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 145, horizontal: 100)),
                        Text(
                          "Total Details :",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(

                            margin: EdgeInsets.all(15),

                          height: 150,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(25)),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Total : "+"$total/- ",style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,letterSpacing:1, ),),
                                    SizedBox(height: 5,),
                                    Text("Gst    :    18%",style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,letterSpacing:1, ),),
                                    SizedBox(height: 5,),
                                    Text("Total Amount : "+"${totalAmount=(total*18/100+total).toInt()}/- ",style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,letterSpacing: 2, ),),
                                    SizedBox(height: 5,),

                                  ],
                                )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

