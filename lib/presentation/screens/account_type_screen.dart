import 'package:flutter/material.dart';

import 'account_details_screen.dart';

class AccountType extends StatefulWidget {
  @override
  _AccountTypeState createState() => _AccountTypeState();
}

enum SingingCharacter { User, Doctor, Clinic, Store, Shelter }

class _AccountTypeState extends State<AccountType> {
  SingingCharacter _character = SingingCharacter.User;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Please Choose Account Type',
            ),
          ),
          ListTile(
            title: const Text('User'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.User,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Doctor'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.Doctor,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Clinic'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.Clinic,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Store'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.Store,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Shelter'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.Shelter,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountDetails()));
            },
            child: Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
          )
        ],
      ),
    );
  }
}
