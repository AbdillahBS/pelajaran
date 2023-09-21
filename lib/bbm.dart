import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(Instagram());

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black, // Latar belakang hitam untuk AppBar
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Instagram',
                    style: TextStyle(
                      fontFamily: 'Billabong',
                      fontSize: 32.0,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.comment,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: FaIcon(FontAwesomeIcons.house)),
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.magnifyingGlass)),
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.linux,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {}, icon: FaIcon(FontAwesomeIcons.film)),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/1.jpg'),
                  radius: 18,
                ),
              ],
            ),
          ),
          body: ListView(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 35,
                            ),
                          ),
                          Text("Azura"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 35,
                            ),
                          ),
                          Text("Azura"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 35,
                            ),
                          ),
                          Text("Azura"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 35,
                            ),
                          ),
                          Text("Azura"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 35,
                            ),
                          ),
                          Text("Azura"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/1.jpg'),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Text(
                              "Abdillah_b.s",
                              style: TextStyle(
                                fontFamily: 'Billabong',
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Text(
                            ":",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage("assets/images/post.png"),
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.commentDots),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.paperPlane)),
                          Expanded(child: SizedBox(width: 20)),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.bookmark)),
                        ],
                      ),
                    ),
                    Text("22.698 suka"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Jadi diproject ini menggunakan thememode untuk mengahasilkan warna tema gelap,Kemudian terdapat AppBar yang terdapat text, dan icon, kemudian terdapat body yang mana di bungkus dengan container,",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/2.jpg')
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Text(
                              "Abdillah_b.s",
                              style: TextStyle(
                                fontFamily: 'Billabong',
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Text(
                            ":",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage("assets/images/post1.png"),
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.commentDots),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.paperPlane)),
                          Expanded(child: SizedBox(width: 20)),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.bookmark)),
                        ],
                      ),
                    ),
                    Text("22.698 suka"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Jadi diproject ini menggunakan thememode untuk mengahasilkan warna tema gelap,Kemudian terdapat AppBar yang terdapat text, dan icon, kemudian terdapat body yang mana di bungkus dengan container,",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
