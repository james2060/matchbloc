import 'package:flutter/material.dart';
import 'package:matchbloc/src/models/matchschedule_model.dart';
import '../models/matchinfo_model.dart';
import '../blocs/Matchbloc.dart';

class MatchList extends StatefulWidget {
  const MatchList({super.key, required this.title});
  final String title;

  @override
  State<MatchList> createState() => _MatchListState();
}
class _MatchListState extends State<MatchList> {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllMatch();
    return Scaffold(
      appBar: AppBar(
        title: Text('Management'),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.refresh), onPressed: (){
          bloc.fetchAllMatch();
        }),
        actions: [
          IconButton(icon: Icon(Icons.add_task), onPressed: (){

          }),
          IconButton(icon: Icon(Icons.add_moderator), onPressed: null),
        ],
      ),
      body: StreamBuilder<List<MatchScedule>>(
        //모든 경기 리스트를 가져온다.
        stream: bloc.allMatch,
        builder: (context, AsyncSnapshot<List<MatchScedule>> snapshot) {
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
  Widget buildList(AsyncSnapshot<List<MatchScedule>> snapshot) {

    List<MatchScedule> matchlist=snapshot.data!;

    return ListView.builder(
      itemCount:matchlist.length,
      itemBuilder: (context,index){
        return ListTile(
          title: Text(matchlist[index].matchdate!.startdate.toString()!),
          subtitle: Text(matchlist[index].matchdate!.team1!),
        );
      },
    );
  }
}