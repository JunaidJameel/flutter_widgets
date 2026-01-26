import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key});

  Widget _buildForMobile() {
    return Center(
      child: Image.network(
        'https://iili.io/fPuUFEb.png',
      ),
    );
  }

  Widget _buildForTablet() {
    return Center(
      child: Image.network(
        'https://cdn.dribbble.com/userupload/46007040/file/c32fbc9e024e808a6f4e2c2f08c91214.png?resize=1024x768&vertical=center',
      ),
    );
  }

  Widget _buildForWeb() {
    return Center(
      child: Image.network(
        'https://cdn.dribbble.com/userupload/45210521/file/81e248689869d3d80df0d86772e3e8c1.png?resize=1024x768&vertical=center',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;
        final isTablet = constraints.maxWidth < 1024;

        if (isMobile) {
          return _buildForMobile();
        } else if (isTablet) {
          return _buildForTablet();
        } else {
          return _buildForWeb();
        }
      }),
    );
  }
}
