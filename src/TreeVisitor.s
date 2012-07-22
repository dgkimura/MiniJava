Tree$$:
    .long 0
    .long Tree$GetRight
    .long Tree$GetLeft
    .long Tree$Search
    .long Tree$RemoveRight
    .long Tree$Insert
    .long Tree$accept
    .long Tree$SetLeft
    .long Tree$Compare
    .long Tree$Print
    .long Tree$GetHas_Left
    .long Tree$RemoveLeft
    .long Tree$SetHas_Left
    .long Tree$GetHas_Right
    .long Tree$GetKey
    .long Tree$Init
    .long Tree$SetKey
    .long Tree$Remove
    .long Tree$RecPrint
    .long Tree$Delete
    .long Tree$SetRight
    .long Tree$SetHas_Right
Visitor$$:
    .long 0
    .long Visitor$visit
MyVisitor$$:
    .long Visitor$$
    .long MyVisitor$visit
TV$$:
    .long 0
    .long TV$Start
    .text
    .global asm_main

asm_main:
    pushl $4
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal TV$$, %ebx
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
MyVisitor$visit:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    pushl %ecx
    # parameter n
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L0
    # parameter n
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # instance var r
    movl %eax, 4(%ecx)
    movl %ecx, %eax
    pushl %eax
    # instance var r
    movl 4(%ecx), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $24, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var nti
    movl %eax, -4(%ebp)
    jmp L1
L0:
    movl $0, %eax
    # local var nti
    movl %eax, -4(%ebp)
L1:
    # parameter n
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $56, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    # parameter n
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L2
    # parameter n
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # instance var l
    movl %eax, 8(%ecx)
    movl %ecx, %eax
    pushl %eax
    # instance var l
    movl 8(%ecx), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $24, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var nti
    movl %eax, -4(%ebp)
    jmp L3
L2:
    movl $0, %eax
    # local var nti
    movl %eax, -4(%ebp)
L3:
    movl $0, %eax
    addl $5, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Visitor$visit:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    pushl %ecx
    # parameter n
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L4
    # parameter n
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # instance var r
    movl %eax, 4(%ecx)
    movl %ecx, %eax
    pushl %eax
    # instance var r
    movl 4(%ecx), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $24, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var nti
    movl %eax, -4(%ebp)
    jmp L5
L4:
    movl $0, %eax
    # local var nti
    movl %eax, -4(%ebp)
L5:
    # parameter n
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L6
    # parameter n
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # instance var l
    movl %eax, 8(%ecx)
    movl %ecx, %eax
    pushl %eax
    # instance var l
    movl 8(%ecx), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $24, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var nti
    movl %eax, -4(%ebp)
    jmp L7
L6:
    movl $0, %eax
    # local var nti
    movl %eax, -4(%ebp)
L7:
    movl $0, %eax
    addl $5, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$accept:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    pushl %ecx
    movl $333, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    movl %ecx, %eax
    pushl %eax
    # parameter v
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var nti
    movl %eax, -4(%ebp)
    movl $0, %eax
    addl $5, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$RecPrint:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    pushl %ecx
    # parameter node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L8
    # parameter node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $72, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    jmp L9
L8:
    movl $1, %eax
    # local var ntb
    movl %eax, -4(%ebp)
L9:
    # parameter node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $56, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    # parameter node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L10
    # parameter node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $72, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    jmp L11
L10:
    movl $1, %eax
    # local var ntb
    movl %eax, -4(%ebp)
L11:
    movl $1, %eax
    addl $5, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$Print:
    pushl %ebp
    movl %esp, %ebp
    subl $8, %esp
    pushl %ecx
    movl %ecx, %eax
    # local var current_node
    movl %eax, -4(%ebp)
    # local var current_node
    movl -4(%ebp), %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $72, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -8(%ebp)
    movl $1, %eax
    addl $9, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$Search:
    pushl %ebp
    movl %esp, %ebp
    subl $16, %esp
    pushl %ecx
    movl %ecx, %eax
    # local var current_node
    movl %eax, -8(%ebp)
    movl $1, %eax
    # local var cont
    movl %eax, -4(%ebp)
    movl $0, %eax
    # local var ifound
    movl %eax, -12(%ebp)
    jmp L13
