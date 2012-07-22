BS$$:
    .long 0
    .long BS$Search
    .long BS$Start
    .long BS$Init
    .long BS$Compare
    .long BS$Print
    .long BS$Div
    .text
    .global asm_main

asm_main:
    movl $20, %eax
    pushl %eax
    pushl $12
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal BS$$, %ebx
    movl %ebx, (%eax)
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    ret
BS$Init:
    pushl %ebp
    movl %esp, %ebp
    subl $16, %esp
    pushl %ecx
    # parameter sz
    movl 8(%ebp), %eax
    # instance var size
    movl %eax, 8(%ecx)
    # parameter sz
    movl 8(%ebp), %eax
    pushl %eax
    addl $1, %eax
    shl $2, %eax
    pushl %eax
    call mjmalloc
    addl $4, %esp
    popl %edx
    movl %edx, (%eax)
    movl (%esp), %ecx
    addl $4, %eax
    # instance var number
    movl %eax, 4(%ecx)
    movl $1, %eax
    # local var j
    movl %eax, -12(%ebp)
    # instance var size
    movl 8(%ecx), %eax
    pushl %eax
    movl $1, %eax
    popl %edx
    addl %edx, %eax
    # local var k
    movl %eax, -16(%ebp)
    jmp L1
L0:
    movl $2, %eax
    pushl %eax
    # local var j
    movl -12(%ebp), %eax
    popl %edx
    imul %edx, %eax
    # local var aux01
    movl %eax, -4(%ebp)
    # local var k
    movl -16(%ebp), %eax
    pushl %eax
    movl $3, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    # local var aux02
    movl %eax, -8(%ebp)
    # local var aux01
    movl -4(%ebp), %eax
    pushl %eax
    # local var aux02
    movl -8(%ebp), %eax
    popl %edx
    addl %edx, %eax
    pushl %eax
    # local var j
    movl -12(%ebp), %eax
    pushl %eax
    popl %edx
    popl %eax
    # instance var number
    movl 4(%ecx), %ecx
    shl $2, %edx
    addl %ecx, %edx
    # DAVIDEBUG edx now contains array item addr
    movl %eax, (%edx)
    movl (%esp), %ecx
    # local var j
    movl -12(%ebp), %eax
    pushl %eax
    movl $1, %eax
    popl %edx
    addl %edx, %eax
    # local var j
    movl %eax, -12(%ebp)
    # local var k
    movl -16(%ebp), %eax
    pushl %eax
    movl $1, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    # local var k
    movl %eax, -16(%ebp)
L1:
    # local var j
    movl -12(%ebp), %eax
    pushl %eax
    # instance var size
    movl 8(%ecx), %eax
    popl %edx
    cmpl %eax, %edx
    jl L2
    movl $0, %eax
    jmp L3
L2:
    movl $1, %eax
L3:
    cmpl $0, %eax
    jne L0
    movl $0, %eax
    addl $17, %esp
    movl %ebp, %esp
    popl %ebp
    ret
BS$Print:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    pushl %ecx
    movl $1, %eax
    # local var j
    movl %eax, -4(%ebp)
    jmp L5
L4:
    # instance var number
    movl 4(%ecx), %eax
    pushl %eax
    # local var j
    movl -4(%ebp), %eax
    popl %edx
    shl $2, %eax
    # DAVIDEBUG eax now contains array item addr
    addl %edx, %eax
    movl (%eax), %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    # local var j
    movl -4(%ebp), %eax
    pushl %eax
    movl $1, %eax
    popl %edx
    addl %edx, %eax
    # local var j
    movl %eax, -4(%ebp)
L5:
    # local var j
    movl -4(%ebp), %eax
    pushl %eax
    # instance var size
    movl 8(%ecx), %eax
    popl %edx
    cmpl %eax, %edx
    jl L6
    movl $0, %eax
    jmp L7
L6:
    movl $1, %eax
