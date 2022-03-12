.text
.global fill_bitmap

fill_bitmap:

lui a1, 1 
    addi a1, a1, -1024          # starting value (3072)
    addi a2, zero, 1024         # amount to loop too (4096)
    addi a3, zero, 0            # counter

    beg_of_loop: 
        sb a0, 0(a1)            # places a dot at the location
        addi a3, a3, 1              
        addi a1, a1, 1          # moves through the bitmap
        bne a3, a2, beg_of_loop

    

jr      ra
