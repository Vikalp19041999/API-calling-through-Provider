import 'package:api_calling_with_provider/provider/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProviderClass obj;
  bool loading = true;
  bool first = true;
  void getData() async {
    obj = Provider.of<ProviderClass>(context);
    bool l = await obj.getdata();
    if (l) {
      if (!mounted) return;
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (first) {
      first = false;
      getData();
    }

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 35) / 2;
    final double itemWidth = size.width / 2;
    return Container(
        child: SafeArea(
            child: loading
                ? Center(
                    child: CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),
                  ))
                : GridView.builder(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        childAspectRatio: (itemWidth / itemHeight)),
                    itemCount: obj.books.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.network(
                                  obj.books[index].image,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  width: MediaQuery.of(context).size.width / 2,
                                ),
                                SizedBox(
                                  height: size.height / 30,
                                ),
                                SizedBox(
                                  height: size.height / 11,
                                  child: Text(
                                    obj.books[index].name,
                                    textAlign: TextAlign.center,
                                    maxLines: 3,
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                                Divider(color: Colors.white70, thickness: 0.3),
                                Text(
                                  "Starting from\n ₹${obj.books[index].rent15} / 15 days",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.workSans(
                                      textStyle: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )));
  }
}
