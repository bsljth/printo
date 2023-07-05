## printo

`printo` (pronounced "print-o") is a Nim package that can be used to configure the timing of printing text on the terminal. There are 4 different modes to choose from. Printo can be used in any Nim application that supports version 1.6.14 and above.

However, since `printo` is a simple library that uses only basic Nim constructs, applications written in earlier versions of Nim should also be able to use it seamlessly.

### How to use printo
Using `printo` in your project is quite easy. You can import printo directly into a `.nim` file can be done via the `import` statement:
```
from printo import printo
```

The `printo` proc only requires three arguments to work:

1. The text to be printed.
2. The mode of printing (detailed below).
3. The time (in milliseconds) gap between each element while printing. An element could be a word or a character.

### Modes
Currently, printo supports four modes of printing. They are detailed in the following table:

|    Mode    |    Description                                                   |
|------------|------------------------------------------------------------------|
|  wbwsl     | This mode enables you to print text word by word on the same line|
|  