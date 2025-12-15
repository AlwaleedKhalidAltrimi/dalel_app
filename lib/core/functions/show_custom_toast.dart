import '../utils/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

showCustomToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: AppColors.primaryColor,
    textColor: AppColors.white,
    fontSize: 16.0,
  );
}
