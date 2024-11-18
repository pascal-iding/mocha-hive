
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart' as image_picker;
import 'package:flutter_svg/flutter_svg.dart';


class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  File? _profilePicture;

  Future<void> _pickImage() async {
    final picker = image_picker.ImagePicker();
    final pickedFile = await picker.pickImage(
      source: image_picker.ImageSource.gallery
    );

    if (!mounted || pickedFile == null) return;
    
    setState(() {
      _profilePicture = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickImage,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
          image: DecorationImage(
            image: _profilePicture != null 
              ? AssetImage(_profilePicture!.path)
              : const AssetImage(
                'assets/images/default_profile_picture.jpg'
              ),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/camera_icon.svg',
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.onSurfaceVariant,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: SvgPicture.asset(
                  'assets/icons/x_icon.svg',
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.onSurface,
                    BlendMode.srcIn
                  ),
                ),
              )
            ),
          ]
        )
      )
    );
  }
}