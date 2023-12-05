import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work/presentation/style/style.dart';
import '../../../components/container.dart';
import '../../../components/grid_view_list_view.dart';
import '../../../components/gridview_builder.dart';
import '../../../components/list_view_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isButton = false;
  bool isButton2 = false;
  bool isButton3 = false;
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: isButton2 == true
                        ? 240.w
                        : MediaQuery.of(context).size.width / 2,
                    height: 48,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Search',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Style.white)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Style.white)),
                          filled: true,
                          fillColor: Style.white),
                    )),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      isButton2 = !isButton2;
                    });
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.filter_list_alt,
                        color: isButton2 == false
                            ? Style.iconsColor
                            : Style.primaryColor,
                      ),
                    ),
                  ),
                ),
                12.horizontalSpace,
                InkWell(
                  onTap: () {
                    setState(() {
                      isButton = !isButton;
                    });
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.table_rows_sharp,
                        color: (isButton == false)
                            ? Style.iconsColor
                            : Style.primaryColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          (isButton == false)
              ? Expanded(
                  child: isButton2 == false
                      ? const ListViewBuilder()
                      : Row(
                          children: [
                            SizedBox(
                                width: 400.w, child: const ListViewBuilder()),
                            const Spacer(),
                            const BigContainer()
                          ],
                        ),
                )
              : Expanded(
                  child: isButton2 == false
                      ? const GridviewBuilder()
                      : const Row(
                          children: [GridListView(), Spacer(), BigContainer()],
                        ),
                )
        ],
      ),
    );
  }
}
