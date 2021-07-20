import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Register extends StatefulWidget {
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  void validateInput() {
    FormState form = this.formKey.currentState;
    ScaffoldState scaffold = this.scaffoldKey.currentState;

    SnackBar msg = SnackBar(
      content: Text('Halo ' + getNama.text),
    );

    if (form.validate()) {
      scaffold.showSnackBar(msg);
    }
  }

  final getNama = TextEditingController();
  @override
  void dispose() {
    getNama.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: HexColor('333333'),
        elevation: 0,
      ),
      key: scaffoldKey,
      body: Container(
        color: HexColor('333333'),
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Nama Lengkap',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 8,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  autofocus: true,
                  controller: getNama,
                  decoration: InputDecoration(
                    hintText: 'John Doe',
                    hintStyle: TextStyle(
                      color: Colors.grey[600],
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Nama ga boleh kosong yaa!!';
                    }
                  },
                ),
                Container(
                  height: 16,
                ),
                Text(
                  'Nomor Telepon',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 8,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: '0858123456',
                    hintStyle: TextStyle(
                      color: Colors.grey[600],
                    ),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Nomor Telpun ga bole kosong ya!!';
                    }
                  },
                ),
                Container(
                  height: 16,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 8,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'example@gmail.com',
                    hintStyle: TextStyle(
                      color: Colors.grey[600],
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Email ga bole kosong ya!!';
                    }
                  },
                ),
                Container(
                  height: 16,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 8,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _pass,
                  validator: (String value) {
                    if (value.isEmpty) return 'Ya kali password kosong :)';
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: '********',
                    hintStyle: TextStyle(
                      color: Colors.grey[600],
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  obscureText: true,
                  obscuringCharacter: "*",
                ),
                Container(
                  height: 16,
                ),
                Text(
                  'COnfirm Password',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 8,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _confirmPass,
                  decoration: InputDecoration(
                    hintText: '********',
                    hintStyle: TextStyle(
                      color: Colors.grey[600],
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  obscureText: true,
                  obscuringCharacter: "*",
                  validator: (String value) {
                    if (value.isEmpty) return 'Ya kali password kosong :)';
                    if (value != _pass.text) return 'Passwordnya ga sama';
                    return null;
                  },
                ),
                Container(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: validateInput,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(80.0),
                          ),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                            minWidth: 260.0,
                            minHeight: 48.0,
                          ), // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: const Text(
                            'Create Account',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Udah punya akun?? Sini',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      ' Login!!',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
