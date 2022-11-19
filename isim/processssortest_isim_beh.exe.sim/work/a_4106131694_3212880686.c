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
static const char *ng0 = "D:/Education/CA/Moezmips/alucontrol.vhd";



static void work_a_4106131694_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4536);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4542);
    t4 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t4 = 0;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4548);
    t4 = 1;
    if (2U == 2U)
        goto LAB21;

LAB22:    t4 = 0;

LAB23:    if (t4 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4598);
    t4 = 1;
    if (2U == 2U)
        goto LAB78;

LAB79:    t4 = 0;

LAB80:    if (t4 != 0)
        goto LAB76;

LAB77:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t8 = (t0 + 4538);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(46, ng0);
    t8 = (t0 + 4544);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB13:    t5 = 0;

LAB16:    if (t5 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB14;

LAB18:    t5 = (t5 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(49, ng0);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t15 = (5 - 3);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t8 = (t9 + t17);
    t10 = (t0 + 4550);
    t18 = 1;
    if (4U == 4U)
        goto LAB30;

LAB31:    t18 = 0;

LAB32:    if (t18 != 0)
        goto LAB27;

LAB29:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 4558);
    t4 = 1;
    if (4U == 4U)
        goto LAB38;

LAB39:    t4 = 0;

LAB40:    if (t4 != 0)
        goto LAB36;

LAB37:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 4566);
    t4 = 1;
    if (4U == 4U)
        goto LAB46;

LAB47:    t4 = 0;

LAB48:    if (t4 != 0)
        goto LAB44;

LAB45:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 4574);
    t4 = 1;
    if (4U == 4U)
        goto LAB54;

LAB55:    t4 = 0;

LAB56:    if (t4 != 0)
        goto LAB52;

LAB53:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 4582);
    t4 = 1;
    if (4U == 4U)
        goto LAB62;

LAB63:    t4 = 0;

LAB64:    if (t4 != 0)
        goto LAB60;

LAB61:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 4590);
    t4 = 1;
    if (4U == 4U)
        goto LAB70;

LAB71:    t4 = 0;

LAB72:    if (t4 != 0)
        goto LAB68;

LAB69:
LAB28:    goto LAB3;

LAB21:    t5 = 0;

LAB24:    if (t5 < 2U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB22;

LAB26:    t5 = (t5 + 1);
    goto LAB24;

LAB27:    xsi_set_current_line(50, ng0);
    t14 = (t0 + 4554);
    t21 = (t0 + 2912);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 4U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB28;

LAB30:    t19 = 0;

LAB33:    if (t19 < 4U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t12 = (t8 + t19);
    t13 = (t10 + t19);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB31;

LAB35:    t19 = (t19 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(52, ng0);
    t9 = (t0 + 4562);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB28;

LAB38:    t17 = 0;

LAB41:    if (t17 < 4U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB39;

LAB43:    t17 = (t17 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(54, ng0);
    t9 = (t0 + 4570);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB28;

LAB46:    t17 = 0;

LAB49:    if (t17 < 4U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB47;

LAB51:    t17 = (t17 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(56, ng0);
    t9 = (t0 + 4578);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB28;

LAB54:    t17 = 0;

LAB57:    if (t17 < 4U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB55;

LAB59:    t17 = (t17 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(58, ng0);
    t9 = (t0 + 4586);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB28;

LAB62:    t17 = 0;

LAB65:    if (t17 < 4U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB63;

LAB67:    t17 = (t17 + 1);
    goto LAB65;

LAB68:    xsi_set_current_line(60, ng0);
    t9 = (t0 + 4594);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB28;

LAB70:    t17 = 0;

LAB73:    if (t17 < 4U)
        goto LAB74;
    else
        goto LAB72;

LAB74:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB71;

LAB75:    t17 = (t17 + 1);
    goto LAB73;

LAB76:    xsi_set_current_line(64, ng0);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t15 = (5 - 3);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t8 = (t9 + t17);
    t10 = (t0 + 4600);
    t18 = 1;
    if (4U == 4U)
        goto LAB87;

LAB88:    t18 = 0;

LAB89:    if (t18 != 0)
        goto LAB84;

LAB86:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 4608);
    t4 = 1;
    if (4U == 4U)
        goto LAB95;

LAB96:    t4 = 0;

LAB97:    if (t4 != 0)
        goto LAB93;

LAB94:
LAB85:    goto LAB3;

LAB78:    t5 = 0;

LAB81:    if (t5 < 2U)
        goto LAB82;
    else
        goto LAB80;

LAB82:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB79;

LAB83:    t5 = (t5 + 1);
    goto LAB81;

LAB84:    xsi_set_current_line(65, ng0);
    t14 = (t0 + 4604);
    t21 = (t0 + 2912);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 4U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB85;

LAB87:    t19 = 0;

LAB90:    if (t19 < 4U)
        goto LAB91;
    else
        goto LAB89;

LAB91:    t12 = (t8 + t19);
    t13 = (t10 + t19);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB88;

LAB92:    t19 = (t19 + 1);
    goto LAB90;

LAB93:    xsi_set_current_line(67, ng0);
    t9 = (t0 + 4612);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB85;

LAB95:    t17 = 0;

LAB98:    if (t17 < 4U)
        goto LAB99;
    else
        goto LAB97;

LAB99:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB96;

LAB100:    t17 = (t17 + 1);
    goto LAB98;

}


extern void work_a_4106131694_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4106131694_3212880686_p_0};
	xsi_register_didat("work_a_4106131694_3212880686", "isim/processssortest_isim_beh.exe.sim/work/a_4106131694_3212880686.didat");
	xsi_register_executes(pe);
}
