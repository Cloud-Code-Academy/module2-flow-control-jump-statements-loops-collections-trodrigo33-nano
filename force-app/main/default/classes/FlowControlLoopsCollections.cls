/**
* This is the FlowControlLoopsCollections class, part of the Developer Kickstart Module 2 curriculum
* at Cloud Code Academy. This class focuses on flow control, loops, and collections in Apex programming.
* The class provides a comprehensive understanding of various flow control structures, including if statements,
* jump statements, and loops like for loops. It also covers working with collections such as lists and maps.
*
* Topics covered in this class include:
* - Understanding and using if statements to make conditional decisions in code execution.
* - Using jump statements like break and continue to control the flow of execution in loops and switch statements.
* - Working with for loops to iterate over a set of elements in Apex.
* - Understanding collections and using lists and maps to store and manipulate data.
*
* This class is designed for developers who have a basic understanding of Apex and want to deepen their knowledge
* in flow control, loops, and collections. By mastering these concepts, developers will be able to write more
* efficient and effective code in their Salesforce projects.
*
* @author Thayne Rodrigo
*/

public with sharing class FlowControlLoopsCollections {
    
    /**
     * Question 1
     * Compares two numbers and return "Hello World!" if x is greater than the y.
     * If either of the numbers is null or x is less than y, return null.
     * Example: helloWorld(40, 10) should return "Hello World!"
     * @param x The first number.
     * @param y The second number.
     * @return "Hello World!" if x greater than y, otherwise return null.
     */
    public static String helloWorld(Integer x, Integer y) {
        String result;
        if (x == null || y == null) {
            return null;
        } else if (x < y || x == y) {
            return null;
        }
        else {
            result = 'Hello World!';
    }

    return result; 
        }

    /**
     * Question 2
     * Checks if a person is eligible to vote based on their age.
     * A person is eligible to vote if they are 18 years old or older.
     * If the age is less than 18, the method will return false.
     * Example: votingEligibility(18) should return true
     * @param age The age of the person.
     * @return true if the person is eligible to vote, false otherwise.
     */
    public static Boolean votingEligibility(Integer age) {
        if (age >= 18) {
            return true;     
        }
        else {
            return false;
        }

    }

    /**
     * Question 3
     * Finds the maximum of two numbers.
     * If both numbers are equal, it returns that number.
     * Example: findMax(58, 200) should return 200
     * @param num1 The first number.
     * @param num2 The second number.
     * @return The maximum of the two numbers, or null if either number is null.
     * 
     * 
     * TR: Note to self; can use Math.max even if note says it decimal because integer < decimal. 
     */
    public static Integer findMax(Integer num1, Integer num2) {
        // Initialize largestNum as null
        Integer largestNum = null;
        if (num1 == null || num2 == null) {
            largestNum = null;
        } else {
            largestNum = math.max(num1, num2);
        }
        return largestNum;
    }


    /**
     * Question 4
     * Checks if a number is positive, negative, or zero.
     * If the number is null, return null.
     * Example: checkNumber(5) should return "Positive"
     * @param a The number to check.
     * @return A string indicating whether the number is "Positive", "Negative", or "Zero", or null if the number is null.
     */
    public static String checkNumber(Integer a) {
        if (a > 0) {
            return 'Positive';
        } else if (a < 0){ 
            return 'Negative';
        } else if (a == null){
            return null;
        } else {
            return 'Zero';
        }
    }

    /**
     * Question 5
     * Checks if a number is even or odd.
     * If the number is null, return null.
     * Example: checkEvenOdd(2) should return "Even"
     * @param a The number to check.
     * @return A string indicating whether the number is "Even" or "Odd", or null if the number is null.
     * 
     * TR: I checked for null first because if we run it later in the block, we will hit an error if we divide anything with null. 
     * Running it in the first line will ensure we check for the fail/error scenario first, then we run the calculations now 
     * knowing that the even/odd statements are being divided with a value.
     * 
     * Note to self - used mathmod again as it allows us to check for remainders. This is not to be thought of as decimals, but as
     * how many more 'whole values' of leftover are there? I think this is right lol
     * e.g 10/2 = 5 ---> remainder is 0 because 2 fits into 10 twice.
     * ---> 10 - (5*2) = 0
     * 
     * e.g 9/2 = 4 ----> remainder is 4 because 2 fits into 9 four times.
     * ---> 9 - (4*2) = 1
     */
    public static String checkEvenOdd(Integer a) {
        if (a == null) {
            return null;
        } else if (Math.mod(a,2) == 0) { 
            return 'Even';
        } else {
            return 'Odd';
        }
    }

    /**
     * Question 6
     * Checks if a string is empty, null, or contains text.
     * Example: checkString("") should return "Empty"
     * @param a The string to check.
     * @return A string indicating whether the input is "Empty", "Null", or "Contains Text".
     */
    public static String checkString(String a) {
        if (a == null) {
            return 'Null';
        } else if (a == '') {
            return 'Empty';
        } else return 'Contains Text';
    }

    /**
     * Question 7
     * Determines the grade based on the score.
     * Grade A if score is greater than or equal to 90.
     * Grade B if score is greater than or equal to 80.
     * Grade C if score is greater than or equal to 70.
     * Grade D if score is greater than or equal to 60.
     * Grade F otherwise.
     * Example: determineGrade(85) should return "B"
     * @param score The score.
     * @return The grade for the given score.
     * 
     * 
     * TR: Note - added null check to defend against null values;
     */
    public static String determineGrade(Integer score) {
        if (score == null) {
            return 'No score was provided for a grade';
        } else if (score >= 90) {
            return 'A';
        } else if (score >= 80) {
            return 'B';
        } else if (score >= 70) {
            return 'C';
        } else if (score >= 60) {
            return 'D';
        } else return 'F';
    }


    /**
     * Question 8
     * Sum all the integers up to a given limit.
     * Example: sumUpToLimit(5) should return 15
     * @param intLimit The number up to which integers will be summed.
     * @return The sum of all integers up to the limit.
     * 
     * TR - Hey teach, this one was a tough nut to crack. I couldn't figure out any other way to do this other than using result
     * as part of the calculation. I figured that we had to collect the sum of the i variable somehow through each loop, so that we can 
     * sum the previous i value + the current i value. Really keen to know what is a better way to use this; trying not to use AI
     * at the moment to give me an answer.
     * 
     * note to self for future:
     * -> where starting loop is i = 0; 
     *-> for each loop, we add + 1 (through i++), where
     * -> result variable stores the current sum of i in current loop, to be used in the next iteration of the loop
     * --> e.g i = 0 ---> Loop 0 => result = 0 && i = 0  --> loop 0 => result = result (0) + i (0)  ===> result = 0
     * --> now result = 0 && i = 1 (0 + 1) ---> loop 1 => result = result (0) + i (1) ===> result = 1
     * --> now result = 1 && 1 = 2 (1 + 1) ---> loop 2 => result = result (1) + i (2) ===> result = 3...
     * i.e = previous loop (i) value is stored in result and is added to current loops (i) value increasing by inc of 1 per loop.
     */
    public static Integer sumUpToLimit(Integer intLimit) {
        Integer result = 0;
        for (integer i = 0; i <= intLimit; i++) {
            result += i;
        } 
        return result;
    }

    /**
     * Question 9
     * Generate String "Hello World!" three times, with each occurrence separated by a semicolon.
     * Example: returnHelloWorld() should return "Hello World!; Hello World!; Hello World!; "
     * @return The string "Hello World!; Hello World!; Hello World!; "
     * 
     * TR - I know that the use of 'break' is redundant here, but I wanted to leave it there as I used it for testing. I know that for this scenario it isn't really needed because we've fixed
     * the condition of the loop to run when the value is less than three. Just thought I'd showcase that it crossed my mind. I wouldn't add it in future work.
     */
    public static String returnHelloWorld() {
        String result;
        String helloWorldText = 'Hello World!; ';

        for (integer i = 0; i < 3; i++) {
        if (result == null) {
            result = 'Hello World!; ';
        } 
        /*else if (i == 3) {
            break;
        }*/
        else ( result += 'Hello World!; ');
        }

        return result; 
    }

    /**
     * Question 10
     * Generate a string where the input string is repeated the given number of times, with each
	 * repetition separated by a semicolon. 
     * Do not add a semicolon after the last repetition.
	 * Example: repeatString("Hello World!", 3) should return "Hello World!; Hello World!; Hello World!"
     * @param inputString The string to be repeated.
     * @param repeatCount The number of times the string should be repeated.
     * @return The new string with the inputString repeated repeatCount times.
     * 
     * 
     * TR - Hey teach; I feel like this approach of setting a value when i = 0 or result = null (see question 9) in the for statement is a bit extra. However, I can't think of
     * better way of setting the initial values at loop 0. I tried doing it outside of the for statement in question 9, but I came back with the wrong results because I was adding an extra 'Hello World'
     * to the loop 0 string (loop 0 = helloworld; helloworld). Is there any other way to set it up? I don't want to ask chatgpt on this because I want to sleep on it, but also
     * want to see what your thoughts are. 
     * 
     * I'm also not sure about the else if logic; I like that it works! But I'm not sure if it's the cleanest way to do it. I did it this way because I wanted it to stop at the 
     * last running loop and not at the loop of the repeatcount value where it stops. I wasn't sure how to find what iteration of the loop we're at other than using the repeatCount - 1 expression.
     *  I don't know how to better word it at the moment!
     * 
     * I'm also starting to feel like the unsaid here when writing code is that we have to set up our defensive programming first before actually writing out the logic to get what
     * we're after. Is this true? It feels natural to. This is why I've been putting up my guardrails so to speak, but also, I feel like adding all the guardrails will make the code too hard to read.
     
       public static String repeatString(String inputString, Integer repeatCount) {
       String result =;
        for (Integer i = 0; i < repeatCount; i++) {
            if (i == 0) {
                result = inputString + '; ';
            } else if (i == (repeatCount - 1)) {
                result += inputstring;
            } else 
                (result += inputstring + '; ');
        }
    }

    I'm keeping the above because I want to show what I initial banged my head on about. I then had a look at my work again and determined I can reduce the logic down to size.
    I'm still not sure if initializing the result the way I did is correct, but I feel like it makes the code a bit easier to read at least?
     */

    public static String repeatString(String inputString, Integer repeatCount) {
       String result = ''; 
        for (Integer i = 0; i < repeatCount; i++) {
            if (i < repeatCount - 1) {
                result += inputString + '; ';
            } else 
                (result += inputstring);
        }
        return result;
    }

    /**
     * Question 11
     * Creates a List of integers and adds the integers 1, 2, and 3 to it.
     * Example: createAndPopulateList() should return [1, 2, 3]
     * @return A List of integers containing the numbers 1, 2, and 3.
     */
    public static List<Integer> createAndPopulateList() {
       
        List<Integer> IntegerList = new List<Integer>();
        IntegerList.add(1);
        IntegerList.add(2);
        IntegerList.add(3);

        return IntegerList; 
    }

    /**
     * Question 12
     * Creates a List of integers and adds the integers from 1 to 5. Then it removes the number 3 from the list.
     * Example: createAndRemoveFromList() should return [1, 2, 4, 5]
     * @return A List of integers from 1 to 5, excluding the number 3.
     */
    public static List<Integer> createAndRemoveFromList() {
        // Create a new list of integers and add numbers 1 to 5
        List<Integer> numberList = new List<Integer>{1, 2, 3, 4, 5}; //DO NOT CHANGE
        numberList.remove(2);
        return numberList;
    }

    /**
     * Question 13
     * Create a list filled with integers based on the input parameter.
     * Example: createIntegerList(5) should return [1, 2, 3, 4, 5] 
     * @param n The last integer in the List.
     * @return A List of integers from 1 to 'n'.
     */
    public static List<Integer> createIntegerList(Integer n) {

        List<Integer> numberList = new List<Integer>();
        for (Integer i = 0; i < n; i++) {
            {
               numberList.add(i + 1); 
            }
        }
        return numberList;
    }

    /**
     * Question 14 
     * Remove duplicate values from the list of Strings.
     * The returned Set contains the unique strings from the input List.
     * Example: createStringSet(['a', 'b', 'a', 'c']) should return ['a', 'b', 'c']
     * @param inputList The List of strings.
     * @return A Set of unique strings.
     * 
     * 
     * TR - teach. this blew my brain up. very fun but very tricky. please tell me this was an ok way. please be gentle. :')
     */
    public static Set<String> createStringSet(List<String> inputList) {
        Set<String> stringSet = new Set<String>();

        for (Integer i = 0; i < inputList.size(); i++) {
             String currentValue = inputList.get(i); /* TR - I did this because I couldn't think of any other way to get the value in the list other than through getting the array */

            if (stringSet.contains(currentValue)) {   /*TR NOTE: IF the string set contains the current input list value, then skip, otherwise add to set*/
                continue;
            } else {
                (stringSet.add(currentValue));
                
            }
        }
        return stringSet;
    }

    /**
     * Question 15
     * Iterates over a list of integers and sums only the positive integers.
     * Example: sumPositiveIntegers() should return 12
     * @return The sum of positive integers from the list.
     */
    public static Integer sumPositiveIntegers() {
        List<Integer> numbers = new List<Integer>{-1, 2, -3, 4, -5, 6}; //DO NOT CHANGE
        Integer currentValue;
        Integer totalValue = 0;

        for (Integer i = 0; i < numbers.size(); i++) {
            currentValue =  numbers.get(i);

            if (currentValue > 0) { 
               totalValue += currentValue;
            } else {
                continue;}
        }

        return totalValue; 
    }

    /**
     * Question 16
     * Iterates over a list of strings and searches for a specific word. Once found, it breaks the loop.
     *  Example: findWordInList("World", ['Hello', 'World', 'Goodbye']) should return 1
     * @param wordToFind The word to find in the list.
     * @param words The list of words to search.
     * @return The position of the word in the list as a string or -1 if the word was not found.
     */
    public static Integer findWordInList(String wordToFind, List<String> words) {
        String currentWord;
        Integer positionIndex = -1; /* I think this would be right to set at the start as a default value, since the loop will update it if conditions are met the one time. Cleaner than adding an extra 'else if' line in my mind */
        for (Integer i = 0; i < words.size(); i++) {
            currentWord = words.get(i);
            if (currentWord.contains(wordToFind)) {
                positionIndex = i;
            } else {
                continue;
            }
        }
        return positionIndex;
    }

    /**
     * Question 17
     * Loop through the list of money and adds them up until it accumulates more than 40 and then stops counting.
     * The change values are in cents and the total is to be calculated in dollars.
     * Example: countMoney() should return 48.02
     * @return The total value in dollars, stopped at the point when it exceeds 40 dollars.
     * 
     * TR - Hey teach, I just had a look at what the 'for' statement is while typing out 'fori'. I see how it could have been used for the earlier work which I've banged my head on. But.. I hope it was fine that 
     * I didn't use it then and am using it now to test it out. 
     */
    public static Decimal countMoney() {
        List<Decimal> moneyInWallet = new List<Decimal>{0.50, 10, 3.84, 24.60, 9.08, 50, 4.90}; //DO NOT CHANGE
        Decimal result = 0; 
        for (Decimal countMoney : moneyInWallet) {
            if (result > 40) {
                break;
            } 
            result += countMoney; //I think this is fine as opposed to using the ifelse statement. Trying to keep what you've said in module1 in mind.
        } 
        return result;
    }

    /**
     * Question 18
     * Create a map that has five key-value pairs to the map, where the keys are the names of fruits and the values are their quantities.
     * Example: addItemsToMap() should return "Apples => 5, Oranges => 10, Bananas => 15, Pears => 20, Grapes => 25"
     * @return The Map of fruits and their quantities.
     */
    public static Map<String, Integer> addItemsToMap() {
        Map<String, Integer> fruitValues = new Map<String, Integer>();

        fruitValues.put('Apples', 5);
        fruitValues.put('Oranges', 10);
        fruitValues.put('Bananas', 15);
        fruitValues.put('Pears', 20);
        fruitValues.put('Grapes', 25);

        return fruitValues;
    }

    /**
     * Question 19
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then returns the salary of the employee whose name is specified.
     * Example: getSalary("John Doe") should return 50000
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_map.htm#apex_System_Map_get
     * @param employeeName The name of the employee.
     * @return The salary of the employee, or null if the employee is not found in the Map.
     */
    public static Integer getSalary(String employeeName) {
        Map<String, Integer> employeeSalary = new Map<String, Integer> ();
        employeeSalary.put('John Doe', 50000);
        employeeSalary.put('Jane Smith', 60000);
        employeeSalary.put('Sam Brown', 55000);
        employeeSalary.put('Alice Johnson', 65000);

        Integer retrieveSalary = employeeSalary.get(employeeName);
        return retrieveSalary;
    }

    /**
     * Question 20
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then, iterates over the map and checks if an employee's salary is more than 55000.
     * If it is, add the employee's name to a list of employees that is returned by the method.
     * Remember that a Map is a collection of key-value pairs. Key are a set of unique values, so you can't have duplicate keys. Values are a list of values, so you can have duplicate values.
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_for_lists.htm
     * Example: getHighPaidEmployees() should return ['Jane Smith', 'Alice Johnson']
     * @return A list of employee names who have a salary more than 55000.
     * 
     *TR:  this blew my mind a bit. I had to get a little help, admittedly, on how to split out the values in the Map
     * into their own lists so that I could then use the traditional loop correctly. Learnt a lot on this one.
     */
    public static List<String> getHighPaidEmployees() {

        Map<String, Integer> employeeSalaries = new Map<String, Integer>();
        employeeSalaries.put ('John Doe', 50000);
        employeeSalaries.put ('Jane Smith', 60000);
        employeeSalaries.put ('Sam Brown', 55000);
        employeeSalaries.put ('Alice Johnson', 65000);

        List<String> srzMoneyMakers = new List<String>(); //list to collect names that meet criteria;
        List<String> employeeNames = new List<String>(employeeSalaries.keySet()); //set the values of employees from the map into a string list 
        List<Integer> employeeSalary = new List<Integer>(employeeSalaries.values()); // set the values of the salaries into an integer list

        for (Integer i = 0; i < employeeNames.size(); i++) {
        String currentEmployee = employeeNames [i]; //introducing string var to store current var's element value;
        Integer currentSalary = employeeSalary [i]; // as above;
        {
            if (currentSalary > 55000) {
                srzMoneyMakers.add(currentEmployee);
            }
        }
    }
    return srzMoneyMakers;
}

}