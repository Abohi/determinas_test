import 'package:determinas_chat/pages/profile_page.dart';
import 'package:determinas_chat/widgets/dashboard_widgets/custom_search_field.dart';
import 'package:determinas_chat/widgets/dashboard_widgets/dashboard_list_item.dart';
import 'package:flutter/material.dart';

class DashBoardControllerPage extends StatelessWidget {
  const DashBoardControllerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff063970),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProfilePage();
            }));
          },
          child: Icon(
            Icons.person_add,
            color: Colors.white,
          ),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              const Text(
                "TUESDAY, OCTOBER 26",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 1,
              ),
              const Text(
                "Member Access",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 13,
              ),
              CustomSearchField(),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Showing: ',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: const Color(0xffA5A2A2),
                                  fontWeight: FontWeight.w400)),
                          TextSpan(
                            text: 'All Users (5,103)',
                            style: TextStyle(
                                fontSize: 12,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.83,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.file_download_outlined),
                    padding: EdgeInsets.all(0),
                  ),
                  SizedBox(
                    width: 26.42,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.sort_by_alpha),
                    padding: EdgeInsets.all(0),
                  ),
                  SizedBox(
                    width: 26.42,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    padding: EdgeInsets.all(0),
                  )
                ],
              ),
              SizedBox(
                height: 31.5,
              ),
              SizedBox(
                width: size.width,
                height: size.height * 0.65,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    if (index < 25) {
                      return DashBoardListItem(
                        isOnline: true,
                      );
                    }
                    return DashBoardListItem(
                      isOnline: false,
                    );
                  },
                  itemCount: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
