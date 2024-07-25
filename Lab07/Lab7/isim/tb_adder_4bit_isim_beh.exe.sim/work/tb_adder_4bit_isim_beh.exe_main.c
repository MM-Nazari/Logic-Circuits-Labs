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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000264967605_3114136509_init();
    work_m_00000000003043770649_2386756495_init();
    work_m_00000000000264967605_3079774166_init();
    work_m_00000000003043770649_1371034770_init();
    work_m_00000000001398437621_2335129183_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001398437621_2335129183");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
