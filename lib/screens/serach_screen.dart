import 'package:collegefinder/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  Text(
                    "Find your own way",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  const Icon(
                    Icons.ring_volume,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Search in 600 colleges around!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              //search_bar
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
          child: ListView(
            children: const [
              CustomCard(
                title: 'Top Colleges',
                description:
                    'Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min, and connect with your future.',
                imageUrl:
                    'https://images.pexels.com/photos/901962/pexels-photo-901962.jpeg?auto=compress&cs=tinysrgb&w=600', // Replace with your image URL
              ),
              CustomCard(
                title: 'Top Schools',
                description:
                    'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                imageUrl:
                    'https://images.pexels.com/photos/8613089/pexels-photo-8613089.jpeg?auto=compress&cs=tinysrgb&w=600', // Replace with your image URL
              ),
              CustomCard(
                title: 'Exams',
                description:
                    'Find an end to end information about the exams that are happening in India',
                imageUrl:
                    'https://images.pexels.com/photos/3755760/pexels-photo-3755760.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', // Replace with your image URL
              ),
            ],
          ),
        ),
      ],
    );
  }
}
