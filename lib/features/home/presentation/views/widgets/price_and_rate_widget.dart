import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceAndRateWidget extends StatelessWidget {
  const PriceAndRateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      width: 300,
      height: 48,
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    bottomLeft: Radius.circular(15.r),
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Free',
                  style: Styles.textStyle15.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: const Color(0xffEF8262),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.r),
                    bottomRight: Radius.circular(15.r),
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Free preview',
                  style: Styles.textStyle16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
