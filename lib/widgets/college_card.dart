import 'package:collegefinder/models/college.dart';
import 'package:collegefinder/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CollegeCard extends StatelessWidget {
  final College college;
  final VoidCallback onTap; 

  const CollegeCard({super.key, required this.college, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(16.0),
        elevation: 4.0,
        child: Stack(
          children: [
            Column(
              children: [
                
                Container(
                  height: 200.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.h),
                      topLeft: Radius.circular(15.h),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(college.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            college.name,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.5.w, horizontal: 4.5.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.sp),
                              color: const Color(0xff27C200),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  college.rating.toStringAsFixed(1),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            college.description,
                            style: TextStyle(
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Button(
                            onTap: () {},
                            text: 'Apply Now',
                            buttonType: ButtonType.primary,
                          )
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Icon(
                            Icons.notifications,
                            color: Colors.blue,
                          ),
                          Text(
                            college.placement,
                            style: TextStyle(
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye,
                                color: Colors.blue,
                                size: 16.sp,
                              ),
                              SizedBox(width: 2.w),
                              Text(
                                '468+',
                                style: TextStyle(
                                  fontSize: 9.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Positioned(
              top: 10.0, // Adjust the position as needed
              left: 10.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 16.0,
                child: Icon(
                  Icons.share,
                  color: Colors.black,
                  size: 16.0,
                ),
              ),
            ),
            const Positioned(
              top: 10.0, // Adjust the position as needed
              right: 10.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 16.0,
                child: Icon(
                  Icons.bookmark_add_outlined,
                  color: Colors.black,
                  size: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
