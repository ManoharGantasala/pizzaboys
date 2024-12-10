import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_boys/utils/constants/colors.dart';
import 'package:intl/intl.dart';

class THelperFunctions {
  static Color? getColor(String value){
    if(value == 'Green'){
      return Colors.green;
    } else if(value =='Red'){
      return Colors.red;
    }
    else if(value =='Blue'){
      return Colors.blue;
    }
    else if(value =='Pink'){
      return Colors.pink;
    }
    else if(value =='Grey'){
      return Colors.grey;
    }
    else if(value =='Purple'){
      return Colors.purple;
    }else if(value =='Black'){
      return Colors.black;
    }else if(value =='White'){
      return Colors.white;
    }else if(value =='Yellow'){
      return Colors.yellow;
    }else if(value =='Orange'){
      return Colors.deepOrange;
    }else if(value =='Brown'){
      return Colors.brown;
    }else if(value =='Teal'){
      return Colors.teal;
    }else if(value =='Indigo'){
      return Colors.indigo;
    } else{
      return null;
    }
  }
  static void showSnackBar({String? title, required String message}) {
    Get.showSnackbar(GetSnackBar(
      title: title,
      message: message,
      duration: const Duration(milliseconds: 2000),
      dismissDirection: DismissDirection.horizontal,
      animationDuration: const Duration(milliseconds: 500),
      snackPosition: SnackPosition.TOP,
      backgroundColor: TColors.primaryColor,
    ));
  }

  static Future<T?> showModernDialog<T>({
    required String title,
    String? button1Text,
    String? button2Text,
    void Function()? button1Action,
    void Function()? button2Action,
  }) =>
      Get.dialog<T>(
        AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(horizontal: 8),
          content: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (button1Text != null)
                      Expanded(
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                          onPressed: button1Action ?? Get.back,
                          child: Text(button1Text),
                        ),
                      ),
                    if (button1Text != null && button2Text != null)
                      const SizedBox(width: 24),
                    if (button2Text != null)
                      Expanded(
                        child: OutlinedButton(
                          onPressed: button2Action ?? Get.back,
                          child: Text(button2Text),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }
  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }
  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }
  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }
  static String getFormattedDate(DateTime date,{String format = 'dd MMM yyyy'}){
    return DateFormat(format).format(date);
  }
  static List<T> removeDuplicates<T>(List<T> list){
    return list.toSet().toList();
  }
}