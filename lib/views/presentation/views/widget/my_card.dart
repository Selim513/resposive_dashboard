import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/core/utils/icon_path.dart';

class CustomMyCard extends StatelessWidget {
  const CustomMyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/images/card.png')),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text('Name card',
                  style: AppFonts.getWhiteFont(
                    context,
                  )),
              subtitle: Text(
                'Syah Bandi',
                style: AppFonts.getWhiteFont(context,
                    fontweight: FontWeight.w500, fontSize: 20),
              ),
              trailing: AssetsPath.iconsPath(name: 'gallery'),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 48 - 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('0918 8124 0042 8129',
                      style: AppFonts.getWhiteFont(context, fontSize: 24)),
                  Text(
                    '12/20 - 124',
                    style: AppFonts.getWhiteFont(context,
                            fontweight: FontWeight.w400)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 54 - 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
