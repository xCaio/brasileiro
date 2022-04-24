import '../repositories/times_repository.dart';
import '../models/time.dart';
import '../models/titulo.dart';

class HomeController {
    TimesRepository timesRepository = TimesRepository();
    
    List<Time> get tabela => timesRepository.times;


    HomeController(){
      TimesRepository timesRepository = TimesRepository();
    }
}
