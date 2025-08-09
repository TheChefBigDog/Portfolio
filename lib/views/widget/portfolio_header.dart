import 'package:flutter/material.dart';

class PortfolioHeader extends StatelessWidget {
  final double heightFraction;

  const PortfolioHeader({super.key, this.heightFraction = 0.12});

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    final headerH = screenH * heightFraction;
    final logoH = headerH * 1.5;

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      elevation: 0,
      toolbarHeight: headerH,
      leadingWidth: logoH + 32,
      leading: Padding(
        padding: const EdgeInsets.only(left: 32),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxH = constraints.maxHeight;
            final logoSize = maxH * 0.7;

            return Image.asset(
              'assets/images/guilt_can_be_a_killer.png',
              height: logoSize,
              width: logoSize,
              fit: BoxFit.contain,
            );
          },
        ),
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 4),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _NavButton(title: "Showcase", onTap: () {}),
              const SizedBox(width: 30),
              _NavButton(title: "Contact Me", onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }
}

class _NavButton extends StatefulWidget {
  final String title;
  final VoidCallback? onTap;

  const _NavButton({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  State<_NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<_NavButton> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: _hovering ? Colors.red : Colors.grey[300],
          ),
          child: Text(widget.title),
        ),
      ),
    );
  }
}
