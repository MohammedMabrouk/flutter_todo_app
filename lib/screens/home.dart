import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/constants/colors.dart';
import '../widgets/todo_item.dart';
import '../constants/strings.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: _buildAppBar(),
      body: Container(
        child: Column(
          children: [
            searchBox(),
            Expanded(
                child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 15),
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 20),
                  child: Text(
                    'All ToDos',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ),
                ToDoItem()
              ],
            ))
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: colorBlue,
      title: Row(
        children: [
          SizedBox(
              height: 20,
              width: 20,
              child: SvgPicture.asset('assets/icons/ic_menu.svg',
                  color: colorWhite)),
          Expanded(
            child: Text(
              Strings.appName,
              style: TextStyle(fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
              height: 20,
              width: 20,
              child: SvgPicture.asset('assets/icons/ic_add.svg',
                  color: colorWhite)),
        ],
      ),
    );
  }
}

class searchBox extends StatelessWidget {
  const searchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorBlue,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5), bottomRight: Radius.circular(10))),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: colorWhite, borderRadius: BorderRadius.circular(10)),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(
                  Icons.search,
                  color: colorBlack,
                  size: 20,
                ),
                prefixIconConstraints:
                    BoxConstraints(maxHeight: 20, minWidth: 25),
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: colorGrey)),
          )),
    );
  }
}
