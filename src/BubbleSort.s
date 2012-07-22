BBS$$:
    .long 0
    .long BBS$Sort
    .long BBS$Start
    .long BBS$Init
    .long BBS$Print
    .text
    .global asm_main

asm_main:
    movl $10, %eax
    pushl %eax
    pushl $12
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal BBS$$, %ebx
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
BBS$Init:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
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
    movl $20, %eax
    pushl %eax
    movl $0, %eax
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
    movl $7, %eax
    pushl %eax
    movl $1, %eax
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
    movl $12, %eax
    pushl %eax
    movl $2, %eax
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
    movl $18, %eax
    pushl %eax
    movl $3, %eax
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
    movl $2, %eax
    pushl %eax
    movl $4, %eax
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
    movl $11, %eax
    pushl %eax
    movl $5, %eax
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
    movl $6, %eax
    pushl %eax
    movl $6, %eax
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
    movl $9, %eax
    pushl %eax
    movl $7, %eax
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
    movl $19, %eax
    pushl %eax
    movl $8, %eax
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
    movl $5, %eax
    pushl %eax
    movl $9, %eax
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
    movl $0, %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
BBS$Print:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    pushl %ecx
    movl $0, %eax
    # local var j
    movl %eax, -4(%ebp)
    jmp L1
L0:
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
L1:
    # local var j
    movl -4(%ebp), %eax
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
    addl $5, %esp
    movl %ebp, %esp
    popl %ebp
    ret
BBS$Sort:
    pushl %ebp
    movl %esp, %ebp
    subl $36, %esp
    pushl %ecx
    # instance var size
    movl 8(%ecx), %eax
    pushl %eax
    movl $1, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    # local var i
    movl %eax, -24(%ebp)
    movl $0, %eax
    pushl %eax
    movl $1, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    # local var aux02
    movl %eax, -4(%ebp)
    jmp L5
L4:
    movl $1, %eax
    # local var j
    movl %eax, -28(%ebp)
    jmp L7
L6:
    # local var j
    movl -28(%ebp), %eax
    pushl %eax
    movl $1, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    # local var aux07
    movl %eax, -20(%ebp)
    # instance var number
    movl 4(%ecx), %eax
    pushl %eax
    # local var aux07
    movl -20(%ebp), %eax
    popl %edx
    shl $2, %eax
    # DAVIDEBUG eax now contains array item addr
    addl %edx, %eax
    movl (%eax), %eax
    # local var aux04
    movl %eax, -8(%ebp)
    # instance var number
    movl 4(%ecx), %eax
    pushl %eax
    # local var j
    movl -28(%ebp), %eax
    popl %edx
    shl $2, %eax
    # DAVIDEBUG eax now contains array item addr
    addl %edx, %eax
    movl (%eax), %eax
    # local var aux05
    movl %eax, -12(%ebp)
    # local var aux05
    movl -12(%ebp), %eax
    pushl %eax
    # local var aux04
    movl -8(%ebp), %eax
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
    # local var j
    movl -28(%ebp), %eax
    pushl %eax
    movl $1, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    # local var aux06
    movl %eax, -16(%ebp)
    # instance var number
    movl 4(%ecx), %eax
    pushl %eax
    # local var aux06
    movl -16(%ebp), %eax
    popl %edx
    shl $2, %eax
    # DAVIDEBUG eax now contains array item addr
    addl %edx, %eax
    movl (%eax), %eax
    # local var t
    movl %eax, -36(%ebp)
    # instance var number
    movl 4(%ecx), %eax
    pushl %eax
    # local var j
    movl -28(%ebp), %eax
    popl %edx
    shl $2, %eax
    # DAVIDEBUG eax now contains array item addr
    addl %edx, %eax
    movl (%eax), %eax
    pushl %eax
    # local var aux06
    movl -16(%ebp), %eax
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
    # local var t
    movl -36(%ebp), %eax
    pushl %eax
    # local var j
    movl -28(%ebp), %eax
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
    jmp L9
L8:
    movl $0, %eax
    # local var nt
    movl %eax, -32(%ebp)
L9:
    # local var j
    movl -28(%ebp), %eax
    pushl %eax
    movl $1, %eax
    popl %edx
    addl %edx, %eax
    # local var j
    movl %eax, -28(%ebp)
L7:
    # local var j
    movl -28(%ebp), %eax
    pushl %eax
    # local var i
    movl -24(%ebp), %eax
    pushl %eax
    movl $1, %eax
    popl %edx
    addl %edx, %eax
    popl %edx
    cmpl %eax, %edx
    jl L12
    movl $0, %eax
    jmp L13
L12:
    movl $1, %eax
L13:
    cmpl $0, %eax
    jne L6
    # local var i
    movl -24(%ebp), %eax
    pushl %eax
    movl $1, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    # local var i
    movl %eax, -24(%ebp)
L5:
    # local var aux02
    movl -4(%ebp), %eax
    pushl %eax
    # local var i
    movl -24(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L14
    movl $0, %eax
    jmp L15
L14:
    movl $1, %eax
L15:
    cmpl $0, %eax
    jne L4
    movl $0, %eax
    addl $37, %esp
    movl %ebp, %esp
    popl %ebp
    ret
BBS$Start:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
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
    addl $16, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    movl $99999, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $16, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    movl $0, %eax
    addl $5, %esp
    movl %ebp, %esp
    popl %ebp
    ret
