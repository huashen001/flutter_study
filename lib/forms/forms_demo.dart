import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class formDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: ThemeData(primaryColor: Colors.blue),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegidterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState

    //textEditingController.text = 'he';
    textEditingController.addListener(() {
      debugPrint('input：${textEditingController.text}');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onChanged: (value) {
        debugPrint('輸入值：$value');
      },
      onSubmitted: (value) {
        debugPrint('提交至：$value');
      },
      decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: 'Title',
          hintText: '哈哈哈哈哈',
          //border: InputBorder.none
          // border: OutlineInputBorder()
          // border: OutlineInputBorder()
          filled: true),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}

class RegidterForm extends StatefulWidget {
  @override
  _RegidterFormState createState() => _RegidterFormState();
}

class _RegidterFormState extends State<RegidterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String userName ,password;
  bool _autovalidate = false;

  // ignore: non_constant_identifier_names
  void _RegisterFormSubmit(){
    if(registerFormKey.currentState.validate()){
      registerFormKey.currentState.save();
      //debugPrint('userName:$userName');
      //debugPrint('userName:$password');
      registerFormKey.currentState.validate();
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Register success....'),
        )
      );
    }else{
      setState(() {
        _autovalidate = true;
      });
    }

  }
 String validatorUserName(value){
    if(value.isEmpty){
      return 'userName is Required.';
    }
    return null;
 }

  String validatorPassword(value){
    if(value.isEmpty){
      return 'userName is Required.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Username',
            helperText: ''),
            onSaved: (value){
              userName = value;
            },
            validator: validatorUserName,
            autovalidate: _autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
            onSaved: (value){
              password = value;
            },
            validator: validatorPassword,
            autovalidate: _autovalidate,
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                "注册",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              elevation: 0,
              onPressed: _RegisterFormSubmit,
            ),
          )
        ],
      ),
    );
  }
}
