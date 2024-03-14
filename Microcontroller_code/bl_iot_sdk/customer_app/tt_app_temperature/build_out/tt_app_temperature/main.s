	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.init_gpio_system,"ax",@progbits
	.align	1
	.globl	init_gpio_system
	.type	init_gpio_system, @function
init_gpio_system:
.LFB8:
	.file 1 "/home/jins/bl_iot_sdk/customer_app/tt_app_temperature/tt_app_temperature/main.c"
	.loc 1 10 25
	.cfi_startproc
	.loc 1 12 5
	li	a2,0
	li	a1,0
	li	a0,17
	tail	bl_gpio_enable_output
.LVL0:
	.cfi_endproc
.LFE8:
	.size	init_gpio_system, .-init_gpio_system
	.section	.text.read_dht22_data,"ax",@progbits
	.align	1
	.globl	read_dht22_data
	.type	read_dht22_data, @function
read_dht22_data:
.LFB9:
	.loc 1 15 24
	.cfi_startproc
	.loc 1 16 5
	.loc 1 15 24 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 19 5
	li	a1,0
	li	a0,17
	.loc 1 15 24
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 16 13
	sw	zero,8(sp)
	sb	zero,12(sp)
	.loc 1 19 5 is_stmt 1
	call	bl_gpio_output_set
.LVL1:
	.loc 1 20 5
	li	a0,1000
	call	BL602_Delay_US
.LVL2:
	.loc 1 21 5
	li	a1,1
	li	a0,17
	call	bl_gpio_output_set
.LVL3:
	.loc 1 22 5
	li	a0,30
	call	BL602_Delay_US
.LVL4:
	.loc 1 25 5
	li	a2,0
	li	a1,0
	li	a0,17
	call	bl_gpio_enable_input
.LVL5:
	.loc 1 30 5
	.loc 1 30 11 is_stmt 0
	li	s0,1
.L3:
	.loc 1 30 45 is_stmt 1 discriminator 1
	.loc 1 30 12 is_stmt 0 discriminator 1
	li	a0,17
	call	bl_gpio_input_get_value
.LVL6:
	.loc 1 30 11 discriminator 1
	beq	a0,s0,.L3
.L4:
	.loc 1 31 45 is_stmt 1 discriminator 1
	.loc 1 31 12 is_stmt 0 discriminator 1
	li	a0,17
	call	bl_gpio_input_get_value
.LVL7:
	.loc 1 31 11 discriminator 1
	beq	a0,zero,.L4
	.loc 1 32 11
	li	s0,1
.L5:
	.loc 1 32 45 is_stmt 1 discriminator 1
	.loc 1 32 12 is_stmt 0 discriminator 1
	li	a0,17
	call	bl_gpio_input_get_value
.LVL8:
	.loc 1 32 11 discriminator 1
	beq	a0,s0,.L5
.LBB2:
	.loc 1 37 14
	li	s0,0
	.loc 1 43 31
	li	s1,1
	.loc 1 37 5
	li	s2,40
.L6:
	.loc 1 38 49 is_stmt 1 discriminator 1
	.loc 1 38 16 is_stmt 0 discriminator 1
	li	a0,17
	call	bl_gpio_input_get_value
.LVL9:
	.loc 1 38 15 discriminator 1
	beq	a0,zero,.L6
	.loc 1 40 9 is_stmt 1
	li	a0,30
	call	BL602_Delay_US
.LVL10:
	.loc 1 42 9
	.loc 1 42 13 is_stmt 0
	li	a0,17
	call	bl_gpio_input_get_value
.LVL11:
	.loc 1 42 12
	beq	a0,zero,.L8
	.loc 1 43 13 is_stmt 1
	.loc 1 43 25 is_stmt 0
	addi	a5,sp,16
	.loc 1 43 20
	srai	a4,s0,3
	.loc 1 43 25
	add	a4,a5,a4
	lbu	a3,-8(a4)
	.loc 1 43 31
	not	a5,s0
	andi	a5,a5,7
	sll	a5,s1,a5
	.loc 1 43 25
	or	a5,a5,a3
	sb	a5,-8(a4)
