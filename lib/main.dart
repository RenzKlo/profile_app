import 'package:flutter/material.dart';
import 'theme/custom_theme.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme1,
      ),
      home: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: backgroundColor,
          leading: Icon(Icons.account_circle, color: primaryColor),
          title:
              const Text('RenzKLo\'s Profile', style: TextStyle(fontSize: 17)),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileCardHeader(),
              const SizedBox(height: 10.0),
              Column(
                children: [
                  InfoWidget(
                      title: 'Email',
                      data: 'kentlorenz.daria@wvsu.edu.ph',
                      icon: Icons.email),
                  InfoWidget(
                    title: 'School',
                    data: 'West Visayas State University',
                    icon: Icons.school,
                  ),
                  InfoWidget(
                      title: 'Course',
                      data: 'BS Computer Science',
                      icon: Icons.book),
                  InfoWidget(
                      title: 'Living in',
                      data: 'Capiz, PH',
                      icon: Icons.pin_drop_rounded),
                  InfoWidget(
                      title: 'Hobbies',
                      data: 'Video Games, Programming',
                      icon: Icons.gamepad),
                  // SizedBox(height: 5.0),
                  BiographyWidget(
                    title:'About Me',
                    description: "Hello, I\'m a student studying computer science. I\'ve always had a fascination with technology and how it works. I enjoy coding, problem-solving, and staying up to date with the latest tech trends. I often play some games or do some coding exercises in my free time. I'm also pationate in other fileds in technology like electronics and robotics.",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCardHeader extends StatelessWidget {
  const ProfileCardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: primaryColor,
      child: Container(
          height: 160,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 5.0),
                  child: const Image(
                      image: AssetImage('assets/images/profile.png'),
                      width: 160.0,
                      height: 160.0)),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kent Lorenz Daria',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor),
                    ),
                    Text(
                      'BSCS 3A AI',
                      style: TextStyle(
                          fontSize: 15.0, color: backgroundColor),
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      children: [
                        Icon(
                          Icons.facebook,
                          color: primaryShadowColor,
                        ),
                        SizedBox(width: 5.0),
                        Icon(
                          Icons.discord,
                          color: primaryShadowColor,
                        ),
                        SizedBox(width: 5.0),
                        Icon(
                          Icons.call,
                          color: primaryShadowColor,
                        ),
                      ],
                    )
                  ]),
            ],
          )),
    );
  }
}

class InfoWidget extends StatelessWidget {
  final String title;
  final String data;
  final IconData icon;

  const InfoWidget(
      {this.title = "Title", this.data = "", this.icon = Icons.info, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Card(
          color: secondaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 16),
            child: Row(
              children: [
                Icon(icon),
                Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            data,
                          ),
                        ])),
              ],
            ),
          )),
    );
  }
}

class BiographyWidget extends StatelessWidget {
  final String title;
  final String description;

  BiographyWidget({this.title="", this.description="", super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 16.0),
      child: Card(
        
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey, width: 1  ),
          borderRadius: BorderRadius.circular(10.0),
        ),  
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              Divider(),
              SizedBox(height: 10.0),
              Text(description, style: TextStyle(fontSize: 15),textAlign: TextAlign.justify,),
            ],
          ),
        ),
      ),
    );
  }
}
