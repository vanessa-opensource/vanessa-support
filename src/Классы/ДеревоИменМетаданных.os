#Использовать fs
#Использовать logos

#Область ОписаниеПеременных

Перем Лог; // объект логирования

#КонецОбласти

#Область ПрограммныйИнтерфейс

// Подготовить значение для выгрузки в json
//
// Параметры:
//   Поддержка - Поддержка - объект-информатор по данным поддержки
//   КаталогИсходников - Строка - Абсолютный путь к каталогу исходников конфигурации
//   ФайлыИзменяемые - Массив - массив абсолютных путей метаданных. преобразовать через ФС.ОтносительныйПуть
//
//  Возвращаемое значение:
//   Произвольный - результат трансформации, которое нужно выгрузить в json
//
Функция ПодготовитьЗначениеДляВыгрузки(Знач Поддержка, Знач КаталогИсходников, Знач ФайлыИзменяемые) Экспорт

	Результат = Новый Структура;
	МетаданныеКаталоги = УтилитыПоддержки.МетаданныеКаталоги();

	ВременнаяКоллекция = Новый Структура;

	Для каждого ПутьФайла Из ФайлыИзменяемые Цикл
		ОтносительныйПуть = ФС.ОтносительныйПуть(КаталогИсходников, ПутьФайла);
		Лог.Отладка("ОтносительныйПуть " + ОтносительныйПуть);
		Сегменты = СтрРазделить(ОтносительныйПуть, ПолучитьРазделительПути());

		ВидМетаданного = МетаданныеКаталоги.Получить(Сегменты[0]);
		Если ВидМетаданного = Неопределено Тогда
			// неизвестный тип
			Продолжить;
		КонецЕсли;
		ИмяМетаданного = Сегменты[1];

		УтилитыПоддержки.ДобавитьВложенныйЕслиЕщеНет(ВременнаяКоллекция, ВидМетаданного, ИмяМетаданного, Новый Структура);

	КонецЦикла;

	Для каждого КлючЗначение Из ВременнаяКоллекция Цикл

		Коллекция = Новый Массив;
		УтилитыПоддержки.СкопироватьЭлементы(КлючЗначение.Значение, Коллекция);

		Результат.Вставить(КлючЗначение.Ключ, Коллекция);
	КонецЦикла;

	Возврат Результат;

КонецФункции

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

Процедура ПриСозданииОбъекта(Знач ПарамЛог) Экспорт
	Лог = ПарамЛог;
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#КонецОбласти
