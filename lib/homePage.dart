import 'package:flutter/material.dart';
import 'package:fluttertest/addProject.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ProjectModel> projects = [
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 1"),
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 2"),
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 3"),
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 4"),
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 5"),
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 6"),
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 7"),
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 8"),
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 9"),
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 10"),
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 11"),
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 12"),
    ProjectModel(
        created: "12/9/2019",
        edited: "12/9/2019",
        records: "10",
        name: "Project 13"),
  ];
  @override
  void initState() {
    print("init");
    // ignore: unused_local_variable
    List<ProjectModel> projects = projects1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff43cac6),

      // appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddProject(),
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),

      body: Container(
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
                height: 150,
                // child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 5),
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 40,
                        ),
                        Expanded(
                            child: Container(
                          // color: Colors.red,
                          child: Center(
                            child: Text(
                              "All Project",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 2, 20, 2),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            projects = projects1
                                .where((element) => element.name!
                                    .toLowerCase()
                                    .contains(value.toLowerCase()))
                                .toList();
                          });
                        },
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          hintText: "Search for project title or ID ...",
                          hintStyle: TextStyle(fontSize: 12),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                  ],
                )
                // ),
                ),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: projects.isEmpty
                    ? Center(
                        child: Text(
                          "No Projects",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      )
                    : ListView.builder(
                        itemCount: projects.length,
                        itemBuilder: (context, i) {
                          print(projects.length.toString() + " Length");
                          return Stack(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    // color: Colors.red,
                                    width: 40,
                                    height: 40,
                                  ),
                                  Expanded(
                                      child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/project_bg1.png"),
                                            fit: BoxFit.fill)),
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              45, 30, 0, 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${projects[i].name}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                "Created   : ${projects[i].created}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                "Edited      : ${projects[i].edited}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                "ID#           : $i",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                "Rceords   : ${projects[i].records}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        )),
                                        Image.asset(
                                          "assets/project_menu1.png",
                                          height: 70,
                                        ),
                                        Container(
                                          height: 200,
                                        )
                                      ],
                                    ),
                                  ))
                                ],
                              ),
                              Positioned(
                                top: 60,
                                left: 4,
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/project_img1.png"),
                                        fit: BoxFit.fitHeight),
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    // boxShadow: [
                                    //   BoxShadow(color: Colors.grey, blurRadius: 10)
                                    // ],
                                  ),
                                  // child: Icon(Icons.pause_presentation),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class ProjectModel {
  String? name;
  String? created;
  String? edited;
  String? id;
  String? records;
  ProjectModel({this.created, this.edited, this.id, this.name, this.records});
}

List<ProjectModel> projects1 = [
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 1"),
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 2"),
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 3"),
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 4"),
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 5"),
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 6"),
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 7"),
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 8"),
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 9"),
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 10"),
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 11"),
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 12"),
  ProjectModel(
      created: "12/9/2019",
      edited: "12/9/2019",
      records: "10",
      name: "Project 13"),
];
