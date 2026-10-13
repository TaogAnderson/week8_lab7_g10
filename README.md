# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names - G10: Taog Anderson & Joshua Milbourne

## Summary
We learned how to use modules and wires in a non-top .v file to implement ones compliment and how to use loops in vivado to implement twos compliment. We also learned more about using vectors for assigning variables.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
We use an inverter on A to fit subtraction rather than addition when ANDing A & B.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
It requires that you wrap the carry out of the most significant bit around and use an additional four adders after the first round if there is a carry out from the most significant bits being added. It's slower and more expensive.

### 3 - What is the edge case and problem with Two’s Complement number representation?
It's when the range of the signed number dependent on the bits is exceeded and the number wraps around from positive to negative or from negative to positive. This is common when subtracting from a negative or adding to a positive in the two's complement system.
