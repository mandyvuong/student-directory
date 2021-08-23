# Student-directory

The student directory script allows you to manage the list of students enrolled at the Villains Academy.
Learning the fundamentals of Ruby.

## How to use

```shell
git clone git@github.com:mandyvuong/student-directory.git
cd student-directory
ruby directory.rb file.csv
```

file.csv is optional

## Process on creating program from scratch

1. Printing the list of students [link](https://github.com/mandyvuong/student-directory/blob/ae5a9e9183d27f76b662301c154eeccb499a3741/directory.rb)
2. Refactoring by using string interpolation and variables [link](https://github.com/mandyvuong/student-directory/blob/222aa7b636d7ffb4474265238f5489b68fcbc5ea/directory.rb)
3. Students put into an array [link](https://github.com/mandyvuong/student-directory/blob/8a8f14a20990ea32da685100a6ff92a5c57e4961/directory.rb)
4. Methods used for readability [link](https://github.com/mandyvuong/student-directory/blob/85de4cd1e3c982464074d3b2feab5d00f011495d/directory.rb)
5. Adding more information (i.e. cohort) and putting the students information in a hash, in an array [link](https://github.com/mandyvuong/student-directory/blob/72061a5ffdcd2bfe616e9d1b7851929de2671580/directory.rb)
6. Asking for user input [link](https://github.com/mandyvuong/student-directory/blob/f7ab497268c6a75420f39072db9aab0092be9272/directory.rb)
7. Adding an interactive menu [link](https://github.com/mandyvuong/student-directory/blob/ad155dda7037b982c37f241eb103596d0533fec5/directory.rb)
8. Refactoring [link](https://github.com/mandyvuong/student-directory/blob/7c2b079121ad8e3ed6423aa1ff2c4901e7615062/directory.rb)
9. Saving the data to a file [link](https://github.com/mandyvuong/student-directory/blob/91c15578cb5317e7aba285031d4c08bf4a2e1e9d/directory.rb)
10. Loading the data from the file [link](https://github.com/mandyvuong/student-directory/blob/020967f26602e1e3e3e7f46097524728a7e77b4b/directory.rb)
11. Taking arguments from the command line [link](https://github.com/mandyvuong/student-directory/blob/608695ba0f544774a6907fa70877f31234ae68f6/directory.rb)

## Additional exercises

Exercises to practice the fundamentals of Ruby:
The following was extended from [this script](https://github.com/mandyvuong/student-directory/blob/f7ab497268c6a75420f39072db9aab0092be9272/directory.rb)

1. Modify the program to print a number before the name of each student, e.g. "1. Dr. Hannibal Lecter"? [link](https://github.com/mandyvuong/student-directory/blob/986a443d75197859ac8a5d7a6a4ad04eecf7dd16/directory.rb)
2. Modify your program to only print the students whose name begins with a specific letter [link](https://github.com/mandyvuong/student-directory/blob/5b7c66d341b6f4fe5d5e4c016c7727f3fd8c5d67/directory.rb)
3. Modify your program to only print the students whose name is shorter than 12 characters [link](https://github.com/mandyvuong/student-directory/blob/32bd9eb392a65bcf6f235bc708f195fbc2547d84/directory.rb)
4. Rewrite the each() method that prints all students using while or until control flow methods [link](https://github.com/mandyvuong/student-directory/blob/a40131481fc8e72fa9f3ce95c289b148ad1a0d2e/directory.rb)
5. Code only works with the student name and cohort. Add more information: hobbies, country of birth, etc [link](https://github.com/mandyvuong/student-directory/blob/70baf454c6c900faa4045920556295d9c6ea4c1a/directory.rb)
6. Using method center() of the String class works to make the output beautifully aligned [link](https://github.com/mandyvuong/student-directory/blob/e7902b132f6e0864cd7e37d911f10dbdbcfe1355/directory.rb)
7. The input_students method the cohort value is hard-coded. How can you ask for both the name and the cohort? What if one of the values is empty? Can you supply a default value? The input will be given to you as a string? How will you convert it to a symbol? What if the user makes a typo? [link](https://github.com/mandyvuong/student-directory/blob/cf4761f847bf41d66f893b6e16fe91113dbf253c/directory.rb)
8. Once you complete the previous exercise, change the way the users are displayed: print them grouped by cohorts, iterate over it and only print the students from that cohort [link](https://github.com/mandyvuong/student-directory/blob/67373866a9b59587b6483f0550226cf20b2edcc0/directory.rb)
9. Right now if we have only one student, the user will see a message "Now we have 1 students", fix it so that it uses the singular form when appropriate and plural form otherwise [link](https://github.com/mandyvuong/student-directory/blob/3302718476a73f5ba02e70a9f4d5df35a3d1e72f/directory.rb)
10. chomp() method is used to get rid of the last return character. Find another method among those provided by the String class that could be used for the same purpose (although it will require passing some arguments). [link](https://github.com/mandyvuong/student-directory/blob/e6254710db5a6641108f8e21efc3f01cf6092224/directory.rb)
11. [Open this file](https://raw.githubusercontent.com/anitacanita/student-directory/master/typos.rb) and find all typos in that file and correct them. Use your experience, online documentation, etc. to find all the mistakes. Run the script in the terminal from time to time to make sure it works as it should. Google the errors Ruby gives you, think about what they could mean, try different things but don't look the answer up :) [link](https://github.com/mandyvuong/student-directory/blob/5eca750d73dc36a401fade4c08cd557266bd6240/directory.rb)
12. Use an if statement (Control Flow) to only print the list if there is at least one student in there [link](https://github.com/mandyvuong/student-directory/blob/33bb5bdd8c8219e3384c93fe54acaa91f11d706a/directory.rb)

The following was extended from [this script](https://github.com/mandyvuong/student-directory/blob/608695ba0f544774a6907fa70877f31234ae68f6/directory.rb)

1. The lines in load_students() and input_students() are almost the same. This violates the DRY (Don't Repeat Yourself) principle. Extract them into a method to fix this problem [link](https://github.com/mandyvuong/student-directory/blob/b7f0c1b3c7c3495368a7956153dab6521ac4adb7/directory.rb)
2. Make the program load students.csv by default if no file is given on startup [link](https://github.com/mandyvuong/student-directory/blob/25a1a9057828b88c58f4d2bf686ce9109a809d91/directory.rb)
3. Continue refactoring the code [link](https://github.com/mandyvuong/student-directory/blob/84c4697c8a0b2f2d9ea4ff11f1a5c981bb484cc3/directory.rb)
4. When the user choses an option from our menu, there's no way of them knowing if the action was successful. Fix this and implement feedback messages for the user [link](https://github.com/mandyvuong/student-directory/blob/35bd98e5056cf3b16d5c13206564641bf2dbe7bf/directory.rb)
5. Filename used to save and load data (menu items 3 and 4) is hardcoded. Make the script more flexible by asking for the filename if the user chooses these menu items. [link](https://github.com/mandyvuong/student-directory/blob/773a45abe969ebadc86f629cf39c2c53078f2f83/directory.rb)
6. Opening and closing the files is manually done. Refactor the code to use a code block [link](https://github.com/mandyvuong/student-directory/blob/61d670d5d7cab47b5b373402af2971b8ee87a4b6/directory.rb)
7. Currently, de-facto using CSV format to store data. Refactor the code to use library to work with CSV files [link](https://github.com/mandyvuong/student-directory/blob/c32d4b62c494d442a368fdebd5be6ac98f832bd9/directory.rb)
8. Short program that reads its own source code and prints it on the screen. [link](https://github.com/mandyvuong/student-directory/blob/4043bd2203d0b74dbcdce12dc32621f19afbf04c/directory.rb)
