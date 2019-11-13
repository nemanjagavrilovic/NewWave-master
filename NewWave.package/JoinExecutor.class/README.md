I am an executor of one join, handled by JoinHandler. 
joinNode is the node on which join is performed.
We add the sequences to this instance as one branch completes. When all incoming brances complete, the join is finished.

    Instance Variables
	incSequences:		<OrderedCollection Sequence>
	joinNode:		<Node>


    Implementation Points