import 'package:cool_logger/cool_logger.dart';

void main() async {
  await CoolLogger.info('Hey buddy, don\'t give up! >:c');  
  
  await CoolLogger.info({
    'name': 'Gabriel G. Freitas',
    'email': 'gabriel.goncal.freitas@gmail.com'
  });  

  await CoolLogger.info(213123.23);  
}
