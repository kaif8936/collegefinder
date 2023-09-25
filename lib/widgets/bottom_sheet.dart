import 'package:collegefinder/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  String selectedOption = ''; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 22.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text(
                    'Sort by',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); 
                },
                child: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          const Divider(
            thickness: 2.0,
            color: Colors.grey,
          ),
          const SizedBox(height: 16.0),
          _buildOption(
            icon: Icons.school,
            title: 'Bachelor of Technology',
            value: 'Bachelor of Technology',
          ),
          _buildOption(
            icon: Icons.architecture,
            title: 'Bachelor of Architecture',
            value: 'Bachelor of Architecture',
          ),
          _buildOption(
            icon: Icons.local_pharmacy,
            title: 'Pharmacy',
            value: 'Pharmacy',
          ),
          _buildOption(
            icon: Icons.gavel,
            title: 'Law',
            value: 'Law',
          ),
          _buildOption(
            icon: Icons.business,
            title: 'Management',
            value: 'Management',
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }

  Widget _buildOption({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon),
              const SizedBox(width: 8.0),
              Text(title),
            ],
          ),
          Radio<String>(
            value: value,
            groupValue: selectedOption,
            onChanged: (newValue) {
              setState(() {
                selectedOption = newValue!;
              });
              context.push(Routes.collegeListScreen);
            },
          ),
        ],
      ),
    );
  }
}
