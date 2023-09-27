# Yacc Calculator

This repository contains a simple calculator implemented using Yacc (Yet Another Compiler Compiler) and Lex. The calculator can perform basic arithmetic operations on numbers, including addition, subtraction, multiplication and division. The implementation includes a Makefile for easy compilation and execution.

## Requirements

To build and run the Yacc calculator, you'll need the following software installed on your system:

- Unix-like operating system (Linux, macOS, etc.)
- Lex (Lexical Analyzer Generator)
- Yacc (Parser Generator)

## Usage

1. Clone this repository to your local machine using the following command:

    ```bash
    git clone https://github.com/nikitabushuev/yycalc.git
    ```

2. Navigate to the repository's directory:

    ```bash
    cd yycalc
    ```

3. Use the provided Makefile to compile the calculator:

    ```bash
    make
    ```

   This will generate an executable named `yycalc`.

4. Run the calculator:

    ```bash
    ./yycalc "2 + 2"
    ```

5. Enter arithmetic expressions as argument, and the calculator will evaluate and display the result.

6. To clean up the compiled files, use the following command:

    ```
    make clean
    ```

## Examples

- Addition: `2 + 3`
- Subtraction: `10 - 5`
- Multiplication: `4 * 6`
- Division: `15 / 3`

## Contributing

If you'd like to contribute to this project, feel free to submit a pull request. You can also open issues for bug reports, feature requests, or general feedback.

## License

This project is licensed under the [MIT License](LICENSE).
