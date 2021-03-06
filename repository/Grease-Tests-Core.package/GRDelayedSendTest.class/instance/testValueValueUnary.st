tests-evaluating
testValueValueUnary
	| send |
	send := GRDelayedSend 
		receiver: 1
		selector: #negated.
	self 
		should: 
			[ send 
				value: 2
				value: 3 ]
		raise: GRInvalidArgumentCount.
	send := GRDelayedSend 
		receiver: 1
		selector: #negated
		arguments: #().
	self 
		should: 
			[ send 
				value: 2
				value: 3 ]
		raise: GRInvalidArgumentCount