L12:
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $56, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var key_aux
    movl %eax, -16(%ebp)
    # parameter v_key
    movl 8(%ebp), %eax
    pushl %eax
    # local var key_aux
    movl -16(%ebp), %eax
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
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L18
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var current_node
    movl %eax, -8(%ebp)
    jmp L19
L18:
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
L19:
    jmp L15
L14:
    # local var key_aux
    movl -16(%ebp), %eax
    pushl %eax
    # parameter v_key
    movl 8(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L22
    movl $0, %eax
    jmp L23
L22:
    movl $1, %eax
L23:
    cmpl $0, %eax
    je L20
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L24
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var current_node
    movl %eax, -8(%ebp)
    jmp L25
L24:
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
L25:
    jmp L21
L20:
    movl $1, %eax
    # local var ifound
    movl %eax, -12(%ebp)
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
L21:
L15:
L13:
    # local var cont
    movl -4(%ebp), %eax
    cmpl $0, %eax
    jne L12
    # local var ifound
    movl -12(%ebp), %eax
    addl $17, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$RemoveLeft:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    pushl %ecx
    jmp L27
L26:
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    movl %eax, %ecx
    movl (%eax), %eax
    addl $56, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    pushl %eax
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $64, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    # parameter c_node
    movl 8(%ebp), %eax
    # parameter p_node
    movl %eax, 12(%ebp)
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # parameter c_node
    movl %eax, 8(%ebp)
L27:
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    jne L26
    # instance var my_null
    movl 4(%ecx), %eax
    pushl %eax
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $28, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $0, %eax
    pushl %eax
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $48, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $1, %eax
    addl $5, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$RemoveRight:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    pushl %ecx
    jmp L29
L28:
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    movl %eax, %ecx
    movl (%eax), %eax
    addl $56, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    pushl %eax
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $64, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    # parameter c_node
    movl 8(%ebp), %eax
    # parameter p_node
    movl %eax, 12(%ebp)
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # parameter c_node
    movl %eax, 8(%ebp)
L29:
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    jne L28
    # instance var my_null
    movl 4(%ecx), %eax
    pushl %eax
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $80, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $0, %eax
    pushl %eax
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $84, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $1, %eax
    addl $5, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$Remove:
    pushl %ebp
    movl %esp, %ebp
    subl $12, %esp
    pushl %ecx
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L30
    # parameter p_node
    movl 12(%ebp), %eax
    pushl %eax
    # parameter c_node
    movl 8(%ebp), %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $44, %eax
    movl (%eax), %eax
    call *%eax
    addl $8, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -12(%ebp)
    jmp L31
L30:
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L32
    # parameter p_node
    movl 12(%ebp), %eax
    pushl %eax
    # parameter c_node
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
    # local var ntb
    movl %eax, -12(%ebp)
    jmp L33
L32:
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $56, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var auxkey1
    movl %eax, -4(%ebp)
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    movl %eax, %ecx
    movl (%eax), %eax
    addl $56, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var auxkey2
    movl %eax, -8(%ebp)
    # local var auxkey1
    movl -4(%ebp), %eax
    pushl %eax
    # local var auxkey2
    movl -8(%ebp), %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $32, %eax
    movl (%eax), %eax
    call *%eax
    addl $8, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L34
    # instance var my_null
    movl 4(%ecx), %eax
    pushl %eax
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $28, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -12(%ebp)
    movl $0, %eax
    pushl %eax
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $48, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -12(%ebp)
    jmp L35
L34:
    # instance var my_null
    movl 4(%ecx), %eax
    pushl %eax
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $80, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -12(%ebp)
    movl $0, %eax
    pushl %eax
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $84, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -12(%ebp)
L35:
L33:
L31:
    movl $1, %eax
    addl $13, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$Delete:
    pushl %ebp
    movl %esp, %ebp
    subl $28, %esp
    pushl %ecx
    movl %ecx, %eax
    # local var current_node
    movl %eax, -8(%ebp)
    movl %ecx, %eax
    # local var parent_node
    movl %eax, -28(%ebp)
    movl $1, %eax
    # local var cont
    movl %eax, -4(%ebp)
    movl $0, %eax
    # local var found
    movl %eax, -12(%ebp)
    movl $1, %eax
    # local var is_root
    movl %eax, -16(%ebp)
    jmp L37
L36:
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $56, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var key_aux
    movl %eax, -20(%ebp)
    # parameter v_key
    movl 8(%ebp), %eax
    pushl %eax
    # local var key_aux
    movl -20(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L40
    movl $0, %eax
    jmp L41
L40:
    movl $1, %eax
L41:
    cmpl $0, %eax
    je L38
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L42
    # local var current_node
    movl -8(%ebp), %eax
    # local var parent_node
    movl %eax, -28(%ebp)
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var current_node
    movl %eax, -8(%ebp)
    jmp L43
L42:
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
L43:
    jmp L39
L38:
    # local var key_aux
    movl -20(%ebp), %eax
    pushl %eax
    # parameter v_key
    movl 8(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L46
    movl $0, %eax
    jmp L47
L46:
    movl $1, %eax
L47:
    cmpl $0, %eax
    je L44
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L48
    # local var current_node
    movl -8(%ebp), %eax
    # local var parent_node
    movl %eax, -28(%ebp)
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var current_node
    movl %eax, -8(%ebp)
    jmp L49
L48:
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
L49:
    jmp L45
L44:
    # local var is_root
    movl -16(%ebp), %eax
    cmpl $0, %eax
    je L50
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L56
    movl $0, %eax
    jmp L57
L56:
    movl $1, %eax
L57:
    cmpl $0, %eax
    je L54
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L58
    movl $0, %eax
    jmp L59
L58:
    movl $1, %eax
L59:
    cmpl $0, %eax
    je L54
    movl $1, %eax
    jmp L55
L54:
    movl $0, %eax
L55:
    cmpl $0, %eax
    je L52
    movl $1, %eax
    # local var ntb
    movl %eax, -24(%ebp)
    jmp L53
L52:
    # local var parent_node
    movl -28(%ebp), %eax
    pushl %eax
    # local var current_node
    movl -8(%ebp), %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $68, %eax
    movl (%eax), %eax
    call *%eax
    addl $8, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -24(%ebp)
L53:
    jmp L51
L50:
    # local var parent_node
    movl -28(%ebp), %eax
    pushl %eax
    # local var current_node
    movl -8(%ebp), %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $68, %eax
    movl (%eax), %eax
    call *%eax
    addl $8, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -24(%ebp)
L51:
    movl $1, %eax
    # local var found
    movl %eax, -12(%ebp)
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
L45:
L39:
    movl $0, %eax
    # local var is_root
    movl %eax, -16(%ebp)
L37:
    # local var cont
    movl -4(%ebp), %eax
    cmpl $0, %eax
    jne L36
    # local var found
    movl -12(%ebp), %eax
    addl $29, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$Insert:
    pushl %ebp
    movl %esp, %ebp
    subl $20, %esp
    pushl %ecx
    pushl $28
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal Tree$$, %ebx
    movl %ebx, (%eax)
    # local var new_node
    movl %eax, -16(%ebp)
    # parameter v_key
    movl 8(%ebp), %eax
    pushl %eax
    # local var new_node
    movl -16(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $60, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -20(%ebp)
    movl %ecx, %eax
    # local var current_node
    movl %eax, -8(%ebp)
    movl $1, %eax
    # local var cont
    movl %eax, -4(%ebp)
    jmp L61
L60:
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $56, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var key_aux
    movl %eax, -12(%ebp)
    # parameter v_key
    movl 8(%ebp), %eax
    pushl %eax
    # local var key_aux
    movl -12(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L64
    movl $0, %eax
    jmp L65
L64:
    movl $1, %eax
L65:
    cmpl $0, %eax
    je L62
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L66
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $8, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var current_node
    movl %eax, -8(%ebp)
    jmp L67
L66:
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
    movl $1, %eax
    pushl %eax
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $48, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -20(%ebp)
    # local var new_node
    movl -16(%ebp), %eax
    pushl %eax
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $28, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -20(%ebp)
L67:
    jmp L63
L62:
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L68
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $4, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var current_node
    movl %eax, -8(%ebp)
    jmp L69
L68:
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
    movl $1, %eax
    pushl %eax
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $84, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -20(%ebp)
    # local var new_node
    movl -16(%ebp), %eax
    pushl %eax
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $80, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -20(%ebp)
L69:
L63:
L61:
    # local var cont
    movl -4(%ebp), %eax
    cmpl $0, %eax
    jne L60
    movl $1, %eax
    addl $21, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$Compare:
    pushl %ebp
    movl %esp, %ebp
    subl $8, %esp
    pushl %ecx
    movl $0, %eax
    # local var ntb
    movl %eax, -4(%ebp)
    # parameter num2
    movl 8(%ebp), %eax
    pushl %eax
    movl $1, %eax
    popl %edx
    addl %edx, %eax
    # local var nti
    movl %eax, -8(%ebp)
    # parameter num1
    movl 12(%ebp), %eax
    pushl %eax
    # parameter num2
    movl 8(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L72
    movl $0, %eax
    jmp L73
L72:
    movl $1, %eax
L73:
    cmpl $0, %eax
    je L70
    movl $0, %eax
    # local var ntb
    movl %eax, -4(%ebp)
    jmp L71
L70:
    # parameter num1
    movl 12(%ebp), %eax
    pushl %eax
    # local var nti
    movl -8(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L78
    movl $0, %eax
    jmp L79
L78:
    movl $1, %eax
L79:
    cmpl $0, %eax
    je L76
    movl $0, %eax
    jmp L77
L76:
    movl $1, %eax
L77:
    cmpl $0, %eax
    je L74
    movl $0, %eax
    # local var ntb
    movl %eax, -4(%ebp)
    jmp L75
L74:
    movl $1, %eax
    # local var ntb
    movl %eax, -4(%ebp)
L75:
L71:
    # local var ntb
    movl -4(%ebp), %eax
    addl $9, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$SetHas_Right:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # parameter val
    movl 8(%ebp), %eax
    # instance var has_right
    movl %eax, 20(%ecx)
    movl $1, %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$SetHas_Left:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # parameter val
    movl 8(%ebp), %eax
    # instance var has_left
    movl %eax, 24(%ecx)
    movl $1, %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$GetHas_Left:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # instance var has_left
    movl 24(%ecx), %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$GetHas_Right:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # instance var has_right
    movl 20(%ecx), %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$SetKey:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # parameter v_key
    movl 8(%ebp), %eax
    # instance var key
    movl %eax, 16(%ecx)
    movl $1, %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$GetKey:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # instance var key
    movl 16(%ecx), %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$GetLeft:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # instance var left
    movl 8(%ecx), %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$GetRight:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # instance var right
    movl 12(%ecx), %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$SetLeft:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # parameter ln
    movl 8(%ebp), %eax
    # instance var left
    movl %eax, 8(%ecx)
    movl $1, %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$SetRight:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # parameter rn
    movl 8(%ebp), %eax
    # instance var right
    movl %eax, 12(%ecx)
    movl $1, %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
Tree$Init:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl %ecx
    # parameter v_key
    movl 8(%ebp), %eax
    # instance var key
    movl %eax, 16(%ecx)
    movl $0, %eax
    # instance var has_left
    movl %eax, 24(%ecx)
    movl $0, %eax
    # instance var has_right
    movl %eax, 20(%ecx)
    movl $1, %eax
    addl $1, %esp
    movl %ebp, %esp
    popl %ebp
    ret
TV$Start:
    pushl %ebp
    movl %esp, %ebp
    subl $16, %esp
    pushl %ecx
    pushl $28
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal Tree$$, %ebx
    movl %ebx, (%eax)
    # local var root
    movl %eax, -12(%ebp)
    movl $16, %eax
    pushl %eax
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $60, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $100000000, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    movl $8, %eax
    pushl %eax
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $20, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $24, %eax
    pushl %eax
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $20, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $4, %eax
    pushl %eax
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $20, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $12, %eax
    pushl %eax
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $20, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $20, %eax
    pushl %eax
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $20, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $28, %eax
    pushl %eax
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $20, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $14, %eax
    pushl %eax
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $20, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $100000000, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    pushl $12
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal MyVisitor$$, %ebx
    movl %ebx, (%eax)
    # local var v
    movl %eax, -16(%ebp)
    movl $50000000, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    # local var v
    movl -16(%ebp), %eax
    pushl %eax
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $24, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var nti
    movl %eax, -8(%ebp)
    movl $100000000, %eax
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    movl $24, %eax
    pushl %eax
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $12, %eax
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
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $12, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    movl $16, %eax
    pushl %eax
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $12, %eax
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
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $12, %eax
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
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $12, %eax
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
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $76, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    movl $12, %eax
    pushl %eax
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $12, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    pushl %eax
    call put
    addl $4, %esp
    movl (%esp), %ecx
    movl $0, %eax
    addl $17, %esp
    movl %ebp, %esp
    popl %ebp
    ret
