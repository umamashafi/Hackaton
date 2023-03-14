import 'package:flutter/material.dart';

class AmbulanceMessg extends StatefulWidget {
  @override
  _AmbulanceMessgState createState() => _AmbulanceMessgState();
}

class _AmbulanceMessgState extends State<AmbulanceMessg> {
  bool _success = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _success ?  const Color.fromARGB(149, 208, 211, 181) :  const Color.fromARGB(149, 208, 211, 181),
        leading: Image(image: AssetImage('assets/HeartLogo.PNG'),height: 110.0, width: 60.0),
            title: Text(
              "STATUS MESSAGE",
              style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold, fontSize:20),
            ),
        //title: Text('popup message'),
      ),
      body: Center(
          child: Container(
        height: 50,
        width: 235,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(30),
          color: _success ? Colors.orangeAccent : Colors.red,
          child: MaterialButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(
                  _success ? 'Success!' : 'Fail!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ))
              ],
            ),
            onPressed: () {
              showGeneralDialog(
                  barrierLabel: 'label',
                  barrierDismissible: true,
                  barrierColor: Colors.black.withOpacity(0.5),
                  transitionDuration: Duration(milliseconds: 300),
                  context: context,
                  transitionBuilder: (context, anim1, anim2, child) {
                    return SlideTransition(
                      position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
                          .animate(anim1),
                      child: child,
                    );
                  },
                  pageBuilder: (context, anim1, anim2) {
                    return Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 500,
                        width: 350,
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Material(
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox.shrink(),
                                    IconButton(
                                        icon: Icon(Icons.cancel),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          setState(() {
                                            _success = !_success;
                                          });
                                        })
                                  ],
                                ),
                                Image.asset(
                                  _success
                                      ? 'assets/Ambulance.JPG'
                                      : 'assets/oops.JPG',
                                  height: 200,
                                ),
                                Text(
                                  _success ? 'Success' : 'Oh-ooh',
                                  style: TextStyle(
                                    color: _success
                                        ? Colors.orangeAccent
                                        : Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  _success
                                      ? 'Your Information is Successfuly Upload Helping Service On the Way ! \n THANKU '
                                      : 'Your Information is Successfuly Upload but Helping Service  Unavailable due to any reason! \n THANKU',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 235,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(30),
                                    color: _success
                                        ? Colors.orangeAccent
                                        : Colors.red,
                                    child: MaterialButton(
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Text(
                                            _success
                                             ? 'THANKU!'
                                              : 'THANKU',
                                                // ? 'Let\'s Rock!'
                                                // : 'Tune Guitar',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  );
            }
          )
        )
          )
      ),
    );
  }
  }