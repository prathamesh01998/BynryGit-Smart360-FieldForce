import 'package:Field_Force/component/datapicker.dart';
import 'package:Field_Force/component/dropdownbuttonformfield.dart';
import 'package:Field_Force/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FilterFormState();
  }
}

class FilterFormState extends State<FilterForm> {
  String _utility;
  String _city;
  String _area;
  String _subarea;
  String _requesttype;
  String _priority;
  String _status;
  String _datarange;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildUtility() {
    return DropdownButtonFormField(
      iconSize: 25,
      style: TextStyle(color: Colors.black, fontSize: 18),
      onChanged: (s) {},
      hint: Text("Utility"),
      items: [
        DropdownMenuItem(value: '1', child: Text('Map 1')),
        DropdownMenuItem(value: '2', child: Text('Map 2')),
        DropdownMenuItem(value: '3', child: Text('Map 3')),
      ],
    );
  }

  Widget _buildCity() {
    return DropdownButtonFormField(
      iconSize: 25,
      style: TextStyle(color: Colors.black, fontSize: 18),
      onChanged: (s) {},
      hint: Text("City"),
      items: [
        DropdownMenuItem(value: '1', child: Text('Map 1')),
        DropdownMenuItem(value: '2', child: Text('Map 2')),
        DropdownMenuItem(value: '3', child: Text('Map 3')),
      ],
    );
  }

  Widget _buildArea() {
    return DropdownButtonFormField(
      iconSize: 25,
      style: TextStyle(color: Colors.black, fontSize: 18),
      onChanged: (s) {},
      hint: Text("Area"),
      items: [
        DropdownMenuItem(value: '1', child: Text('Map 1')),
        DropdownMenuItem(value: '2', child: Text('Map 2')),
        DropdownMenuItem(value: '3', child: Text('Map 3')),
      ],
    );
  }

  Widget _buildSubArea() {
    return DropdownButtonFormField(
      iconSize: 25,
      style: TextStyle(color: Colors.black, fontSize: 18),
      onChanged: (s) {},
      hint: Text("Sub Area"),
      items: [
        DropdownMenuItem(value: '1', child: Text('Map 1')),
        DropdownMenuItem(value: '2', child: Text('Map 2')),
        DropdownMenuItem(value: '3', child: Text('Map 3')),
      ],
    );
  }

  Widget _buildRequestType() {
    return DropdownButtonFormField(
      iconSize: 25,
      style: TextStyle(color: Colors.black, fontSize: 18),
      onChanged: (s) {},
      hint: Text("Request Type"),
      items: [
        DropdownMenuItem(value: '1', child: Text('Map 1')),
        DropdownMenuItem(value: '2', child: Text('Map 2')),
        DropdownMenuItem(value: '3', child: Text('Map 3')),
      ],
    );
  }

  Widget _buildPriority() {
    return DropdownButtonFormField(
      iconSize: 25,
      style: TextStyle(color: Colors.black, fontSize: 18),
      onChanged: (s) {},
      hint: Text("Priority"),
      items: [
        DropdownMenuItem(value: '1', child: Text('Map 1')),
        DropdownMenuItem(value: '2', child: Text('Map 2')),
        DropdownMenuItem(value: '3', child: Text('Map 3')),
      ],
    );
  }

  Widget _buildStatus() {
    return DropdownButtonFormField(
      iconSize: 25,
      style: TextStyle(color: Colors.black, fontSize: 18),
      onChanged: (s) {},
      hint: Text("Status"),
      items: [
        DropdownMenuItem(value: '1', child: Text('Map 1')),
        DropdownMenuItem(value: '2', child: Text('Map 2')),
        DropdownMenuItem(value: '3', child: Text('Map 3')),
      ],
    );
  }

  Widget _buildDatePicker() {
    return DatePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        // bottomOpacity: 0.0,
        elevation: 0.0,
        //
        bottom: PreferredSize(
            child: Container(
              color: kgreyColor,
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(1.0)),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: kblack,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text("CLEAR ALL",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600))),
            ),
            onTap: () {
              _formKey.currentState.reset();
            },
          )
        ],
        title: Center(
            child: Text(
          "Filter",
          style: TextStyle(color: kblack),
        )),
        backgroundColor: kwhite,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildUtility(),
                SizedBox(
                  height: 16.0,
                ),
                _buildCity(),
                SizedBox(
                  height: 16.0,
                ),
                _buildArea(),
                SizedBox(
                  height: 16.0,
                ),
                _buildSubArea(),
                SizedBox(
                  height: 16.0,
                ),
                _buildRequestType(),
                SizedBox(
                  height: 16.0,
                ),
                _buildPriority(),
                SizedBox(
                  height: 16.0,
                ),
                _buildStatus(),
                SizedBox(height: 16),
                _buildDatePicker(),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonTheme(
                       minWidth: 150.0,
                      height: 45.0,
                                          child: RaisedButton(
                          color: kwhite,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: kgreyColor, width: 1)),
                          child: Text(
                            'CANCEL',
                            style: TextStyle(color: kgreyColor, fontSize: 16),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    ButtonTheme(
                      minWidth: 150.0,
                      height: 45.0,
                      child: RaisedButton(
                        color: Colors.deepOrangeAccent,
                        child: Text(
                          'APPLY',
                          style: TextStyle(color: kwhite, fontSize: 16),
                        ),
                        onPressed: () {
                          if (!_formKey.currentState.validate()) {
                            return;
                          }

                          _formKey.currentState.save();

                          //Send to API
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
