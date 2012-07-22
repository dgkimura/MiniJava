LS$$:
    .long 0
    .long LS$Search
    .long LS$Start
    .long LS$Init
    .long LS$Print
    .text
    .global asm_main

asm_main:
    movl $10, %eax
    pushl %eax
    pushl $12
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal LS$$, %ebx
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
LS$Init:
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
LS$Search:
    pushl %ebp
    movl %esp, %ebp
    subl $24, %esp
    pushl %ecx
    movl $1, %eax
    # local var j
    movl %eax, -16(%ebp)
    movl $0, %eax
    # local var ls01
    movl %eax, -20(%ebp)
    movl $0, %eax
    # local var ifound
    movl %eax, -12(%ebp)
    jmp L5
L4:
    # instance var number
    movl 4(%ecx), %eax
    pushl %eax
    # local var j
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
    movl $1, %eax
    popl %edx
    addl %edx, %eax
    # local var aux02
    movl %eax, -8(%ebp)
    # local var aux01
    movl -4(%ebp), %eax
    pushl %eax
    # parameter num
    movl 8(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L8
    movl $0, %eax
    jmp L9
L8:
    movl $1, %eax
L9:
    cmpl $0, %eax
    je L6
    movl $0, %eax
    # local var nt
    movl %eax, -24(%ebp)
    jmp L7
L6:
    # local var aux01
    movl -4(%ebp), %eax
    pushl %eax
    # local var aux02
    movl -8(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L14
    movl $0, %eax
    jmp L15
L14:
    movl $1, %eax
L15:
    cmpl $0, %eax
    je L12
    movl $0, %eax
    jmp L13
L12:
    movl $1, %eax
L13:
    cmpl $0, %eax
    je L10
    movl $0, %eax
    # local var nt
    movl %eax, -24(%ebp)
    jmp L11
L10:
    movl $1, %eax
    # local var ls01
    movl %eax, -20(%ebp)
    movl $1, %eax
    # local var ifound
    movl %eax, -12(%ebp)
    # instance var size
    movl 8(%ecx), %eax
    # local var j
    movl %eax, -16(%ebp)
L11:
L7:
    # local var j
    movl -16(%ebp), %eax
    pushl %eax
    movl $1, %eax
    popl %edx
    addl %edx, %eax
    # local var j
    movl %eax, -16(%ebp)
L5:
    # local var j
    movl -16(%ebp), %eax
    pushl %eax
    # instance var size
    movl 8(%ecx), %eax
    popl %edx
    cmpl %eax, %edx
    jl L16
    movl $0, %eax
    jmp L17
L16:
    movl $1, %eax
L17:
    cmpl $0, %eax
    jne L4
    # local var ifound
    movl -12(%ebp), %eax
    addl $25, %esp
    movl %ebp, %esp
    popl %ebp
    ret
LS$Print:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    pushl %ecx
    movl $1, %eax
    # local var j
    movl %eax, -4(%ebp)
    jmp L19
L18:
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
L19:
    # local var j
    movl -4(%ebp), %eax
    pushl %eax
    # instance var size
    movl 8(%ecx), %eax
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
    movl $0, %eax
    addl $5, %esp
    movl %ebp, %esp
    popl %ebp
    ret
LS$Start:
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
    addl $16, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux02
    movl %eax, -8(%ebp)
    movl $9999, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
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
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    movl $12, %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    movl $17, %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
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
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    movl $55, %eax
    addl $9, %esp
    movl %ebp, %esp
    popl %ebp
    ret
