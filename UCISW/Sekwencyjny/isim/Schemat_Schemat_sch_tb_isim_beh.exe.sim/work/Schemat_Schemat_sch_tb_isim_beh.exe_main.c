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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_STANDARD;
char *UNISIM_P_0947159679;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    unisim_a_4147737283_2967259552_init();
    unisim_a_3762448000_2971575191_init();
    unisim_a_1801614988_1818890047_init();
    unisim_a_2472646025_1397528790_init();
    unisim_a_2867636556_1359619727_init();
    unisim_a_2782630213_1361109519_init();
    unisim_a_2661327437_0605893366_init();
    unisim_a_3367287988_0361848851_init();
    unisim_a_2211589156_2274105955_init();
    work_a_2903167986_3212880686_init();
    work_a_1560722020_3212880686_init();


    xsi_register_tops("work_a_1560722020_3212880686");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
