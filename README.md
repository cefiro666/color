# color

A description of this package.

Консольная утилита для получения названия цвета по hex коду.
Использует API https://www.thecolorapi.com.

Собрать пакет
`swift build -c release`

Выполнить
`chmod +x setup.sh ; ./setup.sh`

Произойдет копирование исполняемого файла в папку ~/.bin/ и установка пути исполнения в .zshrc
Если используете bash - можно посмотреть скрипт и сделать по аналогии. 

Затем выполнить
`source ~/.zshrc`

Использование 
`color f2f3f4`

Выведет название цвета и скопирует в буфер обмена строку вида
`public static let aliceBlueColor = UIColor(hex: "F2F3F4")!`
