// ignore_for_file: public_member_api_docs, sort_constructors_first

class College {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final String location;
  final double rating;
  final String placement;

  College({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.location,
    required this.rating,
    required this.placement,
  });
}

class AboutCollege {
  final String description;
  final String location;
  final String studentReview;
  AboutCollege({
    required this.description,
    required this.location,
    required this.studentReview,
  });
}

class HostelFacility {
  final String address;
  final String details;
  final int noBathrooms;
  final int distance;
  final List<String> imageUrls; 

  HostelFacility({
    required this.address,
    required this.details,
    required this.noBathrooms,
    required this.distance,
    required this.imageUrls,
  });
}

class CollegeDetails {
  final College college;
  final HostelFacility hostelFacility;
  final AboutCollege aboutCollege;
  CollegeDetails({
    required this.college,
    required this.hostelFacility,
    required this.aboutCollege,
  });
}
