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
static const char *ng0 = "C:/XilinxPrj/UCiSW_L6/Z2.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0079319815_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5104);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 5232);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 5232);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

}

static void work_a_0079319815_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10};

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5296);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t9 = *((unsigned char *)t4);
    t1 = (char *)((nl0) + t9);
    goto **((char **)t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(71, ng0);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)2);
    if (t11 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB5;

LAB7:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)2);
    if (t8 != 0)
        goto LAB23;

LAB25:
LAB24:    goto LAB5;

LAB8:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)2);
    if (t8 != 0)
        goto LAB43;

LAB45:
LAB44:    goto LAB5;

LAB9:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)2);
    if (t8 != 0)
        goto LAB63;

LAB65:
LAB64:    goto LAB5;

LAB10:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)2);
    if (t8 != 0)
        goto LAB83;

LAB85:
LAB84:    goto LAB5;

LAB11:    xsi_set_current_line(72, ng0);
    t5 = (t0 + 1832U);
    t7 = *((char **)t5);
    t5 = (t0 + 7651);
    t13 = 1;
    if (8U == 8U)
        goto LAB17;

LAB18:    t13 = 0;

LAB19:    if (t13 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(73, ng0);
    t17 = (t0 + 5296);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)1;
    xsi_driver_first_trans_fast(t17);
    goto LAB15;

LAB17:    t14 = 0;

LAB20:    if (t14 < 8U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t15 = (t7 + t14);
    t16 = (t5 + t14);
    if (*((unsigned char *)t15) != *((unsigned char *)t16))
        goto LAB18;

LAB22:    t14 = (t14 + 1);
    goto LAB20;

LAB23:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 7659);
    t9 = 1;
    if (8U == 8U)
        goto LAB29;

LAB30:    t9 = 0;

LAB31:    if (t9 != 0)
        goto LAB26;

LAB28:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 7667);
    t3 = 1;
    if (8U == 8U)
        goto LAB37;

LAB38:    t3 = 0;

LAB39:    if (t3 != 0)
        goto LAB35;

LAB36:    xsi_set_current_line(84, ng0);
    t7 = (t0 + 5296);
    t12 = (t7 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)0;
    xsi_driver_first_trans_fast(t7);

LAB27:    goto LAB24;

LAB26:    xsi_set_current_line(80, ng0);
    t12 = (t0 + 5296);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast(t12);
    goto LAB27;

LAB29:    t14 = 0;

LAB32:    if (t14 < 8U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t6 = (t4 + t14);
    t7 = (t1 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB30;

LAB34:    t14 = (t14 + 1);
    goto LAB32;

LAB35:    goto LAB27;

LAB37:    t14 = 0;

LAB40:    if (t14 < 8U)
        goto LAB41;
    else
        goto LAB39;

LAB41:    t5 = (t2 + t14);
    t6 = (t1 + t14);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB38;

LAB42:    t14 = (t14 + 1);
    goto LAB40;

LAB43:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 7675);
    t9 = 1;
    if (8U == 8U)
        goto LAB49;

LAB50:    t9 = 0;

LAB51:    if (t9 != 0)
        goto LAB46;

LAB48:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 7683);
    t3 = 1;
    if (8U == 8U)
        goto LAB57;

LAB58:    t3 = 0;

LAB59:    if (t3 != 0)
        goto LAB55;

LAB56:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 5296);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB47:    goto LAB44;

LAB46:    xsi_set_current_line(91, ng0);
    t12 = (t0 + 5296);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t12);
    goto LAB47;

LAB49:    t14 = 0;

LAB52:    if (t14 < 8U)
        goto LAB53;
    else
        goto LAB51;

LAB53:    t6 = (t4 + t14);
    t7 = (t1 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB50;

LAB54:    t14 = (t14 + 1);
    goto LAB52;

LAB55:    xsi_set_current_line(93, ng0);
    t7 = (t0 + 5296);
    t12 = (t7 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)1;
    xsi_driver_first_trans_fast(t7);
    goto LAB47;

LAB57:    t14 = 0;

LAB60:    if (t14 < 8U)
        goto LAB61;
    else
        goto LAB59;

LAB61:    t5 = (t2 + t14);
    t6 = (t1 + t14);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB58;

LAB62:    t14 = (t14 + 1);
    goto LAB60;

LAB63:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 7691);
    t9 = 1;
    if (8U == 8U)
        goto LAB69;

