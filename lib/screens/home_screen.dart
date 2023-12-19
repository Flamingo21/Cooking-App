import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipesapp/components/my_bottom_navigation_bar.dart';
import 'package:recipesapp/components/pageview_creator_list.dart';
import 'package:recipesapp/components/popular_recipe_list.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe7eefb),
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.5,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Gery',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF0E0E2D),
                        ),
                      ),
                      Text(
                        'What do you want to cook today?',
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 117, 117, 117),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                    child:  Image.asset(
                          'assets/images/account.png',
                          width: 40,
                          height: 40,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.5,
                vertical: 10,
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 15,
                ),
                height: 170,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Flexible(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Recipes recomedation",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              Text(
                                'Get your personalized recipe recommendation in a 5 step',
                                overflow: TextOverflow.clip,
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 117, 117, 117),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/hot-soup.png',
                          width: 60,
                          height: 60,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FilledButton.tonal(
                            onPressed: () {}, child: Text('Get started')),
                        OutlinedButton(
                            onPressed: () {}, child: const Text('Skip')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32.5,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular recipes',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0E0E2D),
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffF9AE89),
                    ),
                  )
                ],
              ),
            ),
            const PageViewRecipeList(),
            const SizedBox(
              height: 30.52,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32.5,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Creator',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0E0E2D),
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffF9AE89),
                    ),
                  )
                ],
              ),
            ),
            const PopularCreatorList(),
            const SizedBox(
              height: 30.52,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