.L8:
	.loc 1 47 49 is_stmt 1 discriminator 1
	.loc 1 47 16 is_stmt 0 discriminator 1
	li	a0,17
	call	bl_gpio_input_get_value
.LVL12:
	.loc 1 47 15 discriminator 1
	beq	a0,s1,.L8
	.loc 1 37 30 discriminator 2
	addi	s0,s0,1
.LVL13:
	.loc 1 37 5 discriminator 2
	bne	s0,s2,.L6
.LBE2:
	.loc 1 53 5 is_stmt 1
.LVL14:
	.loc 1 54 5
	.loc 1 54 33 is_stmt 0
	lbu	a5,10(sp)
	.loc 1 54 49
	lbu	a1,11(sp)
	.loc 1 61 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL15:
	.loc 1 54 37
	slli	a5,a5,8
	.loc 1 54 14
	or	a5,a5,a1
.LVL16:
	.loc 1 55 5 is_stmt 1
	.loc 1 59 5
	li	a1,10
	remu	a2,a5,a1
	.loc 1 61 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	.loc 1 59 5
	lui	a0,%hi(.LC0)
	.loc 1 61 1
	.loc 1 59 5
	addi	a0,a0,%lo(.LC0)
	.loc 1 61 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL17:
	.loc 1 59 5
	divu	a1,a5,a1
	tail	printf
.LVL18:
	.cfi_endproc
.LFE9:
	.size	read_dht22_data, .-read_dht22_data
	.section	.text.bfl_main,"ax",@progbits
	.align	1
	.globl	bfl_main
	.type	bfl_main, @function
bfl_main:
.LFB10:
	.loc 1 63 21 is_stmt 1
	.cfi_startproc
	.loc 1 64 5
	li	a5,1998848
	.loc 1 63 21 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 64 5
	addi	a5,a5,1152
	li	a4,255
	li	a3,255
	li	a2,7
	li	a1,16
	li	a0,0
	.loc 1 63 21
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 64 5
	call	bl_uart_init
.LVL19:
.L23:
	.loc 1 68 5 is_stmt 1 discriminator 1
	.loc 1 71 9 discriminator 1
	call	init_gpio_system
.LVL20:
	.loc 1 72 9 discriminator 1
	call	read_dht22_data
.LVL21:
	.loc 1 74 9 discriminator 1
	li	a0,2000
	call	BL602_Delay_MS
.LVL22:
	j	.L23
	.cfi_endproc
.LFE10:
	.size	bfl_main, .-bfl_main
	.section	.rodata.read_dht22_data.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\rTemperature: %d.%d C\n"
	.text
