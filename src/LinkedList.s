LL$$:
    .long 0
    .long LL$Start
List$$:
    .long 0
    .long List$GetNext
    .long List$Search
    .long List$InitNew
    .long List$Insert
    .long List$Init
    .long List$Delete
    .long List$GetElem
    .long List$SetNext
    .long List$Print
    .long List$GetEnd
Element$$:
    .long 0
    .long Element$GetAge
    .long Element$Init
    .long Element$Equal
    .long Element$Compare
    .long Element$GetMarried
    .long Element$GetSalary
    .text
    .global asm_main

asm_main:
    pushl $4
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal LL$$, %ebx
    movl %ebx, (%eax)
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    ret
LL$Start:
    pushl %ebp
    movl %esp, %ebp
    subl $24, %esp
    pushl %ecx
    pushl $16
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal List$$, %ebx
    movl %ebx, (%eax)
    # local var last_elem
    movl %eax, -24(%ebp)
    # local var last_elem
    movl -24(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $20, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    # local var last_elem
    movl -24(%ebp), %eax
    # local var head
    movl %eax, -20(%ebp)
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $20, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    pushl $16
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal Element$$, %ebx
    movl %ebx, (%eax)
    # local var el01
    movl %eax, -8(%ebp)
    movl $25, %eax
    pushl %eax
    movl $37000, %eax
    pushl %eax
    movl $0, %eax
    pushl %eax
    # local var el01
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $12, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    # local var el01
    movl -8(%ebp), %eax
    pushl %eax
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $16, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var head
    movl %eax, -20(%ebp)
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    movl $10000000, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    pushl $16
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal Element$$, %ebx
    movl %ebx, (%eax)
    # local var el01
    movl %eax, -8(%ebp)
    movl $39, %eax
    pushl %eax
    movl $42000, %eax
    pushl %eax
    movl $1, %eax
    pushl %eax
    # local var el01
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $12, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    # local var el01
    movl -8(%ebp), %eax
    # local var el02
    movl %eax, -12(%ebp)
    # local var el01
    movl -8(%ebp), %eax
    pushl %eax
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $16, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var head
    movl %eax, -20(%ebp)
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    movl $10000000, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    pushl $16
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal Element$$, %ebx
    movl %ebx, (%eax)
    # local var el01
    movl %eax, -8(%ebp)
    movl $22, %eax
    pushl %eax
    movl $34000, %eax
    pushl %eax
    movl $0, %eax
    pushl %eax
    # local var el01
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $12, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    # local var el01
    movl -8(%ebp), %eax
    pushl %eax
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $16, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var head
    movl %eax, -20(%ebp)
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    pushl $16
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal Element$$, %ebx
    movl %ebx, (%eax)
    # local var el03
    movl %eax, -16(%ebp)
    movl $27, %eax
    pushl %eax
    movl $34000, %eax
    pushl %eax
    movl $0, %eax
    pushl %eax
    # local var el03
    movl -16(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $12, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    # local var el02
    movl -12(%ebp), %eax
    pushl %eax
    # local var head
    movl -20(%ebp), %eax
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
    # local var el03
    movl -16(%ebp), %eax
    pushl %eax
    # local var head
    movl -20(%ebp), %eax
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
    movl $10000000, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    pushl $16
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal Element$$, %ebx
    movl %ebx, (%eax)
    # local var el01
    movl %eax, -8(%ebp)
    movl $28, %eax
    pushl %eax
    movl $35000, %eax
    pushl %eax
    movl $0, %eax
    pushl %eax
    # local var el01
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $12, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    # local var el01
    movl -8(%ebp), %eax
    pushl %eax
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $16, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var head
    movl %eax, -20(%ebp)
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    movl $2220000, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    # local var el02
    movl -12(%ebp), %eax
    pushl %eax
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $24, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var head
    movl %eax, -20(%ebp)
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    movl $33300000, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    # local var el01
    movl -8(%ebp), %eax
    pushl %eax
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $24, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var head
    movl %eax, -20(%ebp)
    # local var head
    movl -20(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    movl $44440000, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    movl $0, %eax
    addl $25, %esp
    movl %ebp, %esp
    popl %ebp
    ret
List$Print:
    pushl %ebp
    movl %esp, %ebp
    subl $12, %esp
    pushl %ecx
    movl %ecx, %eax
    # local var aux01
    movl %eax, -4(%ebp)
    # instance var end
    movl 12(%ecx), %eax
    # local var var_end
    movl %eax, -12(%ebp)
    # instance var elem
    movl 8(%ecx), %eax
    # local var var_elem
    movl %eax, -8(%ebp)
    jmp L1
L0:
    # local var var_elem
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    # local var aux01
    movl -4(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    # local var aux01
    movl -4(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var var_end
    movl %eax, -12(%ebp)
    # local var aux01
    movl -4(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $28, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var var_elem
    movl %eax, -8(%ebp)
L1:
    # local var var_end
    movl -12(%ebp), %eax
    cmpl $0, %eax
    je L2
    movl $0, %eax
    jmp L3
L2:
    movl $1, %eax
L3:
    cmpl $0, %eax
    jne L0
    movl $1, %eax
    addl $13, %esp
    movl %ebp, %esp
    popl %ebp
    ret
List$GetNext:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # instance var next
    movl 4(%ecx), %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
List$GetElem:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # instance var elem
    movl 8(%ecx), %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
List$GetEnd:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # instance var end
    movl 12(%ecx), %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
List$Search:
    pushl %ebp
    movl %esp, %ebp
    subl $20, %esp
    pushl %ecx
    movl $0, %eax
    # local var int_ret_val
    movl %eax, -8(%ebp)
    movl %ecx, %eax
    # local var aux01
    movl %eax, -4(%ebp)
    # instance var end
    movl 12(%ecx), %eax
    # local var var_end
    movl %eax, -20(%ebp)
    # instance var elem
    movl 8(%ecx), %eax
    # local var var_elem
    movl %eax, -16(%ebp)
    jmp L5
L4:
    # local var var_elem
    movl -16(%ebp), %eax
    pushl %eax
    # parameter e
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $12, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L6
    movl $1, %eax
    # local var int_ret_val
    movl %eax, -8(%ebp)
    jmp L7
L6:
    movl $0, %eax
    # local var nt
    movl %eax, -12(%ebp)
L7:
    # local var aux01
    movl -4(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    # local var aux01
    movl -4(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var var_end
    movl %eax, -20(%ebp)
    # local var aux01
    movl -4(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $28, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var var_elem
    movl %eax, -16(%ebp)
L5:
    # local var var_end
    movl -20(%ebp), %eax
    cmpl $0, %eax
    je L8
    movl $0, %eax
    jmp L9
L8:
    movl $1, %eax
L9:
    cmpl $0, %eax
    jne L4
    # local var int_ret_val
    movl -8(%ebp), %eax
    addl $21, %esp
    movl %ebp, %esp
    popl %ebp
    ret
List$Delete:
    pushl %ebp
    movl %esp, %ebp
    subl $36, %esp
    pushl %ecx
    movl %ecx, %eax
    # local var my_head
    movl %eax, -16(%ebp)
    movl $0, %eax
    # local var ret_val
    movl %eax, -28(%ebp)
    movl $0, %eax
    pushl %eax
    movl $1, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    # local var aux04
    movl %eax, -8(%ebp)
    movl %ecx, %eax
    # local var aux01
    movl %eax, -4(%ebp)
    movl %ecx, %eax
    # local var prev
    movl %eax, -24(%ebp)
    # instance var end
    movl 12(%ecx), %eax
    # local var var_end
    movl %eax, -36(%ebp)
    # instance var elem
    movl 8(%ecx), %eax
    # local var var_elem
    movl %eax, -32(%ebp)
    jmp L11
L10:
    # local var var_elem
    movl -32(%ebp), %eax
    pushl %eax
    # parameter e
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $12, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L12
    movl $1, %eax
    # local var ret_val
    movl %eax, -28(%ebp)
    # local var aux04
    movl -8(%ebp), %eax
    pushl %eax
    movl $0, %eax
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
    # local var aux01
    movl -4(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var my_head
    movl %eax, -16(%ebp)
    jmp L15
L14:
    movl $0, %eax
    pushl %eax
    movl $555, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    # local var aux01
    movl -4(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    pushl %eax
    # local var prev
    movl -24(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $32, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var aux05
    movl %eax, -12(%ebp)
    movl $0, %eax
    pushl %eax
    movl $555, %eax
    movl %eax, %edx
    popl %eax
    subl %edx, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
L15:
    jmp L13
L12:
    movl $0, %eax
    # local var nt
    movl %eax, -20(%ebp)
L13:
    # local var ret_val
    movl -28(%ebp), %eax
    cmpl $0, %eax
    je L20
    movl $0, %eax
    jmp L21
L20:
    movl $1, %eax
L21:
    cmpl $0, %eax
    je L18
    # local var aux01
    movl -4(%ebp), %eax
    # local var prev
    movl %eax, -24(%ebp)
    # local var aux01
    movl -4(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    # local var aux01
    movl -4(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var var_end
    movl %eax, -36(%ebp)
    # local var aux01
    movl -4(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $28, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var var_elem
    movl %eax, -32(%ebp)
    movl $1, %eax
    # local var aux04
    movl %eax, -8(%ebp)
    jmp L19
L18:
    movl $0, %eax
    # local var nt
    movl %eax, -20(%ebp)
L19:
L11:
    # local var var_end
    movl -36(%ebp), %eax
    cmpl $0, %eax
    je L24
    movl $0, %eax
    jmp L25
L24:
    movl $1, %eax
L25:
    cmpl $0, %eax
    je L22
    # local var ret_val
    movl -28(%ebp), %eax
    cmpl $0, %eax
    je L26
    movl $0, %eax
    jmp L27
L26:
    movl $1, %eax
L27:
    cmpl $0, %eax
    je L22
    movl $1, %eax
    jmp L23
L22:
    movl $0, %eax
L23:
    cmpl $0, %eax
    jne L10
    # local var my_head
    movl -16(%ebp), %eax
    addl $37, %esp
    movl %ebp, %esp
    popl %ebp
    ret
List$SetNext:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # parameter v_next
    movl 8(%ebp), %eax
    # instance var next
    movl %eax, 4(%ecx)
    movl $1, %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
List$Insert:
    pushl %ebp
    movl %esp, %ebp
    subl $12, %esp
    pushl %ecx
    movl %ecx, %eax
    # local var aux03
    movl %eax, -8(%ebp)
    pushl $16
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal List$$, %ebx
    movl %ebx, (%eax)
    # local var aux02
    movl %eax, -4(%ebp)
    # parameter new_elem
    movl 8(%ebp), %eax
    pushl %eax
    # local var aux03
    movl -8(%ebp), %eax
    pushl %eax
    movl $0, %eax
    pushl %eax
    # local var aux02
    movl -4(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $12, %eax
    movl (%eax), %eax
    call *%eax
    addl $12, %esp
    movl (%esp), %ecx
    # local var ret_val
    movl %eax, -12(%ebp)
    # local var aux02
    movl -4(%ebp), %eax
    addl $13, %esp
    movl %ebp, %esp
    popl %ebp
    ret
List$InitNew:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # parameter v_end
    movl 8(%ebp), %eax
    # instance var end
    movl %eax, 12(%ecx)
    # parameter v_elem
    movl 16(%ebp), %eax
    # instance var elem
    movl %eax, 8(%ecx)
    # parameter v_next
    movl 12(%ebp), %eax
    # instance var next
    movl %eax, 4(%ecx)
    movl $1, %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
List$Init:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    movl $1, %eax
    # instance var end
    movl %eax, 12(%ecx)
    movl $1, %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Element$Compare:
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
    jl L30
    movl $0, %eax
    jmp L31
L30:
    movl $1, %eax
L31:
    cmpl $0, %eax
    je L28
    movl $0, %eax
    # local var retval
    movl %eax, -8(%ebp)
    jmp L29
L28:
    # parameter num1
    movl 12(%ebp), %eax
    pushl %eax
    # local var aux02
    movl -4(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L36
    movl $0, %eax
    jmp L37
L36:
    movl $1, %eax
L37:
    cmpl $0, %eax
    je L34
    movl $0, %eax
    jmp L35
L34:
    movl $1, %eax
L35:
    cmpl $0, %eax
    je L32
    movl $0, %eax
    # local var retval
    movl %eax, -8(%ebp)
    jmp L33
L32:
    movl $1, %eax
    # local var retval
    movl %eax, -8(%ebp)
L33:
L29:
    # local var retval
    movl -8(%ebp), %eax
    addl $9, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Element$Equal:
    pushl %ebp
    movl %esp, %ebp
    subl $16, %esp
    pushl %ecx
    movl $1, %eax
    # local var ret_val
    movl %eax, -16(%ebp)
    # parameter other
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux01
    movl %eax, -4(%ebp)
    # local var aux01
    movl -4(%ebp), %eax
    pushl %eax
    # instance var Age
    movl 4(%ecx), %eax
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
    je L40
    movl $0, %eax
    jmp L41
L40:
    movl $1, %eax
L41:
    cmpl $0, %eax
    je L38
    movl $0, %eax
    # local var ret_val
    movl %eax, -16(%ebp)
    jmp L39
L38:
    # parameter other
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $24, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var aux02
    movl %eax, -8(%ebp)
    # local var aux02
    movl -8(%ebp), %eax
    pushl %eax
    # instance var Salary
    movl 12(%ecx), %eax
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
    je L44
    movl $0, %eax
    jmp L45
L44:
    movl $1, %eax
L45:
    cmpl $0, %eax
    je L42
    movl $0, %eax
    # local var ret_val
    movl %eax, -16(%ebp)
    jmp L43
L42:
    # instance var Married
    movl 8(%ecx), %eax
    cmpl $0, %eax
    je L46
    # parameter other
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $20, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L50
    movl $0, %eax
    jmp L51
L50:
    movl $1, %eax
L51:
    cmpl $0, %eax
    je L48
    movl $0, %eax
    # local var ret_val
    movl %eax, -16(%ebp)
    jmp L49
L48:
    movl $0, %eax
    # local var nt
    movl %eax, -12(%ebp)
L49:
    jmp L47
L46:
    # parameter other
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $20, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L52
    movl $0, %eax
    # local var ret_val
    movl %eax, -16(%ebp)
    jmp L53
L52:
    movl $0, %eax
    # local var nt
    movl %eax, -12(%ebp)
L53:
L47:
L43:
L39:
    # local var ret_val
    movl -16(%ebp), %eax
    addl $17, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Element$GetMarried:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # instance var Married
    movl 8(%ecx), %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Element$GetSalary:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # instance var Salary
    movl 12(%ecx), %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Element$GetAge:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # instance var Age
    movl 4(%ecx), %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Element$Init:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # parameter v_Age
    movl 16(%ebp), %eax
    # instance var Age
    movl %eax, 4(%ecx)
    # parameter v_Salary
    movl 12(%ebp), %eax
    # instance var Salary
    movl %eax, 12(%ecx)
    # parameter v_Married
    movl 8(%ebp), %eax
    # instance var Married
    movl %eax, 8(%ecx)
    movl $1, %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