LAB70:    t9 = 0;

LAB71:    if (t9 != 0)
        goto LAB66;

LAB68:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 7699);
    t3 = 1;
    if (8U == 8U)
        goto LAB77;

LAB78:    t3 = 0;

LAB79:    if (t3 != 0)
        goto LAB75;

LAB76:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 5296);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB67:    goto LAB64;

LAB66:    xsi_set_current_line(102, ng0);
    t12 = (t0 + 5296);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)4;
    xsi_driver_first_trans_fast(t12);
    goto LAB67;

LAB69:    t14 = 0;

LAB72:    if (t14 < 8U)
        goto LAB73;
    else
        goto LAB71;

LAB73:    t6 = (t4 + t14);
    t7 = (t1 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB70;

LAB74:    t14 = (t14 + 1);
    goto LAB72;

LAB75:    xsi_set_current_line(104, ng0);
    t7 = (t0 + 5296);
    t12 = (t7 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)1;
    xsi_driver_first_trans_fast(t7);
    goto LAB67;

LAB77:    t14 = 0;

LAB80:    if (t14 < 8U)
        goto LAB81;
    else
        goto LAB79;

LAB81:    t5 = (t2 + t14);
    t6 = (t1 + t14);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB78;

LAB82:    t14 = (t14 + 1);
    goto LAB80;

LAB83:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 7707);
    t9 = 1;
    if (8U == 8U)
        goto LAB89;

LAB90:    t9 = 0;

LAB91:    if (t9 != 0)
        goto LAB86;

LAB88:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 5296);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB87:    goto LAB84;

LAB86:    xsi_set_current_line(113, ng0);
    t12 = (t0 + 5296);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)1;
    xsi_driver_first_trans_fast(t12);
    goto LAB87;

LAB89:    t14 = 0;

LAB92:    if (t14 < 8U)
        goto LAB93;
    else
        goto LAB91;

LAB93:    t6 = (t4 + t14);
    t7 = (t1 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB90;

LAB94:    t14 = (t14 + 1);
    goto LAB92;

}

static void work_a_0079319815_3212880686_p_2(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(133, ng0);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t4 = (t0 + 1632U);
    t1 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t4, 0U, 0U);
    if (t1 != 0)
        goto LAB14;

LAB15:
LAB3:    t4 = (t0 + 5136);
    *((int *)t4) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(134, ng0);
    t4 = (t0 + 5360);
    t17 = (t4 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB3;

LAB5:    t4 = (t0 + 1672U);
    t14 = *((char **)t4);
    t15 = *((unsigned char *)t14);
    t16 = (t15 == (unsigned char)3);
    t1 = t16;
    goto LAB7;

LAB8:    t4 = (t0 + 1192U);
    t11 = *((char **)t4);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)2);
    t2 = t13;
    goto LAB10;

LAB11:    t4 = (t0 + 2472U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)4);
    t3 = t10;
    goto LAB13;

LAB14:    xsi_set_current_line(136, ng0);
    t5 = (t0 + 5360);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t14 = (t11 + 56U);
    t17 = *((char **)t14);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

}

static void work_a_0079319815_3212880686_p_3(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(142, ng0);

LAB3:    t1 = (t0 + 7715);
    t3 = (t0 + 5424);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0079319815_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(146, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)4);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 5488);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 5152);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 5488);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_0079319815_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0079319815_3212880686_p_0,(void *)work_a_0079319815_3212880686_p_1,(void *)work_a_0079319815_3212880686_p_2,(void *)work_a_0079319815_3212880686_p_3,(void *)work_a_0079319815_3212880686_p_4};
	xsi_register_didat("work_a_0079319815_3212880686", "isim/Z2_TestBench_isim_beh.exe.sim/work/a_0079319815_3212880686.didat");
	xsi_register_executes(pe);
}
