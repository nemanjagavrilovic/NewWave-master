running
execute: elem
	| elemHandler executor |
	elemHandler := BehaviorHandler new.
	executor := elemHandler behaviors at: elem ctype.
	" Ideja je da bi execute mogao da se pozove i naknadno, odnosno ukoliko je aktivacija vec napravljena ili treba da se nastavi nakon prekida."
	self workList addToRunning: (self activationForNode: elem).
	executor performExecution: elem executor: self.
	
	
	
	