.Letext0:
	.file 2 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 6 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 7 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 8 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 9 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 10 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/bl_uart.h"
	.file 11 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/bl_gpio.h"
	.file 12 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc1e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF142
	.byte	0xc
	.4byte	.LASF143
	.4byte	.LASF144
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x88
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x74
	.byte	0xe
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x81
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0xa5
	.byte	0x3
	.4byte	0xe2
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa7
	.byte	0xc
	.4byte	0x8f
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa8
	.byte	0x13
	.4byte	0xe2
	.byte	0
	.byte	0x8
	.4byte	0x38
	.4byte	0xf2
	.byte	0x9
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa2
	.byte	0x9
	.4byte	0x116
	.byte	0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa4
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa9
	.byte	0x5
	.4byte	0xc0
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0xaa
	.byte	0x3
	.4byte	0xf2
	.byte	0xc
	.byte	0x4
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x6c
	.byte	0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0xc
	.byte	0xd
	.4byte	0x81
	.byte	0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x23
	.byte	0x1b
	.4byte	0x130
	.byte	0xd
	.4byte	.LASF28
	.byte	0x18
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x1a2
	.byte	0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.4byte	0x1a2
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x37
	.byte	0xb
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x37
	.byte	0x1b
	.4byte	0x81
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x5
	.byte	0x38
	.byte	0xb
	.4byte	0x1a8
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x148
	.byte	0x8
	.4byte	0x124
	.4byte	0x1b8
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF29
	.byte	0x24
	.byte	0x5
	.byte	0x3c
	.byte	0x8
	.4byte	0x23b
	.byte	0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x42
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x43
	.byte	0x7
	.4byte	0x81
	.byte	0x14
	.byte	0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x44
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x45
	.byte	0x7
	.4byte	0x81
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x46
	.byte	0x7
	.4byte	0x81
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.4byte	0x280
	.byte	0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x50
	.byte	0x9
	.4byte	0x280
	.byte	0
	.byte	0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.byte	0x9
	.4byte	0x280
	.byte	0x80
	.byte	0x11
	.4byte	.LASF42
	.byte	0x5
	.byte	0x53
	.byte	0xa
	.4byte	0x124
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF43
	.byte	0x5
	.byte	0x56
	.byte	0xa
	.4byte	0x124
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x122
	.4byte	0x290
	.byte	0x9
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF44
	.2byte	0x190
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.4byte	0x2d3
	.byte	0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x63
	.byte	0x12
	.4byte	0x2d3
	.byte	0
	.byte	0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x64
	.byte	0x6
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x66
	.byte	0x9
	.4byte	0x2d9
	.byte	0x8
	.byte	0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x67
	.byte	0x1e
	.4byte	0x23b
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x290
	.byte	0x8
	.4byte	0x2e9
	.4byte	0x2e9
	.byte	0x9
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2ef
	.byte	0x12
	.byte	0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.byte	0x8
	.4byte	0x318
	.byte	0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x7b
	.byte	0x11
	.4byte	0x318
	.byte	0
	.byte	0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0x7c
	.byte	0x6
	.4byte	0x81
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x38
	.byte	0xd
	.4byte	.LASF50
	.byte	0x68
	.byte	0x5
	.byte	0xba
	.byte	0x8
	.4byte	0x461
	.byte	0xe
	.string	"_p"
	.byte	0x5
	.byte	0xbb
	.byte	0x12
	.4byte	0x318
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x5
	.byte	0xbd
	.byte	0x7
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0xbe
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.byte	0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x5
	.byte	0xc0
	.byte	0x11
	.4byte	0x2f0
	.byte	0x10
	.byte	0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0xc1
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0xc8
	.byte	0xa
	.4byte	0x122
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF55
	.byte	0x5
	.byte	0xca
	.byte	0xe
	.4byte	0x5e5
	.byte	0x20
	.byte	0xb
	.4byte	.LASF56
	.byte	0x5
	.byte	0xcc
	.byte	0xe
	.4byte	0x60f
	.byte	0x24
	.byte	0xb
	.4byte	.LASF57
	.byte	0x5
	.byte	0xcf
	.byte	0xd
	.4byte	0x633
	.byte	0x28
	.byte	0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0x64d
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x2f0
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x5
	.byte	0xd4
	.byte	0x12
	.4byte	0x318
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x5
	.byte	0xd5
	.byte	0x7
	.4byte	0x81
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF59
	.byte	0x5
	.byte	0xd8
	.byte	0x11
	.4byte	0x653
	.byte	0x40
	.byte	0xb
	.4byte	.LASF60
	.byte	0x5
	.byte	0xd9
	.byte	0x11
	.4byte	0x663
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x5
	.byte	0xdc
	.byte	0x11
	.4byte	0x2f0
	.byte	0x44
	.byte	0xb
	.4byte	.LASF61
	.byte	0x5
	.byte	0xdf
	.byte	0x7
	.4byte	0x81
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF62
	.byte	0x5
	.byte	0xe0
	.byte	0xa
	.4byte	0x9c
	.byte	0x50
	.byte	0xb
	.4byte	.LASF63
	.byte	0x5
	.byte	0xe3
	.byte	0x12
	.4byte	0x47f
	.byte	0x54
	.byte	0xb
	.4byte	.LASF64
	.byte	0x5
	.byte	0xe7
	.byte	0xc
	.4byte	0x13c
	.byte	0x58
	.byte	0xb
	.4byte	.LASF65
	.byte	0x5
	.byte	0xe9
	.byte	0xe
	.4byte	0x116
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF66
	.byte	0x5
	.byte	0xea
	.byte	0x7
	.4byte	0x81
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0xb4
	.4byte	0x47f
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0x14
	.4byte	0x5d3
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x48a
	.byte	0x15
	.4byte	0x47f
	.byte	0x16
	.4byte	.LASF67
	.2byte	0x428
	.byte	0x5
	.2byte	0x265
	.byte	0x8
	.4byte	0x5d3
	.byte	0x17
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x267
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0x17
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6bf
	.byte	0x4
	.byte	0x17
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6bf
	.byte	0x8
	.byte	0x17
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6bf
	.byte	0xc
	.byte	0x17
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x26e
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0x17
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8bf
	.byte	0x14
	.byte	0x17
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x272
	.byte	0x7
	.4byte	0x81
	.byte	0x30
	.byte	0x17
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x273
	.byte	0x16
	.4byte	0x8d4
	.byte	0x34
	.byte	0x17
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x275
	.byte	0x7
	.4byte	0x81
	.byte	0x38
	.byte	0x17
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x277
	.byte	0xa
	.4byte	0x8e5
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1a2
	.byte	0x40
	.byte	0x17
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x27b
	.byte	0x7
	.4byte	0x81
	.byte	0x44
	.byte	0x17
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1a2
	.byte	0x48
	.byte	0x17
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8eb
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x280
	.byte	0x7
	.4byte	0x81
	.byte	0x50
	.byte	0x17
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x281
	.byte	0x9
	.4byte	0x5d3
	.byte	0x54
	.byte	0x17
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x89a
	.byte	0x58
	.byte	0x18
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2d3
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x290
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8fc
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x680
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x908
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5d9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF89
	.byte	0x15
	.4byte	0x5d9
	.byte	0xf
	.byte	0x4
	.4byte	0x461
	.byte	0x13
	.4byte	0xb4
	.4byte	0x609
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0x14
	.4byte	0x609
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5e0
	.byte	0xf
	.byte	0x4
	.4byte	0x5eb
	.byte	0x13
	.4byte	0xa8
	.4byte	0x633
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0x14
	.4byte	0xa8
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x615
	.byte	0x13
	.4byte	0x81
	.4byte	0x64d
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x639
	.byte	0x8
	.4byte	0x38
	.4byte	0x663
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x38
	.4byte	0x673
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x124
	.byte	0x18
	.4byte	0x31e
	.byte	0x19
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5
	.2byte	0x128
	.byte	0x8
	.4byte	0x6b9
	.byte	0x17
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6b9
	.byte	0
	.byte	0x17
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x12b
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0x17
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6bf
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x680
	.byte	0xf
	.byte	0x4
	.4byte	0x673
	.byte	0x19
	.4byte	.LASF94
	.byte	0xe
	.byte	0x5
	.2byte	0x144
	.byte	0x8
	.4byte	0x6fe
	.byte	0x17
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x145
	.byte	0x12
	.4byte	0x6fe
	.byte	0
	.byte	0x17
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x146
	.byte	0x12
	.4byte	0x6fe
	.byte	0x6
	.byte	0x17
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x147
	.byte	0x12
	.4byte	0x52
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x52
	.4byte	0x70e
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x5
	.2byte	0x285
	.byte	0x7
	.4byte	0x823
	.byte	0x17
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x287
	.byte	0x18
	.4byte	0x88
	.byte	0
	.byte	0x17
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x288
	.byte	0x12
	.4byte	0x5d3
	.byte	0x4
	.byte	0x17
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x289
	.byte	0x10
	.4byte	0x823
	.byte	0x8
	.byte	0x17
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1b8
	.byte	0x24
	.byte	0x17
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x28b
	.byte	0xf
	.4byte	0x81
	.byte	0x48
	.byte	0x17
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x7a
	.byte	0x50
	.byte	0x17
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6c5
	.byte	0x58
	.byte	0x17
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x28e
	.byte	0x16
	.4byte	0x116
	.byte	0x68
	.byte	0x17
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x28f
	.byte	0x16
	.4byte	0x116
	.byte	0x70
	.byte	0x17
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x290
	.byte	0x16
	.4byte	0x116
	.byte	0x78
	.byte	0x17
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x291
	.byte	0x10
	.4byte	0x833
	.byte	0x80
	.byte	0x17
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x292
	.byte	0x10
	.4byte	0x843
	.byte	0x88
	.byte	0x17
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x293
	.byte	0xf
	.4byte	0x81
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x294
	.byte	0x16
	.4byte	0x116
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x295
	.byte	0x16
	.4byte	0x116
	.byte	0xac
	.byte	0x17
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x296
	.byte	0x16
	.4byte	0x116
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x297
	.byte	0x16
	.4byte	0x116
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x298
	.byte	0x16
	.4byte	0x116
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x299
	.byte	0x8
	.4byte	0x81
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x833
	.byte	0x9
	.4byte	0x88
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x843
	.byte	0x9
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x853
	.byte	0x9
	.4byte	0x88
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x5
	.2byte	0x29e
	.byte	0x7
	.4byte	0x87a
	.byte	0x17
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x87a
	.byte	0
	.byte	0x17
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x88a
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x318
	.4byte	0x88a
	.byte	0x9
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x88
	.4byte	0x89a
	.byte	0x9
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x5
	.2byte	0x283
	.byte	0x3
	.4byte	0x8bf
	.byte	0x1c
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x29a
	.byte	0xb
	.4byte	0x70e
	.byte	0x1c
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x853
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x8cf
	.byte	0x9
	.4byte	0x88
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF145
	.byte	0xf
	.byte	0x4
	.4byte	0x8cf
	.byte	0x1e
	.4byte	0x8e5
	.byte	0x14
	.4byte	0x47f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8da
	.byte	0xf
	.byte	0x4
	.4byte	0x1a2
	.byte	0x1e
	.4byte	0x8fc
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x902
	.byte	0xf
	.byte	0x4
	.4byte	0x8f1
	.byte	0x8
	.4byte	0x673
	.4byte	0x918
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x333
	.byte	0x17
	.4byte	0x47f
	.byte	0x1f
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x334
	.byte	0x1d
	.4byte	0x485
	.byte	0x3
	.4byte	.LASF122
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF123
	.byte	0x7
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF124
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x20
	.4byte	.LASF125
	.byte	0x8
	.byte	0x8
	.byte	0x11
	.4byte	0x94a
	.byte	0x3
	.4byte	.LASF126
	.byte	0x9
	.byte	0x7c
	.byte	0xf
	.4byte	0x2ef
	.byte	0x8
	.4byte	0x979
	.4byte	0x979
	.byte	0x21
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x97f
	.byte	0xf
	.byte	0x4
	.4byte	0x962
	.byte	0x20
	.4byte	.LASF127
	.byte	0x9
	.byte	0x84
	.byte	0x1c
	.4byte	0x96e
	.byte	0x22
	.4byte	.LASF146
	.byte	0x1
	.byte	0x3f
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x9fd
	.byte	0x23
	.4byte	.LVL19
	.4byte	0xbc1
	.4byte	0x9d9
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0x24
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x24
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x24
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0xc
	.4byte	0x1e8480
	.byte	0
	.byte	0x25
	.4byte	.LVL20
	.4byte	0xb91
	.byte	0x25
	.4byte	.LVL21
	.4byte	0x9fd
	.byte	0x26
	.4byte	.LVL22
	.4byte	0xbcd
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF132
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xb81
	.byte	0x28
	.4byte	.LASF128
	.byte	0x1
	.byte	0x10
	.byte	0xd
	.4byte	0xb81
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x29
	.4byte	.LASF129
	.byte	0x1
	.byte	0x35
	.byte	0xe
	.4byte	0x93e
	.4byte	.LLST0
	.byte	0x29
	.4byte	.LASF130
	.byte	0x1
	.byte	0x36
	.byte	0xe
	.4byte	0x93e
	.4byte	.LLST1
	.byte	0x29
	.4byte	.LASF131
	.byte	0x1
	.byte	0x37
	.byte	0xd
	.4byte	0x932
	.4byte	.LLST2
	.byte	0x2a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xab6
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST3
	.byte	0x23
	.4byte	.LVL9
	.4byte	0xbd9
	.4byte	0xa80
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0x23
	.4byte	.LVL10
	.4byte	0xbe5
	.4byte	0xa93
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4e
	.byte	0
	.byte	0x23
	.4byte	.LVL11
	.4byte	0xbd9
	.4byte	0xaa6
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0x26
	.4byte	.LVL12
	.4byte	0xbd9
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL1
	.4byte	0xbf1
	.4byte	0xad1
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0x68
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x23
	.4byte	.LVL2
	.4byte	0xbe5
	.4byte	0xae6
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x23
	.4byte	.LVL3
	.4byte	0xbf1
	.4byte	0xafe
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x23
	.4byte	.LVL4
	.4byte	0xbe5
	.4byte	0xb11
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4e
	.byte	0
	.byte	0x23
	.4byte	.LVL5
	.4byte	0xbfd
	.4byte	0xb34
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0x68
	.byte	0x94
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0x68
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x23
	.4byte	.LVL6
	.4byte	0xbd9
	.4byte	0xb47
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0x23
	.4byte	.LVL7
	.4byte	0xbd9
	.4byte	0xb5a
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0x23
	.4byte	.LVL8
	.4byte	0xbd9
	.4byte	0xb6d
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0x2c
	.4byte	.LVL18
	.4byte	0xc09
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x932
	.4byte	0xb91
	.byte	0x9
	.4byte	0x88
	.byte	0x4
	.byte	0
	.byte	0x27
	.4byte	.LASF133
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xbc1
	.byte	0x2c
	.4byte	.LVL0
	.4byte	0xc15
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xa
	.byte	0x26
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x9
	.byte	0x89
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xb
	.byte	0x30
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x9
	.byte	0x88
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xb
	.byte	0x2e
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xb
	.byte	0x2d
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xc
	.byte	0xc8
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xb
	.byte	0x2c
	.byte	0x5
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x12
	.byte	0x91
	.byte	0x68
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x91
	.byte	0x69
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE9
	.2byte	0x12
	.byte	0x72
	.byte	0x68
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x72
	.byte	0x69
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL17
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF133:
	.string	"init_gpio_system"
