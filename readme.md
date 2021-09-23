# Vanessa-support

[![Тестирование](https://github.com/vanessa-opensource/vanessa-support/actions/workflows/testing.yml/badge.svg)](https://github.com/vanessa-opensource/vanessa-support/actions/workflows/testing.yml)
[![GitHub release](https://img.shields.io/github/release/artbear/1commands.svg)](https://github.com/artbear/1commands/releases)

Приложение командной строки для генерации различных файлов на основании информации о поддержке метаданных в исходниках 1С-конфигурации в форматах Конфигуратор или EDT.

>[Vanessa open-source![Chat on Telegram vanessa_opensource_chat](https://img.shields.io/badge/Chat%20on-Telegram-brightgreen.svg)](https://t.me/vanessa_opensource_chat) или [oscript_library ![Chat on Telegram oscript_library](https://img.shields.io/badge/Chat%20on-Telegram-brightgreen.svg)](https://t.me/oscript_library) - в этих чатах вы можете задавать любые вопросы разработчикам и активным участникам.

## Возможности

Приложение умеет создавать json-файлы с группировкой по метаданными.

Подобные файлы могут быть использованы для различные целей.
Например, для дымового тестирования через Vanessa-ADD или для контроля исходников на внутренние стандарты вашей компании.

### Создание json-файлов - команда json

Например, команда `vanessa-support json --src fixtures\simple-config result.json` выдаст готовый json-файл для всех метаданных, которые могут быть изменены и не находятся в режиме чтения.

Будет сформирован следующий файл
```json
{
    "Справочники": [
        "ПервыйСправочник"
    ],
    "Документы": [
        "ПервыйДокумент"
    ]
}
```
