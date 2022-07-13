import 'package:amazon_clone_flutter/constants/global_variables.dart';
import 'package:amazon_clone_flutter/features/home/widgets/address_box.dart';
import 'package:amazon_clone_flutter/features/home/widgets/carousel_image.dart';
import 'package:amazon_clone_flutter/features/home/widgets/deal_of_day.dart';
import 'package:amazon_clone_flutter/features/home/widgets/top_categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            AddressBox(),
            SizedBox(height: 10),
            TopCategories(),
            SizedBox(height: 10),
            CarouselImage(),
            DealOfDay()
          ],
        ),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 42,
              margin: const EdgeInsets.only(
                left: 15,
              ),
              child: Material(
                borderRadius: BorderRadius.circular(7),
                elevation: 1,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 23,
                        ),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.only(top: 10),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          7,
                        ),
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            7,
                          ),
                        ),
                        borderSide:
                            BorderSide(color: Colors.black38, width: 1)),
                    hintText: 'Search Amazon.in',
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            height: 42,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const Icon(
              Icons.mic,
              color: Colors.black,
              size: 25,
            ),
          )
        ],
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: GlobalVariables.appBarGradient,
        ),
      ),
    );
  }
}
