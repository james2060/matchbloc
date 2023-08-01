import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/matchinfo_model.dart';

class MatchBloc {
  final _repository = Repository();
  final _matchinfoFetcher = PublishSubject<MatchInfo>();

  Stream<MatchInfo> get allMatch => _matchinfoFetcher.stream;

  fetchAllMatch() async {
    MatchInfo matchInfoModel = await _repository.fetchAllMatchInfo();
    _matchinfoFetcher.sink.add(matchInfoModel);
  }
  dispose() {
    _matchinfoFetcher.close();
  }
}

final bloc = MatchBloc();