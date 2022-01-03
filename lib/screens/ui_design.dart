import 'package:flutter/material.dart';

class UIDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        onPressed: () {},
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: const Image(
          image: AssetImage(
            "assets/plus.png"
          ),
        ),
      ),

      // ?????

      bottomSheet: const Padding(padding: EdgeInsets.only(bottom: 50.0),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 15.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.blue[50]
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white
                            ),
                            child: const Center(
                              child: Image(
                                image: AssetImage(
                                    "assets/left.png"
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white
                            ),
                            child: const Center(
                              child: Image(
                                image: AssetImage(
                                    "assets/points.png"
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Image(
                      height: 60.0,
                      width: 60.0,
                      image: AssetImage(
                        "assets/Folder.png"
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    const Text(
                      "UI Design",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.blue
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    const Text(
                      "55 Documents",
                      style: TextStyle(
                        fontSize: 14.0
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                              image: AssetImage(
                                  "assets/file.png"
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            const Text(
                                "15.2 GB used from 50 GB"
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(100.0)
                                  ),
                                ),
                                Container(
                                    width: 250,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                            colors:[
                                              Color(0xFF0052FF),
                                              Color(0xFF00D9FF),
                                            ]
                                        ),
                                        borderRadius: BorderRadius.circular(100.0)
                                    )
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children:  [
                                  const Positioned(
                                    child: CircleAvatar(
                                      radius: 17,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/person1.png"
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    child: CircleAvatar(
                                      radius: 17,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/person2.png"
                                        ),
                                      ),
                                    ),
                                    left: 20,
                                  ),
                                  const Positioned(
                                    child: CircleAvatar(
                                      radius: 17,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/person3.png"
                                        ),
                                      ),
                                    ),
                                    left: 40,
                                  ),
                                  Positioned(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(100.0)
                                        ),
                                        child: const Text(
                                            " +5"
                                        )
                                    ),
                                    left: 60,
                                  ),
                                ],
                                overflow: Overflow.visible,
                              ),
                              const Text(
                                "+ Add Members",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue
                                ),
                              )
                            ],
                          )
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                "My Cloud",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bottomWidget(
                    titleName: "Rent Car kit",
                    creator: "Ramesh"
                  ),
                  bottomWidget(
                    titleName: "Cloud kit",
                    creator: "Krish"
                  )
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomWidget({
    required String titleName,
    required String creator,
    }
  ) => Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue[50]
      ),
      child: Column(
        children: [
          const Image(
            image: AssetImage(
              "assets/diamond.png"
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            titleName,
            style:const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "by $creator",
            style: const TextStyle(
              fontSize: 10.0
            ),
          )
        ],
      ),
    ),
  );
}
