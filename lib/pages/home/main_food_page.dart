import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../../utils/colors.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print("current height is "+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
          children: [
            Container(

              child: Container(
                margin: EdgeInsets.only(top: Dimensions.height45,bottom: Dimensions.height15),
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "INDIA", color: AppColors.mainColor,size: 30),
                        Row(
                          children: [
                            SmallText(text: "Udupi", color: Colors.black54,),
                            Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                      ],
                    ),
                    Center(
                       child: Container(
                          width: Dimensions.height45,
                          height: Dimensions.height45,
                          child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24,),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius15),
                            color: AppColors.mainColor,
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
            Expanded(child: SingleChildScrollView(
              child: FoodPageBody(),
            )),
          ],
      ),
    );
  }
}