.LASF125:
	.string	"SystemCoreClock"
.LASF39:
	.string	"_on_exit_args"
.LASF130:
	.string	"temperature"
.LASF134:
	.string	"bl_uart_init"
.LASF107:
	.string	"_wctomb_state"
.LASF104:
	.string	"_r48"
.LASF109:
	.string	"_signal_buf"
.LASF11:
	.string	"unsigned int"
.LASF53:
	.string	"_lbfsize"
.LASF143:
	.string	"/home/jins/bl_iot_sdk/customer_app/tt_app_temperature/tt_app_temperature/main.c"
.LASF68:
	.string	"_errno"
.LASF22:
	.string	"_LOCK_RECURSIVE_T"
.LASF55:
	.string	"_read"
.LASF111:
	.string	"_mbrlen_state"
.LASF70:
	.string	"_stdout"
.LASF14:
	.string	"_fpos_t"
.LASF46:
	.string	"_fns"
.LASF54:
	.string	"_cookie"
.LASF51:
	.string	"_flags"
.LASF28:
	.string	"_Bigint"
.LASF36:
	.string	"__tm_wday"
.LASF78:
	.string	"_result"
.LASF124:
	.string	"uint32_t"
.LASF32:
	.string	"__tm_hour"
.LASF18:
	.string	"__count"
