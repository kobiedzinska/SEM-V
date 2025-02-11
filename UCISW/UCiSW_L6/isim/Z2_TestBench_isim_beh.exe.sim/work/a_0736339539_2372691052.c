/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/XilinxPrj/UCiSW_L6/Z2_TestBench.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_0736339539_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(89, ng0);

LAB3:    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t1 = (t0 + 4496);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_delta(t1, 0U, 1, t3);
    t11 = (t0 + 4496);
    xsi_driver_intertial_reject(t11, t3, t3);

LAB2:    t12 = (t0 + 4400);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0736339539_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    int64 t18;
    int64 t19;

LAB0:    t1 = (t0 + 4080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(106, ng0);

LAB6:    t2 = (t0 + 4416);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t5 = (t0 + 4416);
    *((int *)t5) = 0;
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 7292);
    *((int *)t2) = 16;
    t3 = (t0 + 7296);
    *((int *)t3) = 0;
    t6 = 16;
    t7 = 0;

LAB8:    if (t6 >= t7)
        goto LAB9;

LAB11:    xsi_set_current_line(129, ng0);

LAB31:    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB5:    t3 = (t0 + 1632U);
    t4 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t4 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(108, ng0);
    t5 = (t0 + 4560);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 4624);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 2728U);
    t3 = *((char **)t2);
    t2 = (t0 + 7292);
    t12 = *((int *)t2);
    t13 = (t12 - 16);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(16, 0, -1, *((int *)t2));
    t15 = (8U * t14);
    t16 = (0 + t15);
    t5 = (t3 + t16);
    t8 = (t0 + 4688);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    memcpy(t17, t5, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 2848U);
    t3 = *((char **)t2);
    t18 = *((int64 *)t3);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, t18);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 7292);
    t6 = *((int *)t2);
    t3 = (t0 + 7296);
    t7 = *((int *)t3);
    if (t6 == t7)
        goto LAB11;

LAB28:    t12 = (t6 + -1);
    t6 = t12;
    t5 = (t0 + 7292);
    *((int *)t5) = t6;
    goto LAB8;

LAB12:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4624);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 2848U);
    t3 = *((char **)t2);
    t18 = *((int64 *)t3);
    t19 = (2 * t18);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, t19);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 4560);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 4624);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 2848U);
    t3 = *((char **)t2);
    t18 = *((int64 *)t3);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, t18);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 4624);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 2848U);
    t3 = *((char **)t2);
    t18 = *((int64 *)t3);
    t19 = (8 * t18);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, t19);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    goto LAB10;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB29:    goto LAB2;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

}


extern void work_a_0736339539_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0736339539_2372691052_p_0,(void *)work_a_0736339539_2372691052_p_1};
	xsi_register_didat("work_a_0736339539_2372691052", "isim/Z2_TestBench_isim_beh.exe.sim/work/a_0736339539_2372691052.didat");
	xsi_register_executes(pe);
}
