import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipesapp/models/recipe.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key, this.active, this.index, this.recipe})
      : super(key: key);

  final bool? active;
  final int? index;
  final Recipe? recipe;

  @override
  Widget build(BuildContext context) {
    final double blur = active! ? 16 : 0;
    final double offset = active! ? 4 : 0;
    final double top = active! ? 0 : 46;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(
        top: top,
        bottom: 0,
        right: 15.5,
        left: active! ? 32.5 : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: recipe!.startColor!,
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.1),
            blurRadius: blur,
            offset: Offset(0, offset),
          )
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/${recipe!.recipeImage}'),
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                gradient: LinearGradient(
                    colors: [
                      recipe!.startColor!,
                      recipe!.endColor!.withOpacity(0.3),
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    tileMode: TileMode.clamp,
                    stops: const [0.3, 0.6])),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 16,
                  top: 10,
                ),
                height: 170,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe!.recipeName,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    const Text(
                      'Seafood',
                      style: TextStyle(
                        fontSize: 14,
                        // fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 117, 117, 117),
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          child: SvgPicture.asset(
                              'assets/svg/icon-share-grey.svg'),
                          backgroundColor: Colors.transparent,
                        ),
                        const Text(
                          '30-35 minute',
                          style: TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 117, 117, 117),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          child: SvgPicture.asset(
                              'assets/svg/icon-share-grey.svg'),
                          backgroundColor: Colors.transparent,
                        ),
                        const Text(
                          'Medium',
                          style: TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 117, 117, 117),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          child: Text(
                            recipe!.recipeMaker[0],
                            style: TextStyle(color: recipe!.startColor),
                          ),
                          backgroundColor: recipe!.endColor,
                        ),
                        Text(
                          recipe!.recipeMaker,
                          style: TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 117, 117, 117),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
