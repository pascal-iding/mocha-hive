import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropdownHeader extends StatefulWidget {
  final String icon;
  final String title;
  final Function onTap;
  final bool isExpandedInitially;

  const DropdownHeader({
    super.key, 
    required this.icon, 
    required this.title, 
    required this.onTap,
    this.isExpandedInitially = true,
  });

  @override
  State<DropdownHeader> createState() => _DropdownHeaderState();
}

class _DropdownHeaderState extends State<DropdownHeader> with SingleTickerProviderStateMixin {
  bool _isExpanded = true;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.isExpandedInitially;
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            widget.onTap();
            _toggleExpand();
          },
          child: Container(
            color: Colors.transparent,
            child: _getHeader(),
          )
        ),
        const SizedBox(height: 10),
        Divider(
          color: Theme.of(context).dividerColor,
          thickness: 1,
          height: 0,
        ),
      ],
    );
  }

  Widget _getHeader() {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: SvgPicture.asset(
              widget.icon,
              width: 25,
              height: 25,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const SizedBox(width: 25),
        Text(
          widget.title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Spacer(),
        AnimatedRotation(
          turns: _isExpanded ? 0.5 : 0.0,
          duration: const Duration(milliseconds: 200),
          child: SvgPicture.asset(
            'assets/icons/chevron_down_icon.svg',
            width: 25,
            height: 25,
          ),
        ),
      ],
    );
  }
}