.LASF131:
	.string	"checksum"
.LASF31:
	.string	"__tm_min"
.LASF120:
	.string	"_impure_ptr"
.LASF117:
	.string	"_nextf"
.LASF94:
	.string	"_rand48"
.LASF79:
	.string	"_result_k"
.LASF10:
	.string	"long long unsigned int"
.LASF100:
	.string	"_asctime_buf"
.LASF127:
	.string	"intCbfArra"
.LASF50:
	.string	"__sFILE"
.LASF27:
	.string	"_wds"
.LASF4:
	.string	"__uint16_t"
.LASF90:
	.string	"__FILE"
.LASF62:
	.string	"_offset"
.LASF73:
	.string	"_emergency"
.LASF30:
	.string	"__tm_sec"
.LASF144:
	.string	"/home/jins/bl_iot_sdk/customer_app/tt_app_temperature/build_out/tt_app_temperature"
.LASF37:
	.string	"__tm_yday"
.LASF72:
	.string	"_inc"
.LASF45:
	.string	"_ind"
.LASF137:
	.string	"BL602_Delay_US"
.LASF24:
	.string	"_next"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF19:
	.string	"__value"
.LASF136:
	.string	"bl_gpio_input_get_value"
.LASF80:
	.string	"_p5s"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF105:
	.string	"_mblen_state"
