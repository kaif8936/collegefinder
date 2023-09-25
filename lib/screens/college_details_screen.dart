import 'package:collegefinder/screens/about_college_screen.dart';
import 'package:collegefinder/screens/hostel_facility_screen.dart';
import 'package:collegefinder/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:collegefinder/models/college.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CollegeDetailsScreen extends StatelessWidget {
  final CollegeDetails collegeDetails;

  const CollegeDetailsScreen({
    Key? key,
    required this.collegeDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
          appBar: AppBar(
            leading: Container(
              margin: EdgeInsets.all(11.sp),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            actions: <Widget>[
              Container(
                margin: EdgeInsets.all(11.sp),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.bookmark_add_outlined,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
            backgroundColor: const Color(0xff0E3C6E),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(collegeDetails.college.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 19.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              collegeDetails.college.name,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              collegeDetails.college.description,
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.w, horizontal: 9.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.sp),
                            color: const Color(0xff27C200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                collegeDetails.college.rating.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                ),
                              ),
                              SizedBox(width: 4.w),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 23.sp,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      child: TabBar(
                        tabs: [
                          Tab(text: 'About College'),
                          Tab(text: 'Hostel Facility'),
                          Tab(
                            text: 'Q & A',
                          ),
                          Tab(
                            text: 'Events',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    AboutCollegeScreen(
                        aboutCollege: collegeDetails.aboutCollege),
                    HostelFacilityScreen(
                        hostelFacility: collegeDetails.hostelFacility),
                    const QAWidget(),
                    const EventsWidget(),
                  ],
                ),
              ),
              
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Container(
            height: 50,
            margin: EdgeInsets.all(10.sp),
            child: Button(
              onTap: () {},
              text: "Apply Now",
              buttonType: ButtonType.secondary,
            ),
          )),
    );
  }
}

class QAWidget extends StatelessWidget {

  const QAWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Coming Soon',
        style: TextStyle(fontSize: 18.sp),
      ),
    );
  }
}

class EventsWidget extends StatelessWidget {

  const EventsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Coming Soon',
        style: TextStyle(fontSize: 18.sp),
      ),
    );
  }
}
