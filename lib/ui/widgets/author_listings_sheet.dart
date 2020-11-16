import 'package:flutter/material.dart';

import 'common/search_textfield.dart';
import 'authors_list.dart';

class AuthorListingsSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),

            //Search Field
            SearchTextField(
              fillColor: Colors.blueGrey[50],
              inputTextColor: Theme.of(context).primaryColor,
              hintTextColor: Colors.black38,
            ),

            SizedBox(height: 20),

            //Authors list
            Expanded(
              child: AuthorsList(),
            ),
          ],
        ),
      ),
    );
  }
}
