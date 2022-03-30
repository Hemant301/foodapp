import 'package:foodapp/modal/homemodal.dart';
import 'package:foodapp/repo/homerepo.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc {
  HomeRepo _homeRepo = HomeRepo();
  final BehaviorSubject<HomeModal> _liveHomedata = BehaviorSubject<HomeModal>();
  BehaviorSubject<HomeModal> get getHomedata => _liveHomedata;
  fetchHomedata() async {
    try {
      HomeModal homeSlider = await _homeRepo.fetchHomedata();
      // print(homeSlider.imgs.length);

      _liveHomedata.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }
}

final homeBloc = HomeBloc();
