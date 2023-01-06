import 'package:determinas_chat/utils/utils.dart';
import 'package:determinas_chat/widgets/profile_widgets/custom_circular_avater_holder.dart';
import 'package:determinas_chat/widgets/profile_widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = getScreenSize(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 31,
              ),
              IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: const Color(0xff397DC8),
                  )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/profile_avater.png",
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 9.69,
                      ),
                      Text(
                        "Jane Doe",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff333333)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: size.width * 0.23,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xffA5A2A2)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit,
                          size: 10,
                        ),
                        SizedBox(
                          width: 7.6,
                        ),
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontSize: 9.8,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff333333)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  "Watchful, Talented and Self Disciplined individual aiming to blah lah blah.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff555555)),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomCircularAvaterHolder(
                    avaterIcon: SvgPicture.asset("assets/svg/twitter.svg"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomCircularAvaterHolder(
                    avaterIcon: SvgPicture.asset("assets/svg/facebook.svg"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomCircularAvaterHolder(
                    avaterIcon: SvgPicture.asset("assets/svg/teligram.svg"),
                  )
                ],
              ),
              SizedBox(
                height: 38,
              ),
              CustomTabBar()
            ],
          ),
        ),
      ),
    );
  }
}
