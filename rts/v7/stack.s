*
*	stack overflow -- modula-2 runtime library
*
	entry	.stack
	extrn	.abort
	pure
.stack	equ	*
	lis	r0,STACK
	b	.abort
	end
