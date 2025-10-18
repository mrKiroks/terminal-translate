# LINUX

![License](https://img.shields.io/github/license/mrKiroks/terminal-translate)
![Code size](https://img.shields.io/github/languages/code-size/mrKiroks/terminal-translate)

## terminal-translate

Переводчик для командной строки.
Работает на Google Translate, ключи API не требуются.

## Установка

```bash
git clone https://github.com/mrKiroks/terminal-translate.git
cd terminal-translate
sudo make install
```

## Использование
```bash
translate "Привет, как дела?"
# → Hello, how are you?

translate "Hello, how are you?"
# → Привет, как дела?
```
## Где работает?
Везде где есть bash ≥ 4, curl и jq.
