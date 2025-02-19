import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/home/card_list_page.dart';

class CardPaymentsPage extends StatelessWidget {
  const CardPaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cardlist = [
      'assets/image/cardlogo.jpg',
      'assets/image/mastercardlogo.jpg'
    ];
    List<String> titlelist = ['4086148238059709', '5314098616607150'];
    List<String> subtitlelist = ['Default Payment', 'Not Default'];
    List<IconData> iconlist = [
      Amicons.remix_arrow_right_s,
      Amicons.remix_arrow_right_s
    ];

    return Scaffold(
        backgroundColor: Color(0xffF4F5F7),
        body: Padding(
            padding: EdgeInsets.only(top: 60),
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 16),
                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffF4F5F7),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  SizedBox(height: 16),
                  Text("Payment Methods",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF172B4D),
                      )),
                  SizedBox(height: 20),
                  Divider(
                    color: Color(0xffF4F5F7),
                    thickness: 2,
                    height: 1,
                  ),
                  SizedBox(height: 35),
                  
                  
                  
                  
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Credit Cards",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF172B4D),
                              )),
                        ),
                        SizedBox(height: 16),
                        SizedBox(height: 16),
                        Divider(
                          color: Color(0xffF4F5F7),
                          thickness: 2,
                          height: 1,
                        ),
                        SizedBox(height: 16),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: titlelist.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF4F5F7),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CardListPage()),
                                      );
                                    },
                                    visualDensity: VisualDensity.compact,
                                    dense: true,
                                    contentPadding: EdgeInsets.zero,
                                    leading: Image.asset(cardlist[index]),
                                    title: Text(titlelist[index],
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF172B4D),
                                        )),
                                    subtitle: Text(
                                      subtitlelist[index],
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF7A869A),
                                      ),
                                    ),
                                    trailing: Icon(
                                      Amicons.remix_arrow_right_s,
                                      size: 26,
                                      color: Color(0xFFC1C7D0),
                                    )),
                              ),
                              SizedBox(height: 10),
                            ]);
                          },
                        ),
                      ],
                    ),
                  )
                ])))));
  }
}
