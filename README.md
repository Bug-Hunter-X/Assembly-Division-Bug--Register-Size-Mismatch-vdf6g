# Assembly Division Bug: Register Size Mismatch

This repository demonstrates an uncommon error in assembly language programming related to register size mismatch during division. The bug is subtle and can lead to unexpected results. The original code suffers from incorrect register usage, leading to data truncation.

## Bug Description

The assembly code attempts to divide a number by 10 twice to extract tens and units. However, it incorrectly uses the `AX` register for the result, without considering that the `DIV` instruction modifies other registers (`DX:AX` pair). The bug occurs when the intermediate result of a division operation exceeds the expected size of the AX register, leading to truncated results.

## Solution

The solution addresses the issue by using the correct registers and handling potential overflow scenarios.  It ensures that the divisor and dividend are correctly sized to prevent data truncation.