.LASF89:
	.string	"char"
.LASF33:
	.string	"__tm_mday"
.LASF86:
	.string	"_sig_func"
.LASF112:
	.string	"_mbrtowc_state"
.LASF85:
	.string	"_atexit0"
.LASF23:
	.string	"_flock_t"
.LASF16:
	.string	"__wch"
.LASF93:
	.string	"_iobs"
.LASF122:
	.string	"uint8_t"
.LASF58:
	.string	"_close"
.LASF76:
	.string	"__sdidinit"
.LASF69:
	.string	"_stdin"
.LASF102:
	.string	"_gamma_signgam"
.LASF9:
	.string	"long long int"
.LASF140:
	.string	"printf"
.LASF48:
	.string	"_base"
.LASF81:
	.string	"_freelist"
.LASF96:
	.string	"_mult"
.LASF21:
	.string	"__ULong"
.LASF114:
	.string	"_wcrtomb_state"
.LASF52:
	.string	"_file"
.LASF77:
	.string	"__cleanup"
.LASF20:
	.string	"_mbstate_t"
.LASF142:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF40:
	.string	"_fnargs"
.LASF38:
	.string	"__tm_isdst"
.LASF116:
	.string	"_h_errno"
.LASF146:
	.string	"bfl_main"
.LASF128:
	.string	"data"
