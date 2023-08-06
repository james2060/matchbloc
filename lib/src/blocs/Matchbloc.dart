import 'package:matchbloc/src/models/matchschedule_model.dart';

import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/matchinfo_model.dart';
import '../models/matchschedule_model.dart';

class MatchBloc {
  final _repository = Repository();
  final _matchinfoFetcher = PublishSubject<List<MatchScedule>>();

  Stream<List<MatchScedule>> get allMatch => _matchinfoFetcher.stream;

  fetchAllMatch() async {
    List<MatchScedule> matchInfoModel = await _repository.fetchAllMatchInfo();
    _matchinfoFetcher.sink.add(matchInfoModel);
  }
  dispose() {
    _matchinfoFetcher.close();
  }
}

final bloc = MatchBloc();