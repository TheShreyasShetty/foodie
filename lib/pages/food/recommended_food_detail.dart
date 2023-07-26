import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

import '../../widgets/app_icon.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(size: Dimensions.font26,text: "Indian Side",)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                    text: "The main components of this dish are rice, meat, marinade, and spices. Basmati rice is definitely prevalent, but you will also find other grains such as seeraga samba and jeerakasala. Depending on where the biryani is from will determine the type of protein; coastal regions, for example, will include fish and shrimp, while inland areas may incorporate chicken or goat.The meat is usually marinated before being cooked, and the most common marinade is yogurt-spiced based as the acid in the yogurt helps to tenderize the meat. It is the layers of spices that give a biryani its complex flavor, and these spices can be whole or ground, or individual or a spice mix (such as garam masala). Herbs and seeds may also be a part of the dish, which is often topped with caramelized onion, dried or fresh fruit, nuts, and fresh herbs.The main components of this dish are rice, meat, marinade, and spices. Basmati rice is definitely prevalent, but you will also find other grains such as seeraga samba and jeerakasala. Depending on where the biryani is from will determine the type of protein; coastal regions, for example, will include fish and shrimp, while inland areas may incorporate chicken or goat.The meat is usually marinated before being cooked, and the most common marinade is yogurt-spiced based as the acid in the yogurt helps to tenderize the meat. It is the layers of spices that give a biryani its complex flavor, and these spices can be whole or ground, or individual or a spice mix (such as garam masala). Herbs and seeds may also be a part of the dish, which is often topped with caramelized onion, dried or fresh fruit, nuts, and fresh herbs.The main components of this dish are rice, meat, marinade, and spices. Basmati rice is definitely prevalent, but you will also find other grains such as seeraga samba and jeerakasala. Depending on where the biryani is from will determine the type of protein; coastal regions, for example, will include fish and shrimp, while inland areas may incorporate chicken or goat.The meat is usually marinated before being cooked, and the most common marinade is yogurt-spiced based as the acid in the yogurt helps to tenderize the meat. It is the layers of spices that give a biryani its complex flavor, and these spices can be whole or ground, or individual or a spice mix (such as garam masala). Herbs and seeds may also be a part of the dish, which is often topped with caramelized onion, dried or fresh fruit, nuts, and fresh herbs.The main components of this dish are rice, meat, marinade, and spices. Basmati rice is definitely prevalent, but you will also find other grains such as seeraga samba and jeerakasala. Depending on where the biryani is from will determine the type of protein; coastal regions, for example, will include fish and shrimp, while inland areas may incorporate chicken or goat.The meat is usually marinated before being cooked, and the most common marinade is yogurt-spiced based as the acid in the yogurt helps to tenderize the meat. It is the layers of spices that give a biryani its complex flavor, and these spices can be whole or ground, or individual or a spice mix (such as garam masala). Herbs and seeds may also be a part of the dish, which is often topped with caramelized onion, dried or fresh fruit, nuts, and fresh herbs.",
                  ),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            )
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(text: "₹10.00 "+" X "+" 0", color: AppColors.mainBlackColor,size: Dimensions.font26,),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(top: Dimensions.height15,bottom: Dimensions.height15,left: Dimensions.width20,right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20*2),
                  topRight: Radius.circular(Dimensions.radius20*2),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20, right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
                  child: BigText(text: "₹20 | Add to cart", color: Colors.white,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
