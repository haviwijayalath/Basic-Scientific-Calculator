function scientific_calculator()
    clc;
    fprintf('Welcome to the Scientific Calculator!\n');
    fprintf('====================================\n');
    fprintf('\nChoose an operation:\n');
    fprintf('1. Addition (+)\n');
    fprintf('2. Subtraction (-)\n');
    fprintf('3. Multiplication (*)\n');
    fprintf('4. Division (/)\n');
    fprintf('5. Sine (sin)\n');
    fprintf('6. Cosine (cos)\n');
    fprintf('7. Tangent (tan)\n');
    fprintf('8. Logarithm (log, natural log, ln)\n');
    fprintf('9. Logarithm (log10)\n');
    fprintf('10. Square Root (sqrt)\n');
    fprintf('11. x^2\n');
    fprintf('12. x^y\n');
    fprintf('13. Factorial (!)\n');
    fprintf('14. nCr\n');
    fprintf('15. nPr\n');
    fprintf('16. gcd(x, y)\n');
    fprintf('17. lcm(x, y)\n');
    fprintf('20. Exit\n');

    while true

        choice = input('Enter your choice (1-20): ');

        switch choice
            case 1
                a = input('Enter the first number: ');
                b = input('Enter the second number: ');
                fprintf('Result: %.2f\n', a + b);

            case 2
                a = input('Enter the first number: ');
                b = input('Enter the second number: ');
                fprintf('Result: %.2f\n', a - b);

            case 3
                a = input('Enter the first number: ');
                b = input('Enter the second number: ');
                fprintf('Result: %.2f\n', a * b);

            case 4
                a = input('Enter the numerator: ');
                b = input('Enter the denominator: ');
                if b == 0
                    fprintf('Error: Division by zero is not allowed.\n');
                else
                    fprintf('Result: %.2f\n', a / b);
                end

            case 5
                angle = input('Enter the angle in degrees: ');
                fprintf('Result: %.2f\n', sin(deg2rad(angle)));

            case 6
                angle = input('Enter the angle in degrees: ');
                fprintf('Result: %.2f\n', cos(deg2rad(angle)));

            case 7
                angle = input('Enter the angle in degrees: ');
                fprintf('Result: %.2f\n', tan(deg2rad(angle)));

            case 8
                x = input('Enter the number: ');
                if x <= 0
                    fprintf('Error: Logarithm is undefined for non-positive numbers.\n');
                else
                    fprintf('Result: %.2f\n', log(x));
                end

            case 9
                x = input('Enter the number: ');
                if x <= 0
                    fprintf('Error: Logarithm is undefined for non-positive numbers.\n');
                else
                    fprintf('Result: %.2f\n', log10(x));
                end

            case 10
                x = input('Enter the number: ');
                if x < 0
                    fprintf('Error: Square root of a negative number is not real.\n');
                else
                    fprintf('Result: %.2f\n', sqrt(x));
                end

            case 11
                x = input('x: ');
                fprintf('Result: %f\n', x^2);

            case 12
                x = input('x: ');
                y = input('y: ');
                fprintf('Result: %f\n', x^y);

            case 13
                x = input('Enter the number: ')
                fprintf('Result: %f\n', factorial(x));

            case 14
                n = input('n: ');
                r = input('r: ');
                result = factorial(n) / (factorial(r) * factorial(n - r))
                fprintf('Result: %f\n', result);

            case 15
                n = input('n: ');
                r = input('r: ');
                result = factorial(n) / factorial(n - r)
                fprintf('Result: %f\n', result);

            case 16
                x = input('x: ');
                y = input('y: ');
                fprintf('Result: %f\n', gcd(x, y));

            case 17
                x = input('x: ');
                y = input('y: ');
                fprintf('Result: %f\n', lcm(x, y));

            case 20
                fprintf('Exiting the calculator. Goodbye!\n');
                break;

            otherwise
                fprintf('Invalid choice. Please try again.\n');
        end
    end
end

