#Область ОписаниеПеременных

#КонецОбласти

#Область ПрограммныйИнтерфейс

// Версия
//
//  Возвращаемое значение:
//   Строка - версия
//
Функция Версия() Экспорт
	Версия = "0.2.0";
	Возврат Версия;
КонецФункции

// Имя
//
//  Возвращаемое значение:
//   Строка - Имя
//
Функция Имя() Экспорт
	Возврат "vanessa-support";
КонецФункции

// Имя лога
//
//  Возвращаемое значение:
//   Строка - "oscript.app." + Имя()
//
Функция ИмяЛога() Экспорт
	Возврат "oscript.app." + Имя();
КонецФункции

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#КонецОбласти
