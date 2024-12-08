# MySQL-Functions
    In MySQL, functions are used to perform operations and return results based on input parameters.
    They are categorized into built-in function and user-defined functions.

**1. Built-in Functions**

    MySQL provides a variety of built-in functions, categorized into different types:

     a. String Functions -Operate on strings and return strings or numeric values.

         * CONCAT(s1, s2, ...) – Concatenate multiple strings.
         * UPPER(str) – Convert a string to uppercase.
         * LOWER(str) – Convert a string to lowercase.
         * SUBSTRING(str, pos, len) – Extract a substring.

    b. Numeric Functions-Perform mathematical operations.

         * ROUND(x, d) – Round x to d decimal places.
         * CEIL(x) / FLOOR(x) – Round x up/down to the nearest integer.

    c. Date and Time Functions-Handle date and time values.

        * CURDATE() – Return the current date.
        * NOW() – Return the current date and time.
        * DATEDIFF(date1, date2) – Return the number of days between date1 and date2.
        * TIMESTAMPDIFF(unit, date1, date2) – Return the difference between two dates in the specified unit.
   
   d. Aggregate Function-Work on multiple rows and return a single result.

       * SUM(expr) – Calculate the sum.
       * AVG(expr) – Calculate the average.
       * MAX(expr) / MIN(expr) – Return the maximum/minimum value.
       * COUNT(expr) – Count the number of rows.

**2. User-Defined Functions**

        Custom functions created by users for specific tasks.

        Syntax:

            DELIMITER //

            CREATE FUNCTION function_name(parameters)
            RETURNS data_type
            DETERMINISTIC
            BEGIN
            -- Function logic
            RETURN value;
            END //

            DELIMITER ;
     
        Syntax for Calling function:
        SELECT function_name(value);


