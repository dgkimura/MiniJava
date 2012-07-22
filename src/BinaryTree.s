Tree$$:
    .long 0
    .long Tree$GetRight
    .long Tree$GetLeft
    .long Tree$Search
    .long Tree$RemoveRight
    .long Tree$Insert
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
BT$$:
    .long 0
    .long BT$Start
    .text
    .global asm_main

asm_main:
    pushl $4
    call mjmalloc
    addl $4, %esp
    movl (%esp), %ecx
    leal BT$$, %ebx
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
Tree$RecPrint:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    pushl %ecx
    # parameter node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L0
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
    addl $68, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    jmp L1
L0:
    movl $1, %eax
    # local var ntb
    movl %eax, -4(%ebp)
L1:
    # parameter node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
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
    addl $48, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L2
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
    addl $68, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
    jmp L3
L2:
    movl $1, %eax
    # local var ntb
    movl %eax, -4(%ebp)
L3:
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
    addl $68, %eax
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
    jmp L5
L4:
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
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
    jl L8
    movl $0, %eax
    jmp L9
L8:
    movl $1, %eax
L9:
    cmpl $0, %eax
    je L6
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L10
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
    jmp L11
L10:
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
L11:
    jmp L7
L6:
    # local var key_aux
    movl -16(%ebp), %eax
    pushl %eax
    # parameter v_key
    movl 8(%ebp), %eax
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
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $48, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L16
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
    jmp L17
L16:
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
L17:
    jmp L13
L12:
    movl $1, %eax
    # local var ifound
    movl %eax, -12(%ebp)
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
L13:
L7:
L5:
    # local var cont
    movl -4(%ebp), %eax
    cmpl $0, %eax
    jne L4
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
    jmp L19
L18:
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
    addl $52, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    pushl %eax
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $60, %eax
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
L19:
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    jne L18
    # instance var my_null
    movl 4(%ecx), %eax
    pushl %eax
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $24, %eax
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
    addl $44, %eax
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
    jmp L21
L20:
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
    addl $52, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    pushl %eax
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $60, %eax
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
L21:
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $48, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    jne L20
    # instance var my_null
    movl 4(%ecx), %eax
    pushl %eax
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $76, %eax
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
    addl $80, %eax
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
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L22
    # parameter p_node
    movl 12(%ebp), %eax
    pushl %eax
    # parameter c_node
    movl 8(%ebp), %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $40, %eax
    movl (%eax), %eax
    call *%eax
    addl $8, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -12(%ebp)
    jmp L23
L22:
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $48, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L24
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
    jmp L25
L24:
    # parameter c_node
    movl 8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
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
    addl $52, %eax
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
    addl $28, %eax
    movl (%eax), %eax
    call *%eax
    addl $8, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L26
    # instance var my_null
    movl 4(%ecx), %eax
    pushl %eax
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $24, %eax
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
    addl $44, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -12(%ebp)
    jmp L27
L26:
    # instance var my_null
    movl 4(%ecx), %eax
    pushl %eax
    # parameter p_node
    movl 12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $76, %eax
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
    addl $80, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -12(%ebp)
L27:
L25:
L23:
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
    jmp L29
L28:
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
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
    jl L32
    movl $0, %eax
    jmp L33
L32:
    movl $1, %eax
L33:
    cmpl $0, %eax
    je L30
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L34
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
    jmp L35
L34:
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
L35:
    jmp L31
L30:
    # local var key_aux
    movl -20(%ebp), %eax
    pushl %eax
    # parameter v_key
    movl 8(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L38
    movl $0, %eax
    jmp L39
L38:
    movl $1, %eax
L39:
    cmpl $0, %eax
    je L36
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $48, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L40
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
    jmp L41
L40:
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
L41:
    jmp L37
L36:
    # local var is_root
    movl -16(%ebp), %eax
    cmpl $0, %eax
    je L42
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $48, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L48
    movl $0, %eax
    jmp L49
L48:
    movl $1, %eax
L49:
    cmpl $0, %eax
    je L46
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $36, %eax
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
    je L46
    movl $1, %eax
    jmp L47
L46:
    movl $0, %eax
L47:
    cmpl $0, %eax
    je L44
    movl $1, %eax
    # local var ntb
    movl %eax, -24(%ebp)
    jmp L45
L44:
    # local var parent_node
    movl -28(%ebp), %eax
    pushl %eax
    # local var current_node
    movl -8(%ebp), %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $64, %eax
    movl (%eax), %eax
    call *%eax
    addl $8, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -24(%ebp)
L45:
    jmp L43
L42:
    # local var parent_node
    movl -28(%ebp), %eax
    pushl %eax
    # local var current_node
    movl -8(%ebp), %eax
    pushl %eax
    movl %ecx, %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $64, %eax
    movl (%eax), %eax
    call *%eax
    addl $8, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -24(%ebp)
L43:
    movl $1, %eax
    # local var found
    movl %eax, -12(%ebp)
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
L37:
L31:
    movl $0, %eax
    # local var is_root
    movl %eax, -16(%ebp)
L29:
    # local var cont
    movl -4(%ebp), %eax
    cmpl $0, %eax
    jne L28
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
    addl $56, %eax
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
    jmp L53
L52:
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $52, %eax
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
    jl L56
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
    addl $36, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L58
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
    jmp L59
L58:
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
    movl $1, %eax
    pushl %eax
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $44, %eax
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
    addl $24, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -20(%ebp)
L59:
    jmp L55
L54:
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $48, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    cmpl $0, %eax
    je L60
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
    jmp L61
L60:
    movl $0, %eax
    # local var cont
    movl %eax, -4(%ebp)
    movl $1, %eax
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
    # local var new_node
    movl -16(%ebp), %eax
    pushl %eax
    # local var current_node
    movl -8(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $76, %eax
    movl (%eax), %eax
    call *%eax
    addl $4, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -20(%ebp)
L61:
L55:
L53:
    # local var cont
    movl -4(%ebp), %eax
    cmpl $0, %eax
    jne L52
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
    jl L64
    movl $0, %eax
    jmp L65
L64:
    movl $1, %eax
L65:
    cmpl $0, %eax
    je L62
    movl $0, %eax
    # local var ntb
    movl %eax, -4(%ebp)
    jmp L63
L62:
    # parameter num1
    movl 12(%ebp), %eax
    pushl %eax
    # local var nti
    movl -8(%ebp), %eax
    popl %edx
    cmpl %eax, %edx
    jl L70
    movl $0, %eax
    jmp L71
L70:
    movl $1, %eax
L71:
    cmpl $0, %eax
    je L68
    movl $0, %eax
    jmp L69
L68:
    movl $1, %eax
L69:
    cmpl $0, %eax
    je L66
    movl $0, %eax
    # local var ntb
    movl %eax, -4(%ebp)
    jmp L67
L66:
    movl $1, %eax
    # local var ntb
    movl %eax, -4(%ebp)
L67:
L63:
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
BT$Start:
    pushl %ebp
    movl %esp, %ebp
    subl $12, %esp
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
    addl $56, %eax
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
    addl $32, %eax
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
    # local var root
    movl -12(%ebp), %eax
    movl %eax, %ecx
    movl (%eax), %eax
    addl $32, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
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
    addl $32, %eax
    movl (%eax), %eax
    call *%eax
    addl $0, %esp
    movl (%esp), %ecx
    # local var ntb
    movl %eax, -4(%ebp)
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
    addl $72, %eax
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
    addl $32, %eax
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
    addl $13, %esp
    movl %ebp, %esp
    popl %ebp
    ret
