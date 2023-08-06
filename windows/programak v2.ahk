
;Programak - Comfortable layout for programmers!
;The layout is based on Colemak DHK mod
;The layout has 2 layer, one for alphabet and number, second is for symbols
;Switch layer with one key (Caps Lock by default)
;Delete moved to key on the right of pinky finger (next to Enter) for easier access

Layer := 1

MaxLayer:=3

NextLayer()
{
	global Layer
	global MaxLayer
	
	Layer++
	if(Layer > MaxLayer)
		Layer = 1

	;MsgBox Layer %Layer%!
}

Symbol(symbol)
{
	global Layer
	SendRaw %symbol%
	Layer := 1
}

Capslock::NextLayer()

;letters layer
#if Layer == 1

q::q
w::w
e::f
r::p
t::b

y::j
u::l
i::u
o::y
p:: 

a::a
s::r
d::s
f::t
g::g

h::k
j::n
k::e
l::i
`;::o
'::Backspace

z::x
x::c
c::d
v::v
b::z

n::m
m::h
,::.
.::,
/:: 

#If

;symbols layer
#If Layer = 2
q::Symbol("%")
w::Symbol("`^")
e::Symbol("&")
r::Symbol("|")
t::Symbol("")

y::Symbol("")
u::Symbol("""")
i::Symbol("'")
o::Symbol("``")
p::Symbol("")

a::Symbol("[")
s::Symbol("<")
d::Symbol("{")
f::Symbol("(")
g::Symbol("=")

h::Symbol("@")
j::Symbol(":")
k::Symbol(";")
l::Symbol("?")
`;::Symbol("!")
;'::Symbol("")

z::Symbol("*")
x::Symbol("/")
c::Symbol("+")
v::Symbol("-")
b::Symbol("")

n::Symbol("")
m::Symbol(",")
,::Symbol(".")
.::Symbol("")
/::Symbol("")



#If 


;symbols layer 2
#If Layer = 3
q::Symbol("")
w::Symbol("")
e::Symbol("")
r::Symbol("")
t::Symbol("")

y::Symbol("")
u::Symbol("")
i::Symbol("")
o::Symbol("")
p::Symbol("")

a::Symbol("]")
s::Symbol(">")
d::Symbol("`}")
f::Symbol(")")
g::Symbol("")

h::Symbol("")
j::Symbol("")
k::Symbol("")
l::Symbol("")
`;::Symbol("")
'::Symbol("")

z::Symbol("")
x::Symbol("\")
c::Symbol("")
v::Symbol("_")
b::Symbol("")

n::Symbol("")
m::Symbol("")
,::Symbol("")
.::Symbol("")
/::Symbol("")



#If 

