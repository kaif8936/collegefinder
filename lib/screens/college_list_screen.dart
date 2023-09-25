import 'package:collegefinder/models/college.dart';
import 'package:flutter/material.dart';
import 'package:collegefinder/data/dummy_data.dart';
import 'package:collegefinder/screens/college_details_screen.dart';
import 'package:collegefinder/utils/routes.dart';
import 'package:collegefinder/widgets/bottom_navigation.dart';
import 'package:collegefinder/widgets/college_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CollegeListScreen extends StatelessWidget {
  const CollegeListScreen({Key? key}) : super(key: key);

  void _navigateToCollegeDetails(
    BuildContext context,
    College college,
    HostelFacility hostelFacility,
    AboutCollege aboutCollege,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CollegeDetailsScreen(
          collegeDetails: CollegeDetails(
            college: college,
            hostelFacility: hostelFacility,
            aboutCollege: aboutCollege,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: 0, 
        onTap: (index) {
          switch (index) {
            case 0:
              context.push(Routes.search);
              break;
            case 1:
              context.push(Routes.saved);
              break;
            case 2:
              context.push(Routes.savedtwo);
              break;
            case 3:
              context.push(Routes.account);
              break;
          }
        },
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 37.w,
              vertical: 27.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.sp),
                bottomRight: Radius.circular(30.sp),
              ),
              color: const Color(0xff0E3C6E),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 250.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search for colleges, schools...',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      width: 53,
                      height: 53,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors
                            .white, 
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.mic,
                          size: 32,
                          color:
                              Color(0xff0E3C6E), // Color of the microphone icon
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dummyColleges.length,
              itemBuilder: (ctx, index) {
                final college = dummyColleges[index];
                final hostelFacility = dummyHostelFacilities[
                    index]; 
                final aboutCollege = dummyAboutColleges[
                    index];

                return CollegeCard(
                  college: college,
                  onTap: () {
                    _navigateToCollegeDetails(
                      context,
                      college,
                      hostelFacility,
                      aboutCollege,
                    ); 
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
