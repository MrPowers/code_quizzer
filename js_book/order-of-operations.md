# Order of Operations

Remember PEMDAS from high school algebra?  Mathematical expressions are evaluated in a certain order (called the order of operations).  The order of operations is parenthesis, exponents, multiplication / division, and finally addition / subtraction.  The following statement executes the multiplication before the addition:

```javascript
1 + 2 * 3 // returns 7
```

2 is multipled by 3 and then 1 is added to the product.  The multiplication happens before the addition because multiplication is higher in the order of operations.
 
When parenthesis are added, the order of operations is changed. The following statement (with the same operands and operators) will return 9.

```javascript
(1 + 2) * 3 // returns 9
```

1, 2, and 3 are referred to as operators.  + and * are called operands.
