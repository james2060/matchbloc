import 'package:flutter/material.dart';
import '../models/matchinfo_model.dart';
import '../blocs/Matchbloc.dart';

class MatchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllMatch();
    return Scaffold(
      appBar: AppBar(
        title: Text('Match All list'),
      ),
      body: StreamBuilder(
        stream: bloc.allMatch,
        builder: (context, AsyncSnapshot<MatchInfo> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
//데이터를 그리드뷰에 출력하는 함수
  Widget buildList(AsyncSnapshot<MatchInfo> snapshot) {
    return GridView.builder(
        itemCount: 2,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Text(
            snapshot.data!.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily:
              'Roboto',
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: -0.1,
              color: Color(0xFF253840),
            ),
          );
        });
  }
}