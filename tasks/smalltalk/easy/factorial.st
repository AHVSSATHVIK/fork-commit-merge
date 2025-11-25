" Smalltalk - Easy "

Object subclass: #Factorial
	instanceVariableNames: ''
	classVariableNames: ''
	category: 'Factorial'!

!Factorial methodsFor: 'calculate'!
calculate: n
	"Calculate factorial of n"
	| result |
	n < 0 ifTrue: [ ^self error: 'Factorial not defined for negative numbers' ].
	n <= 1 ifTrue: [ ^1 ].
	result := 1.
	2 to: n do: [ :i | result := result * i ].
	^result
! !

"Execute the factorial calculation"
| fact result |
fact := Factorial new.
result := fact calculate: 5.
Transcript show: 'Factorial of 5: '; show: result; cr.
