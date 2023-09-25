import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:collegefinder/models/college.dart';

class HostelFacilityScreen extends StatelessWidget {
  final HostelFacility hostelFacility;

  const HostelFacilityScreen({Key? key, required this.hostelFacility})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Horizontal images
        SizedBox(
          height: 150.h, // Adjust the height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hostelFacility.imageUrls.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                child: Container(
                  width: 200.w, // Adjust the width as needed
                  height: double.infinity, // Adjust the height as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        12.0), // Adjust the radius as needed
                    image: DecorationImage(
                      image: NetworkImage(hostelFacility.imageUrls[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        // College name
        Padding(
          padding: EdgeInsets.all(16.w),
          child: Text(
            hostelFacility.address,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Address with location icon
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                size: 24.sp,
                color: Colors.blue, 
              ),
              SizedBox(width: 8.w),
              Text(
                'City ABC, State XYZ', 
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
        // Hostel details
        Padding(
          padding: EdgeInsets.all(16.w),
          child: Text(
            hostelFacility.details,
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Facilities:',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 20.sp,
                    color: Colors.blue, 
                  ),
                  SizedBox(
                      width: 4.w),
                  Text(
                    'Distance: ${hostelFacility.distance} km',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.bathtub,
                    size: 20.sp,
                    color: Colors.blue, 
                  ),
                  SizedBox(
                      width: 4.w), 
                  Text(
                    'Number of Bathrooms: ${hostelFacility.noBathrooms}',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
