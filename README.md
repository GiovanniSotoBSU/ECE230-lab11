# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Team 43 - Giovanni Soto, Dylan Owen
## Summary
Built two types of clock dividers using flip flops, a ring counter, and a modulo counter. Ring counter divides the clock by chaining T Flip Flops and the modulo counter counts to a set value and then resets. We learned how counters can divide a fast clock into a slower, more useful signal.
## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
It toggles its output whenever it reaches the chosen amount. One full cycle is needed for the output to go high and then low again. It takes two toggles to complete one full cycle, which is why the divider is 2 * Count.
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The flip flops do not begin with a proper starting value. Without an initialized state the values can shift in a way that makes all outputs become 1 after the first clock cycle.
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
The Basys3 clock is 100MHz. Dividing it down to ~1KHz means you need to divide it by about 1000, which is roughly 2 ^ 17, so a 17-counter would give an output close to 1KHz.
