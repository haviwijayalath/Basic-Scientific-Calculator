function advanced_calculator_with_math()
    % Create main figure window
    main_fig = figure('Position', [300, 100, 400, 650], 'Name', 'Advanced Calculator', ...
                      'NumberTitle', 'off', 'Color', [0.9, 0.9, 0.9]);

    % Display box for results and input
    input_display = uicontrol('Style', 'edit', 'Position', [20, 570, 360, 50], ...
                              'FontSize', 20, 'Enable', 'inactive', ...
                              'HorizontalAlignment', 'right', 'BackgroundColor', [1, 1, 1]);

    % Calculator button labels
    button_list = { ...
        '7', '8', '9', '/', 'sin'; ...
        '4', '5', '6', '*', 'cos'; ...
        '1', '2', '3', '-', 'tan'; ...
        '0', '.', '=', '+', '√'; ...
        'AC', 'DEL', '^', 'π', 'log'; ...
        'dy/dx', '∫dx', 'exp', 'ln', ''; ...
        '(', ')', '', '', ''};

    % Button properties
    button_width = 60;
    button_height = 50;
    x_start = 20;
    y_start = 500;
    x_padding = 10;
    y_padding = 10;

    % Create buttons dynamically
    for row = 1:size(button_list, 1)
        for col = 1:size(button_list, 2)
            % Skip empty buttons
            if isempty(button_list{row, col}), continue; end

            % Calculate button position
            x_pos = x_start + (col - 1) * (button_width + x_padding);
            y_pos = y_start - (row - 1) * (button_height + y_padding);

            % Create button
            uicontrol('Style', 'pushbutton', 'String', button_list{row, col}, ...
                      'Position', [x_pos, y_pos, button_width, button_height], ...
                      'FontSize', 14, 'Callback', @(src, ~) button_pressed(src, input_display));
        end
    end

    % Callback for button presses
    function button_pressed(src, display)
        current_text = get(display, 'String');
        pressed_button = get(src, 'String');

        switch pressed_button
            case '='
                try
                    result = eval(current_text);
                    set(display, 'String', num2str(result));
                catch
                    set(display, 'String', 'Error');
                end
            case 'AC'
                set(display, 'String', '');
            case 'DEL'
                if ~isempty(current_text)
                    set(display, 'String', current_text(1:end-1));
                end
            case 'sin'
                set(display, 'String', [current_text 'sin(']);
            case 'cos'
                set(display, 'String', [current_text 'cos(']);
            case 'tan'
                set(display, 'String', [current_text 'tan(']);
            case '√'
                set(display, 'String', [current_text 'sqrt(']);
            case 'π'
                set(display, 'String', [current_text 'pi']);
            case 'log'
                set(display, 'String', [current_text 'log10(']);
            case 'dy/dx'
                set(display, 'String', [current_text 'diff(']);
            case '∫dx'
                set(display, 'String', [current_text 'int(']);
            case '^'
                set(display, 'String', [current_text '^']);
            case 'exp'
                set(display, 'String', [current_text 'exp(']);
            case 'ln'
                set(display, 'String', [current_text 'log(']);
            otherwise
                set(display, 'String', [current_text pressed_button]);
        end
    end

    % Footer credit
    uicontrol('Style', 'text', 'Position', [20, 10, 360, 20], ...
              'FontSize', 8, 'BackgroundColor', [0.9, 0.9, 0.9], ...
              'HorizontalAlignment', 'center', 'String', '(c) 2025 havidw');
end

