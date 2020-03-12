// import 'package:flutter/material.dart';

// class SignUp extends StatefulWidget {
//   @override
//   _SignUpState createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Crear cuenta'),
//         backgroundColor: Colors.blueGrey,
//       ),
//     body: Center(
//         child: ListView(
//           shrinkWrap: true,
//           padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
//           children: <Widget>[
//             Form(
//                 key: _formKey,
//                 child: Column(
//                   children: <Widget>[
//                     // Add TextFormFields and RaisedButton here.
//                     _nameInput(),
//                     Divider(),
//                     _emailInput(),
//                     Divider(),
//                     _passwordInput(),
//                     Divider(),
//                     _phoneInput(),
//                     Divider(),
//                     _politicsInput(),
//                     Divider(),
//                     _carcellsInput(),
//                     Divider(),
//                     _bikeCellsInput(),
//                     SizedBox(height: 30.0),
//                     _submitButton()
//                   ]
//                 )
//             )
//           ],
//         ),
//       )
//     );
//   }

//   Widget _emailInput(){
//     return TextFormField( 
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Por favor ingrese su correo';
//         }
//         return null;
//       },

//       keyboardType: TextInputType.emailAddress,

//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),

//         hintText: 'Correo',
//         labelText: 'Correo',
//         suffixIcon: Icon(Icons.alternate_email),
//         icon: Icon(Icons.email),
//       ),

//       onChanged: (value){
//         setState(() {
//           }
//         );
//       },
//     );
//   }

//   _passwordInput() {
//     return TextFormField(
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Por favor ingrese la contraseña';
//         }
//         return null;
//       },

//       obscureText: true,
//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//         hintText: 'Contraseña',
//         labelText: 'Contraseña',
//         helperText: 'Minimo 6 caracteres',
//         suffixIcon: Icon(Icons.lock),
//         icon: Icon(Icons.lock),
//       ),
//       onChanged: (value){
//         setState(() {
//         });
//       },
//     );
//   }


//   Widget _submitButton(){
//     return ButtonTheme(
//         minWidth: 90.0,
//         height: 40.0,
//         child: RaisedButton(
//           color: Colors.blueGrey,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           onPressed: () {
//             // Validate returns true if the form is valid, otherwise false.
//             if (_formKey.currentState.validate()) {
//               if (_formKey.currentState.validate()){
//                 String url = 'http://18.233.97.235:3000/api/v1/user-signup/';
//                 Map<String, String> headers = {"Content-type": "application/json"};
//                 String json = jsonEncode({"name": _name, "lastName": _lastName, "userName": _userName, "phone": _userPhone, "email": _mail, "password": _password});
                
//                 Response response = await post(url, headers: headers, body: json);

//                 int statusCode = response.statusCode;

//                 if (statusCode == 201){
//                   _showAlert(context);
//                 }
//               }
//             }
//           },
//           child: Text(
//             'Crear usuario',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//     );
//   }

//   _phoneInput() {
//   return TextFormField( 
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Por favor ingrese su telefono';
//         }
//         _validNumberChecker(value);
//         return null;
//       },

//       keyboardType: TextInputType.number,

//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),

//         hintText: 'Telefono',
//         labelText: 'Telefono',
//         suffixIcon: Icon(Icons.phone),
//         icon: Icon(Icons.phone_iphone),
//       ),

//       onChanged: (value){
//         setState(() {
//           }
//         );
//       },
//     );
//   }

//   _nameInput() {
//     return TextFormField(
//       textCapitalization: TextCapitalization.sentences,
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Por favor ingrese su nombre';
//         }
//         return null;
//       },

//       keyboardType: TextInputType.text,

//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),

//         hintText: 'Nombre y apellido',
//         labelText: 'Nombre',
//         suffixIcon: Icon(Icons.account_circle),
//         icon: Icon(Icons.account_circle),
//       ),

//       onChanged: (value){
//         setState(() {
//           }
//         );
//       },
//     );
//   }

//   String _validNumberChecker(String value){

//     if (value[0] != '3'){
//       return 'Por favor ingrese un numero valido';
//     }
//     return null;

//   }

//   _politicsInput() {
//     return TextFormField(
//       maxLines: null,
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Ingrese los horarios y las politicas';
//         }
//         return null;
//       },

//       keyboardType: TextInputType.multiline,

//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),

//         hintText: 'Horarios y politicas',
//         suffixIcon: Icon(Icons.textsms),
//         icon: Icon(Icons.text_format),
//       ),

//       onChanged: (value){
//         setState(() {
//           }
//         );
//       },
//     );
//   }

//   _carcellsInput() {
//     return TextFormField( 
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Ingrese el numero de celdas para autos';
//         }
//         _validNumberChecker(value);
//         return null;
//       },

//       keyboardType: TextInputType.number,

//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),

//         hintText: 'Celdas para autos',
//         labelText: 'Celdas para autos ',
//         suffixIcon: Icon(Icons.directions_car),
//         icon: Icon(Icons.directions_car),
//       ),

//       onChanged: (value){
//         setState(() {
//           }
//         );
//       },
//     );
//   }

//   _bikeCellsInput() {
//     return TextFormField( 
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Ingrese el numero de celdas para motos';
//         }
//         _validNumberChecker(value);
//         return null;
//       },

//       keyboardType: TextInputType.number,

//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),

//         hintText: 'Celdas para motos',
//         labelText: 'Celdas para motos ',
//         suffixIcon: Icon(Icons.motorcycle),
//         icon: Icon(Icons.motorcycle),
//       ),

//       onChanged: (value){
//         setState(() {
//           }
//         );
//       },
//     );
//   }
// }