.LASF139:
	.string	"bl_gpio_enable_input"
.LASF34:
	.string	"__tm_mon"
.LASF123:
	.string	"uint16_t"
.LASF56:
	.string	"_write"
.LASF44:
	.string	"_atexit"
.LASF65:
	.string	"_mbstate"
.LASF138:
	.string	"bl_gpio_output_set"
.LASF2:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF88:
	.string	"__sf"
.LASF26:
	.string	"_sign"
.LASF141:
	.string	"bl_gpio_enable_output"
.LASF132:
	.string	"read_dht22_data"
.LASF63:
	.string	"_data"
.LASF17:
	.string	"__wchb"
.LASF121:
	.string	"_global_impure_ptr"
.LASF35:
	.string	"__tm_year"
.LASF101:
	.string	"_localtime_buf"
.LASF119:
	.string	"_unused"
.LASF3:
	.string	"__uint8_t"
.LASF84:
	.string	"_new"
.LASF82:
	.string	"_cvtlen"
.LASF25:
	.string	"_maxwds"
.LASF108:
	.string	"_l64a_buf"
.LASF126:
	.string	"intCallback_Type"
.LASF61:
	.string	"_blksize"
.LASF29:
	.string	"__tm"
.LASF64:
	.string	"_lock"
.LASF8:
	.string	"long unsigned int"
.LASF92:
	.string	"_niobs"
.LASF12:
	.string	"wint_t"
.LASF41:
	.string	"_dso_handle"
.LASF135:
	.string	"BL602_Delay_MS"
.LASF83:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF110:
	.string	"_getdate_err"
.LASF97:
	.string	"_add"
.LASF47:
	.string	"__sbuf"
.LASF91:
	.string	"_glue"
.LASF87:
	.string	"__sglue"
.LASF99:
	.string	"_strtok_last"
.LASF106:
	.string	"_mbtowc_state"
.LASF75:
	.string	"_locale"
.LASF15:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF67:
	.string	"_reent"
.LASF5:
	.string	"short unsigned int"
.LASF42:
	.string	"_fntypes"
.LASF49:
	.string	"_size"
.LASF13:
	.string	"_off_t"
.LASF60:
	.string	"_nbuf"
.LASF98:
	.string	"_unused_rand"
.LASF74:
	.string	"_unspecified_locale_info"
.LASF129:
	.string	"humidity"
.LASF66:
	.string	"_flags2"
.LASF43:
	.string	"_is_cxa"
.LASF95:
	.string	"_seed"
.LASF103:
	.string	"_rand_next"
.LASF145:
	.string	"__locale_t"
.LASF57:
	.string	"_seek"
.LASF71:
	.string	"_stderr"
.LASF118:
	.string	"_nmalloc"
.LASF59:
	.string	"_ubuf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
