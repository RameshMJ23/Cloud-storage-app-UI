import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui3/charts/piechart/pie_widget.dart';
import 'package:ui3/screens/ui_design.dart';

class HomeScreen extends StatelessWidget {

  int touchIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 15),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xFF0052FF).withOpacity(0.12),
                            blurRadius: 40.0,
                            offset: const Offset(0,12)
                        )
                      ],
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white
                  ),
                  height: 90.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white
                          ),
                          child: const Image(
                            image: AssetImage(
                                "assets/menu icon.png"
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        "Hello Arul !",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white
                          ),
                          child: const Image(
                            image: AssetImage(
                                "assets/search icon.png"
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color:  Colors.blue[50],
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                    child: Column(
                      children: [
                        const Text(
                          "Storage",
                          style: TextStyle(
                            fontSize: 20.0
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: 200.0,
                          height: 200.0,
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                    height: 100,
                                    width: 100,
                                    padding: const EdgeInsets.symmetric(vertical: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                            color: const Color(0xFF0052FF).withOpacity(0.15),
                                            blurRadius: 20,
                                            offset: const Offset(0,25)
                                        ),
                                      ],
                                      gradient: const LinearGradient(
                                          colors: [
                                            Color(0xFFE5EEFF),
                                            Colors.white,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:const [
                                        Text(
                                          "100",
                                          style: TextStyle(
                                              fontSize: 15
                                          ),
                                        ),
                                        Text(
                                          "GB",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.grey
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                              Center(
                                child: PieChart(
                                  PieChartData(
                                    sections: chartData(touchIndex),
                                    centerSpaceRadius: 65.0,
                                    sectionsSpace: 10.0
                                  ),
                                ),
                              )
                            ],
                          )

                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  //CircleAvatar
                                  Container(
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:  Colors.blue
                                    ),
                                    height: 15.0,
                                    width: 15.0,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  const Text(
                                    "Free Space",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  //CircleAvatar
                                  Container(
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.lightBlue
                                    ),
                                    height: 15.0,
                                    width: 15.0,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  const Text(
                                    "Used Space",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          height: 65.0,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              /*ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: const Image(
                                  image: AssetImage(
                                    "assets/fire.png"
                                  ),
                                ),
                              ),*/
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.grey[200]
                                ),
                                child: const Center(
                                  child: Image(
                                    image: AssetImage(
                                      "assets/fire.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ),
                              const Text(
                                "UPGRADE!",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40.0,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "My Clouds",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                folder("UI Design", "55", "15",context),
                const SizedBox(
                  height: 15.0,
                ),
                folder("UX Design", "30", "8",context),
                const SizedBox(
                  height: 15.0,
                ),
                folder("Other files", "80", "19",context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget folder(
    String name,
    String fileNumber,
    String dataUsed,
    BuildContext context
  ) => GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (_) => UIDesign()));
    },
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.blue[50]
      ),
      padding: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Image(
                  image: AssetImage(
                      "assets/Folder.png"
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(
                        name,
                        style:const TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                        "$fileNumber Documents",
                        style: const TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFF0052FF)
                        )
                    ),
                  ],
                )
              ],
            ),
            RichText(
              text: TextSpan(
                  text: dataUsed,
                  style: const TextStyle(
                      color: Color(0xFF0052FF)
                  ),
                  children: [
                    TextSpan(
                        text: " /25 GB ",
                        style: TextStyle(
                            color: const Color(0xFF0052FF).withOpacity(0.3)
                        )
                    )
                  ]
              ),

            )
          ],
        ),
      ),
    ),
  );
}
