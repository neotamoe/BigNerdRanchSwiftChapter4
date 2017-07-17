# Big Nerd Ranch Swift - Chapter 4

## Numbers
Chapter 4 reviews Integers and floating-point numbers.  Unsigned and signed integer types are explained.  Overflow operators are
also introduced.  Floating point numbers have a decimal.  Float is a 32-bit floating-point number.  Double is a 64-bit floating-point
number and is more precise than a Float.  Float vs Double is not a max or min value range as with integers; the bit size determines
a number's precision.

## Swift Style
* "...good Swift style is to sue an Int for most use cases." (page 26)
* "Swift style is to prefer Int for all integer uses (including counts) unless an unsigned integer is required by the algorithm or code you are writing."  (page 27)
* the result of any operation between two integers is always another integer of the same type.
* When dividing two integers, Swift truncates and will round toward 0.  11/3 will print 3.  11%3 will print 2.  -11%3 will print -2.
* default inferred type for floating-point numbers is Double.
* floating-point numbers are inherently imprecise which may cause issues when comparing values.  Do not use floating-point numbers for values that
must be exact such as calculations dealing with money.  There are other tools for that purpose.  