L7:
    cmpl $0, %eax
    jne L4
    movl $99999, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    movl $0, %eax
    addl $5, %esp
    movl %ebp, %esp
    popl %ebp
    ret
BS$Compare:
    pushl %ebp
    movl %esp, %ebp
    subl $8, %esp
    pushl %ecx
    movl $0, %eax
    # local var retval
    movl %eax, -8(%ebp)
    # parameter num2
    movl 8(%ebp), %eax
    pushl %eax
    movl $1, %eax
    popl %edx
    addl %edx, %eax
    # local var aux02
    movl %eax, -4(%ebp)
    # parameter num1
    movl 12(%ebp), %eax
    pushl %eax
    # parameter num2
    movl 8(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L10
    movl $0, %eax
    jmp L11
L10:
    movl $1, %eax
L11:
    cmpl $0, %eax
    je L8
    movl $0, %eax
    # local var retval
    movl %eax, -8(%ebp)
    jmp L9
L8:
    # parameter num1
    movl 12(%ebp), %eax
    pushl %eax
    # local var aux02
    movl -4(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L16
    movl $0, %eax
    jmp L17
L16:
    movl $1, %eax
L17:
    cmpl $0, %eax
    je L14
    movl $0, %eax
    jmp L15
L14:
    movl $1, %eax
L15:
    cmpl $0, %eax
    je L12
    movl $0, %eax
    # local var retval
    movl %eax, -8(%ebp)
    jmp L13
L12:
    movl $1, %eax
    # local var retval
    movl %eax, -8(%ebp)
L13:
L9:
    # local var retval
    movl -8(%ebp), %eax
    addl $9, %esp
    movl %ebp, %esp
    popl %ebp
    ret
BS$Div:
    pushl %ebp
    movl %esp, %ebp
    subl $12, %esp
    pushl %ecx
    movl $0, %eax
    # local var count01
    movl %eax, -8(%ebp)
    movl $0, %eax
    # local var count02
    movl %eax, -12(%ebp)
    # parameter num
    movl 8(%ebp), %eax
    pushl %eax
    movl $1, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    # local var aux03
    movl %eax, -4(%ebp)
    jmp L19
L18:
    # local var count01
    movl -8(%ebp), %eax
    pushl %eax
    movl $1, %eax
    popl %edx
    addl %edx, %eax
    # local var count01
    movl %eax, -8(%ebp)
    # local var count02
    movl -12(%ebp), %eax
    pushl %eax
    movl $2, %eax
    popl %edx
    addl %edx, %eax
    # local var count02
    movl %eax, -12(%ebp)
L19:
    # local var count02
    movl -12(%ebp), %eax
    pushl %eax
    # local var aux03
    movl -4(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L20
    movl $0, %eax
    jmp L21
L20:
    movl $1, %eax
L21:
    cmpl $0, %eax
    jne L18
    # local var count01
    movl -8(%ebp), %eax
    addl $13, %esp
    movl %ebp, %esp
    popl %ebp
    ret
BS$Search:
    pushl %ebp
    movl %esp, %ebp
    subl $28, %esp
    pushl %ecx
    movl $0, %eax
    # local var aux01
    movl %eax, -4(%ebp)
    movl $0, %eax
    # local var bs01
    movl %eax, -8(%ebp)
    # instance var number
    movl 4(%ecx), %eax
    movl -4(%eax), %eax
    # local var right
    movl %eax, -24(%ebp)
    # local var right
    movl -24(%ebp), %eax
    pushl %eax
    movl $1, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    # local var right
    movl %eax, -24(%ebp)
    movl $0, %eax
    # local var left
    movl %eax, -12(%ebp)
    movl $1, %eax
    # local var var_cont
    movl %eax, -28(%ebp)
    jmp L23
L22:
    # local var left
    movl -12(%ebp), %eax
    pushl %eax
    # local var right
    movl -24(%ebp), %eax
    popl %edx
    addl %edx, %eax
    # local var medium
    movl %eax, -16(%ebp)
    # local var medium
    movl -16(%ebp), %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $24, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var medium
    movl %eax, -16(%ebp)
    # instance var number
    movl 4(%ecx), %eax
    pushl %eax
    # local var medium
    movl -16(%ebp), %eax
    popl %edx
    shl $2, %eax
    # DAVIDEBUG eax now contains array item addr
    addl %edx, %eax
    movl (%eax), %eax
    # local var aux01
    movl %eax, -4(%ebp)
    # parameter num
    movl 8(%ebp), %eax
    pushl %eax
    # local var aux01
    movl -4(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L26
    movl $0, %eax
    jmp L27
L26:
    movl $1, %eax
L27:
    cmpl $0, %eax
    je L24
    # local var medium
    movl -16(%ebp), %eax
    pushl %eax
    movl $1, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    # local var right
    movl %eax, -24(%ebp)
    jmp L25
L24:
    # local var medium
    movl -16(%ebp), %eax
    pushl %eax
    movl $1, %eax
    popl %edx
    addl %edx, %eax
    # local var left
    movl %eax, -12(%ebp)
L25:
    # local var aux01
    movl -4(%ebp), %eax
    pushl %eax
    # parameter num
    movl 8(%ebp), %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $16, %eax
    movl (%eax), %eax
    call *%eax
    addl $8, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L28
    movl $0, %eax
    # local var var_cont
    movl %eax, -28(%ebp)
    jmp L29
L28:
    movl $1, %eax
    # local var var_cont
    movl %eax, -28(%ebp)
L29:
    # local var right
    movl -24(%ebp), %eax
    pushl %eax
    # local var left
    movl -12(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L32
    movl $0, %eax
    jmp L33
L32:
    movl $1, %eax
L33:
    cmpl $0, %eax
    je L30
    movl $0, %eax
    # local var var_cont
    movl %eax, -28(%ebp)
    jmp L31
L30:
    movl $0, %eax
    # local var nt
    movl %eax, -20(%ebp)
L31:
L23:
    # local var var_cont
    movl -28(%ebp), %eax
    cmpl $0, %eax
    jne L22
    # local var aux01
    movl -4(%ebp), %eax
    pushl %eax
    # parameter num
    movl 8(%ebp), %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $16, %eax
    movl (%eax), %eax
    call *%eax
    addl $8, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L34
    movl $1, %eax
    # local var bs01
    movl %eax, -8(%ebp)
    jmp L35
L34:
    movl $0, %eax
    # local var bs01
    movl %eax, -8(%ebp)
L35:
    # local var bs01
    movl -8(%ebp), %eax
    addl $29, %esp
    movl %ebp, %esp
    popl %ebp
    ret
BS$Start:
    pushl %ebp
    movl %esp, %ebp
    subl $8, %esp
    pushl %ecx
    # parameter sz
    movl 8(%ebp), %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $12, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $20, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux02
    movl %eax, -8(%ebp)
    movl $8, %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L36
    movl $1, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    jmp L37
L36:
    movl $0, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
L37:
    movl $19, %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L38
    movl $1, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    jmp L39
L38:
    movl $0, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
L39:
    movl $20, %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L40
    movl $1, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    jmp L41
L40:
    movl $0, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
L41:
    movl $21, %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L42
    movl $1, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    jmp L43
L42:
    movl $0, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
L43:
    movl $37, %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L44
    movl $1, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    jmp L45
L44:
    movl $0, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
L45:
    movl $38, %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L46
    movl $1, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    jmp L47
L46:
    movl $0, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
L47:
    movl $39, %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L48
    movl $1, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    jmp L49
L48:
    movl $0, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
L49:
    movl $50, %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L50
    movl $1, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    jmp L51
L50:
    movl $0, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
L51:
    movl $999, %eax
    addl $9, %esp
    movl %ebp, %esp
    popl %ebp
    ret
