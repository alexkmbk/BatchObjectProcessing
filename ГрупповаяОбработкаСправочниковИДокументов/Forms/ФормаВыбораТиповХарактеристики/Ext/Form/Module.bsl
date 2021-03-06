﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	ДоступныеТипы = Параметры.ДоступныеТипы.Типы();
	
	Если Параметры.МассивТипов <> Неопределено Тогда
		
		Для Каждого ДоступныйТип Из ДоступныеТипы Цикл
			
			ТипВыбран = Ложь;
			
			Для Каждого ЭлементТипа Из Параметры.МассивТипов Цикл
				
				Если ДоступныйТип = ЭлементТипа Тогда
					
					ТипВыбран = Истина;
					Прервать;
					
				КонецЕсли;
				
			КонецЦикла;
			
			НоваяСтрока = СписокДоступныхТипов.Добавить(ДоступныйТип,,ТипВыбран);
				
		КонецЦикла;
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура УстановитьФлажки(Команда)
	
	Для Каждого  ЭлементТипов Из СписокДоступныхТипов Цикл
		
		ЭлементТипов.Пометка = Истина;
		
	КонецЦикла;
	
КонецПроцедуры

&НаКлиенте
Процедура СнятьФлажки(Команда)
	
	Для Каждого  ЭлементТипов Из СписокДоступныхТипов Цикл
		
		ЭлементТипов.Пометка = Ложь;
		
	КонецЦикла;
	
КонецПроцедуры

&НаКлиенте
Процедура ЗакончитьРедактирование(Команда)
	
	ОповеститьОВыборе(СписокДоступныхТипов);

КонецПроцедуры
