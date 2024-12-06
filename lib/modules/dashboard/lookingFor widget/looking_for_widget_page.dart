import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/dashboard_food_cart.dart';

class LookingForWidgetPage extends StatelessWidget {
  LookingForWidgetPage({super.key});

  final List<Map<String, String>> dataArray = [
    {
      "url":
          "https://media.istockphoto.com/id/1369929551/photo/organic-tomatoes-sale-on-market-stall.jpg?s=1024x1024&w=is&k=20&c=EKwmPrKMluCncAkPejOLI2ICIHjw_pKACkhyEC4lEn8=",
      "title": "Tomato"
    },
    {
      "url":
          "https://plus.unsplash.com/premium_photo-1675365779531-031dfdcdf947?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Potato"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1371203923/photo/close-up-of-cauliflower-on-table.jpg?s=1024x1024&w=is&k=20&c=seMWJc13O2NQmdv5ZfK6ZF3yMDoCiTOqkvVuqzzKkGI=",
      "title": "Cauliflower"
    },
    {
      "url":
          "https://media.istockphoto.com/id/831053534/photo/ingredients-for-carrot-soup.webp?a=1&b=1&s=612x612&w=0&k=20&c=x1Plm1AujlA7FjwUc-iJXf2DLVHef8UqVX64beND5_Y=",
      "title": "Carrot"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What are you looking for?",
          style: TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        GridView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          // build all childs nat first and align height after calculation
          shrinkWrap: true,
          //restrict scroll feature
          physics:  const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemCount: dataArray.length,
          itemBuilder: (ctx, index) {
            final data = dataArray[index];
            return DashboardFoodCart(
              imageUrl: data['url'] ?? "",
              title: data['title'] ?? "N/A",
            );
          },
        ),
      ],
    );
  }
}
