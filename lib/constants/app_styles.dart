import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static poppinsText(
   {double? size,fontWeight,color}
  ) => GoogleFonts.poppins(
    color: color,
    fontWeight: fontWeight,
    fontSize: size
  );
}
