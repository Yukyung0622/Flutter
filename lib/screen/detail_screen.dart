import 'dart:ui';
import 'package:flutter/material.dart';
import '../model/model_movie.dart';

class DetailScreen extends StatefulWidget {
  final Movie movie;
  DetailScreen ({required this.movie});
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool like = false;
  @override
  void initState() {
    super.initState();
    like = widget.movie.like;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('/images/' +widget.movie.poster),
                        fit:BoxFit.cover,
                      )
                    ),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.black.withOpacity(0.1),
                          child: Container(
                            child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
                                child: Image.asset(
                                  'images/' +widget.movie.poster),
                                height: 300,
                                ),
                              Container(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  '99% 일치 2024 15+ 시즌1개',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 11),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  widget.movie.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(3),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // background
                                      onPrimary: Colors.black, // foreground
                                    ),
                                  onPressed: () { },
                                  child: Row(
                                    mainAxisAlignment:
                                      MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.play_arrow),
                                      Text('재생'),
                                    ],
                                  )
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(3),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.black12, // background
                                      onPrimary: Colors.white, // foreground
                                    ),
                                    onPressed: () { },
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.download),
                                        Text('저장'),
                                      ],
                                    )
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text(widget.movie.toString(),
                                style: TextStyle(
                                  fontSize: 12),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                alignment: Alignment.centerLeft,
                                child: Text(widget.movie.cast.toString(),
                                style: TextStyle(
                                  color: Colors.white60, fontSize: 10),
                                ),
                              ),
                            ],
                          ),),
                        ),
                      )),
                  ),
                  Positioned(
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      )),
                ],
              ),
              Container(
                color: Colors.black26,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: InkWell(onTap: (){}, child: Column(children: <Widget>[
                        like ? Icon(Icons.check) : Icon(Icons.add),
                        Padding(padding: EdgeInsets.all(5),),
                        Text(
                          '내가 찜한 콘텐츠',
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.white60,
                          ),
                        ),
                      ],
                      ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Container(child: Column(children: <Widget>[
                        Icon(Icons.thumb_up),
                        Padding(padding: EdgeInsets.all(5),),
                        Text(
                          '평가',
                          style: TextStyle(
                              fontSize: 11, color: Colors.white60),
                        ),
                      ],
                      ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Container(child: Column(children: <Widget>[
                        Icon(Icons.send),
                        Padding(padding: EdgeInsets.all(5),),
                        Text(
                          '공유',
                          style: TextStyle(
                              fontSize: 11, color: Colors.white60),
                        ),
                      ],
                      ),
                      ),
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
  Widget makeMenuButton() {
    return Container();
  }
}