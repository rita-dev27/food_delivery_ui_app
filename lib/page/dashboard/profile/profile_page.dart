import 'package:amicons/amicons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_1/page/dashboard/profile/account_info/account_info_page.dart';
import 'package:flutter_project_1/page/dashboard/profile/change_password/change_password_page.dart';
import 'package:flutter_project_1/page/dashboard/profile/payment_method/payments_method_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> iconlist = [
      Amicons.iconly_profile_curved_fill,
      Amicons.lucide_lock,
      Amicons.flaticon_credit_card_rounded,
      Amicons.iconly_location_curved_fill,
      Amicons.remix_at
    ];
    List<String> title = [
      'Account information',
      'Password',
      'Payment Methods',
      'Delivery Locations',
      'Invite your friends'
    ];
    List<String> subtitle = [
      'Change your Account information',
      'Change your Password',
      'Add your Credit & Debit cards',
      'Change your Delivery Locations',
      'Get \$59 for each invitation!'
    ];
    List<IconData> notificationicon = [
      Amicons.vuesax_notification,
      Amicons.vuesax_notification
    ];
    List<String> notifytitle = ['Notifications', 'Promotional Notifications'];
    List<String> notifysubtitle = [
      'You will receive daily updates',
      'Get notified when promotions'
    ];
    List<IconData> moreiconlist = [
      Amicons.iconly_star_fill,
      Amicons.remix_book2_fill
    ];
    List<String> moretitle = ['Rate Us', 'FAQ'];
    List<String> moresubtitle = [
      'You will receive daily updates',
      'Frequently Asked Questions'
    ];
    List<Widget> generalpages = [
      AccountInfoPage(),
      ChangePasswordPage(),
      PaymentsMethodPage()
    ];
    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text("Profile",
              style: TextStyle(
                fontSize: 17,
                color: Color(0xFF172B4D),
              )),
        ),
        actions: [
          Icon(Amicons.vuesax_notification_1,
              size: 24, color: Color(0xFF42526E)),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile
            Divider(
              color: Color(0xffF4F5F7),
              thickness: 2,
              height: 1,
            ),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(children: [
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 40,
                    child: Image.asset('assets/image/profilepage.jpg'),
                  ),
                  SizedBox(height: 20),
                  Text("Philippe Troussier",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF172B4D),
                      )),
                  SizedBox(height: 20),
                ])),
            SizedBox(height: 26),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  // General
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 16),
                            child: Text("General",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff172B4D),
                                )),
                          ),
                          Divider(
                            color: Color(0xffF4F5F7),
                            thickness: 2,
                            height: 1,
                          ),
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: title.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Column(children: [
                                  ListTile(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  generalpages[index]),
                                        );
                                      },
                                      visualDensity: VisualDensity.compact,
                                      dense: true,
                                      contentPadding: EdgeInsets.zero,
                                      leading: Icon(iconlist[index],
                                          size: 18, color: Color(0xffC1C7D0)),
                                      title: Text(title[index],
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF172B4D),
                                          )),
                                      subtitle: Text(
                                        subtitle[index],
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
                                  SizedBox(height: 10),
                                  index != title.length - 1
                                      ? Divider(
                                          color: Color(0xffF4F5F7),
                                          thickness: 2,
                                          height: 1,
                                        )
                                      : SizedBox(),
                                  SizedBox(height: 10),
                                ]),
                              );
                            },
                          ),
                        ]),
                  ),

                  SizedBox(height: 16),
                  // Notifications
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 16),
                              child: Text("Notifications",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff172B4D),
                                  )),
                            ),
                            Divider(
                              color: Color(0xffF4F5F7),
                              thickness: 2,
                              height: 1,
                            ),
                            ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: notifytitle.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: Column(children: [
                                      ListTile(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AccountInfoPage()),
                                          );
                                        },
                                        visualDensity: VisualDensity.compact,
                                        dense: true,
                                        contentPadding: EdgeInsets.zero,
                                        leading: Icon(notificationicon[index],
                                            size: 18, color: Color(0xffC1C7D0)),
                                        title: Text(notifytitle[index],
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF172B4D),
                                            )),
                                        subtitle: Text(
                                          notifysubtitle[index],
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF7A869A),
                                          ),
                                        ),
                                        trailing: CupertinoSwitch(
                                          value: true,
                                          onChanged: (value) {},
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      index != 1
                                          ? Divider(
                                              color: Color(0xffF4F5F7),
                                              thickness: 2,
                                              height: 1,
                                            )
                                          : SizedBox(),
                                    ]));
                              },
                            )
                          ])),
                  SizedBox(height: 16),
                  // More
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 16),
                            child: Text("More",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff172B4D),
                                )),
                          ),
                          Divider(
                            color: Color(0xffF4F5F7),
                            thickness: 2,
                            height: 1,
                          ),
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: moretitle.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Column(children: [
                                  ListTile(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AccountInfoPage()),
                                        );
                                      },
                                      visualDensity: VisualDensity.compact,
                                      dense: true,
                                      contentPadding: EdgeInsets.zero,
                                      leading: Icon(moreiconlist[index],
                                          size: 18, color: Color(0xffC1C7D0)),
                                      title: Text(moretitle[index],
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF172B4D),
                                          )),
                                      subtitle: Text(
                                        moresubtitle[index],
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
                                  SizedBox(height: 10),
                                  index != 1
                                      ? Divider(
                                          color: Color(0xffF4F5F7),
                                          thickness: 2,
                                          height: 1,
                                        )
                                      : SizedBox(),
                                  SizedBox(height: 10),
                                ]),
                              );
                            },
                          ),
                        ]),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AccountInfoPage()),
                              );
                            },
                            visualDensity: VisualDensity.compact,
                            dense: true,
                            contentPadding: EdgeInsets.zero,
                            leading: Icon(Amicons.remix_login_box,
                                size: 18, color: Color(0xffC1C7D0)),
                            title: Text('Log Out',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF172B4D),
                                )),
                            trailing: Icon(
                              Amicons.remix_arrow_right_s,
                              size: 26,
                              color: Color(0xFFC1C7D0),
                            )),
                      ),
                    ]),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
