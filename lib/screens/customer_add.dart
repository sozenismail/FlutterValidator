import 'package:flutter/material.dart';
import 'package:flutter_loginvalidator/mixins/validation_mixin.dart';
import 'package:flutter_loginvalidator/models/customer.dart';
import 'package:flutter_loginvalidator/secondScreen.dart';

class CustomerAdd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CustomerAddState();
}

class CustomerAddState extends State with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  final customer=Customer();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            firstNameField(),
            lastNameField(),
            emailNameField(),
            passwordField(),
            submitButton()
          ],
        ),
      ),
    );
  }

  Widget firstNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Adınız", hintText: "İsmail"),
      // ignore: missing_return
      validator: validateFirstName,
      onSaved: (String value){
        customer.firstName=value;
      },
    );
  }

  Widget lastNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Soyadınız", hintText: "Sözen"),
      validator: validateLastName,
      onSaved: (String value){
        customer.lastName=value;
      },
    );
  }

  Widget emailNameField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: "Mail Adresiniz", hintText: "atsan@gmail.com"),
      validator: validateEmail,
      onSaved: (String email){
        customer.email=email;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(labelText: "Şifreniz", hintText: "şifre"),
      onSaved: (String password){
        customer.password=password;
      },
    );
  }

  Widget submitButton() {



    return RaisedButton(
      child: Text("Kaydet"),
      onPressed: () {

        if( formKey.currentState.validate()){
          //tüm texboxlardaki save i tetikleniyor!
          formKey.currentState.save();

          printCustomer(customer);
          String deger=customer.firstName;
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondScreen(deger)));
        }
      },
    );
  }

  void printCustomer(Customer customer) {

    print(customer.firstName+customer.lastName+customer.email+customer.password);

  }

}
