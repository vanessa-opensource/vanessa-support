//#Использовать ".."
#Использовать fs

#Область ОписаниеПеременных

#КонецОбласти

#Область ПрограммныйИнтерфейс

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

Процедура ОписаниеКоманды(Команда) Экспорт

	ПутьИсходников = Команда.Опция("s src", "", "Путь к исходникам в формате Конфигуратора или EDT")
    .ТСтрока()
    .ВОкружении(ПараметрыПриложения.Имя() + "src")
    .ПоУмолчанию("src");
    // .СкрытьВСправке(); // Любой тип

	ВыходнойФайл = Команда.Аргумент("FILE", "", "Путь выходного файла в формате json")
		.ТСтрока() // тип опции Строка
		.ВОкружении(ПараметрыПриложения.Имя() + "FILE")
		.ПоУмолчанию("");
		// .СкрытьВСправке(); // Любой тип

	// ПутьИсходников = Команда.Опция("v debug", Ложь, "Описание опции")
    // .Флаговый() // тип опции булево
    // .ВОкружении("ИМЯ_ПЕРЕМЕННОЙ")
    // .ПоУмолчанию(Ложь)
    // .СкрытьВСправке(); // Любой тип

КонецПроцедуры

Процедура ВыполнитьКоманду(Знач Команда) Экспорт

	Сообщить(Команда.ЗначениеОпции("src"));
	Сообщить(Команда.ЗначениеАргумента("FILE"));
	ПутьИсходников = Команда.ЗначениеОпции("src");
	ФайлРезультат = Команда.ЗначениеАргумента("FILE");

	Если Не ФС.КаталогСуществует(ПутьИсходников) Тогда
		ВызватьИсключение "Не существует каталог исходников " + ПутьИсходников;
	КонецЕсли;
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#КонецОбласти
