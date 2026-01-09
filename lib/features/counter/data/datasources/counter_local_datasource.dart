


import 'package:finance_mobile_app/core/error/exceptions.dart';
import 'package:finance_mobile_app/features/counter/data/datasources/counter_abstract_datasource.dart';

class CounterLocalDataSource extends CounterAbstractDataSource{

  @override
  int incrementCounter(int value) {
    if(value<= -1){
      throw InvalidCounterValueException();
    }
    return value + 1;
  }
  
}