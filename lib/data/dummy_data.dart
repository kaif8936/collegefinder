import 'package:collegefinder/models/college.dart';

final List<College> dummyColleges = [
  College(
      id: 'c1',
      name: 'GHJK Engineering College',
      imageUrl:
          'https://images.pexels.com/photos/2305098/pexels-photo-2305098.jpeg?auto=compress&cs=tinysrgb&w=600',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Eu ut imperdiet sed nec ullamcorper.',
      location: 'City ABC, State XYZ',
      rating: 4.5,
      placement: 'More than 1000+ students have been placed'),
  College(
    id: 'c2',
    name: 'Bachelor of Technology University',
    imageUrl:
        'https://images.pexels.com/photos/207692/pexels-photo-207692.jpeg?auto=compress&cs=tinysrgb&w=600',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Eu ut imperdiet sed nec ullamcorper.',
    location: 'City DEF, State UVW',
    rating: 4.2,
    placement: 'More than 1000+ students have been placed',
  ),
];

final List<AboutCollege> dummyAboutColleges = [
  AboutCollege(
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
    location:
        'https://www.thestatesman.com/wp-content/uploads/2020/04/googl_ED.jpg',
    studentReview: 'Excellent college with great facilities.',
  ),
  AboutCollege(
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
    location:
        'https://www.thestatesman.com/wp-content/uploads/2020/04/googl_ED.jpg',
    studentReview: 'Amazing place for higher education.',
  ),
];

final List<HostelFacility> dummyHostelFacilities = [
  HostelFacility(
    address: '123 Hostel St, City ABC',
    details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    noBathrooms: 20,
    distance: 1,
    imageUrls: [
      'https://images.pexels.com/photos/3288104/pexels-photo-3288104.png?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/1457847/pexels-photo-1457847.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/1358901/pexels-photo-1358901.jpeg?auto=compress&cs=tinysrgb&w=600'
    ],
  ),
  HostelFacility(
    address: '456 Hostel Ave, City DEF',
    details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    noBathrooms: 15,
    distance: 2,
    imageUrls: [
      'https://images.pexels.com/photos/3288104/pexels-photo-3288104.png?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/1457847/pexels-photo-1457847.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/1358901/pexels-photo-1358901.jpeg?auto=compress&cs=tinysrgb&w=600'
    ],
  ),
];


final List<CollegeDetails> dummyCollegeDetails = [
  CollegeDetails(
    college: dummyColleges[0],
    hostelFacility: dummyHostelFacilities[0],
    aboutCollege: dummyAboutColleges[0],
  ),
  CollegeDetails(
    college: dummyColleges[1],
    hostelFacility: dummyHostelFacilities[0],
    aboutCollege: dummyAboutColleges[0],
  ),
];
