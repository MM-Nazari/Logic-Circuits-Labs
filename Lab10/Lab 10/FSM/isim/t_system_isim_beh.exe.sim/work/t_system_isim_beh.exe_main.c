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
    work_m_00000000001337900782_2030911003_init();
    work_m_00000000001256192053_1279891299_init();
    work_m_00000000003091690037_3913188552_init();
    work_m_00000000002653077439_2933281589_init();
    work_m_00000000002133172863_1458417065_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002133172863_1458417065");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
