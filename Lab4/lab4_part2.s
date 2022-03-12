.text
.global draw_pixel


draw_pixel:
    li t0, 0xC00                         # base address
    li t1, 0x20                          # image is 32x 32,  32 = 0x20
    add t5 ,x0, 0                        # counter
    add t2, x0, 0         

    beg_of_loop_two:
        add t2, t2, a1  # add 15 to t2
        addi t5, t5, 1  
        blt t5, t1, beg_of_loop_two      #repeated addition is used since there isn't a multiplication function
    add t3, t2, a2                       # the product of the loop is now held in t3
    add t4, t3, t0                       # product + inital adress should be the center
    sb a0, 0(t4)                         # places the dot in the center

jr ra 
