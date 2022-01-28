	ifndef	??version
?debug	macro
	endm
publicdll macro	name
	public	name
	endm
$comm	macro	name,dist,size,count
	comm	dist name:BYTE:count*size
	endm
	else
$comm	macro	name,dist,size,count
	comm	dist name[size]:BYTE:count
	endm
	endif
	?debug	V 300h
	?debug	S "c:\borlandc\visual\src\main.cpp"
	?debug	C E9F98E3B541F633A5C626F726C616E64635C76697375616C5C7372+
	?debug	C 635C6D61696E2E637070
	?debug	C E94019CA181E433A5C424F524C414E44435C494E434C5544455C69+
	?debug	C 6F73747265616D2E68
	?debug	C E94019CA181B433A5C424F524C414E44435C494E434C5544455C5F+
	?debug	C 646566732E68
	?debug	C E94019CA1819433A5C424F524C414E44435C494E434C5544455C6D+
	?debug	C 656D2E68
	?debug	C E94019CA181B433A5C424F524C414E44435C494E434C5544455C5F+
	?debug	C 6E756C6C2E68
MAIN_TEXT	segment byte public 'CODE'
MAIN_TEXT	ends
DGROUP	group	_DATA,_BSS
	assume	cs:MAIN_TEXT,ds:DGROUP
_DATA	segment word public 'DATA'
d@	label	byte
d@w	label	word
_DATA	ends
_BSS	segment word public 'BSS'
b@	label	byte
b@w	label	word
_BSS	ends
MAIN_TEXT	segment byte public 'CODE'
   ;	
   ;	int main(void) {
   ;	
	assume	cs:MAIN_TEXT
_main	proc	far
   ;	
   ;	
   ;	    cout << "Hello World!" << "\n";
   ;	
	xor	ax,ax
	push	ax
	mov	ax,offset DGROUP:s@
	push	ax
	mov	ax,offset DGROUP:_cout
	push	ax
	call	far ptr @ostream@outstr$qpxzct1
	add	sp,6
	xor	ax,ax
	push	ax
	mov	ax,offset DGROUP:s@+13
	push	ax
	mov	ax,offset DGROUP:_cout
	push	ax
	call	far ptr @ostream@outstr$qpxzct1
	add	sp,6
   ;	
   ;	    return 0;
   ;	
	xor	ax,ax
   ;	
   ;	
   ;	}
   ;	
	ret	
_main	endp
	?debug	C E9
	?debug	C FA00000000
MAIN_TEXT	ends
_DATA	segment word public 'DATA'
s@	label	byte
	db	'Hello World!'
	db	0
	db	10
	db	0
_DATA	ends
MAIN_TEXT	segment byte public 'CODE'
MAIN_TEXT	ends
	public	_main
	extrn	_cout:word
	extrn	@ostream@outstr$qpxzct1:far
_s@	equ	s@
	end
