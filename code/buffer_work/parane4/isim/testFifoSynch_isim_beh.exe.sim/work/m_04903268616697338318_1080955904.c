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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/parane4/testFifoSynch.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static const char *ng3 = "---Cannot push <%d>: Buffer Full at time %t";
static const char *ng4 = "---Cannot Pop: Buffer Empty at time %t";
static unsigned int ng5[] = {4294967295U, 4294967295U};
static const char *ng6 = "Start test:1 at:%t";
static int ng7[] = {2, 0};
static int ng8[] = {3, 0};
static int ng9[] = {4, 0};
static int ng10[] = {5, 0};
static int ng11[] = {6, 0};
static int ng12[] = {7, 0};
static int ng13[] = {8, 0};
static int ng14[] = {9, 0};
static int ng15[] = {10, 0};
static int ng16[] = {11, 0};
static int ng17[] = {12, 0};
static int ng18[] = {13, 0};
static int ng19[] = {14, 0};
static const char *ng20 = "Start test:2 at:%t";
static int ng21[] = {20, 0};



static int sp_clog2(char *t1, char *t2)
{
    char t7[8];
    char t18[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;

LAB0:    t0 = 1;
    xsi_set_current_line(110, ng0);

LAB2:    xsi_set_current_line(111, ng0);
    t3 = (t1 + 5576);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_minus(t7, 32, t5, 32, t6, 32);
    t8 = (t1 + 5576);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    xsi_set_current_line(112, ng0);
    xsi_set_current_line(112, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t1 + 5416);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);

LAB3:    t3 = (t1 + 5576);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng2)));
    memset(t7, 0, 8);
    xsi_vlog_signed_greater(t7, 32, t5, 32, t6, 32);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB4;

LAB5:    t0 = 0;

LAB1:    return t0;
LAB4:    xsi_set_current_line(113, ng0);
    t14 = (t1 + 5576);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng1)));
    memset(t18, 0, 8);
    xsi_vlog_signed_rshift(t18, 32, t16, 32, t17, 32);
    t19 = (t1 + 5576);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    xsi_set_current_line(112, ng0);
    t3 = (t1 + 5416);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = (t1 + 5416);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB3;

}

static int sp_push(char *t1, char *t2)
{
    char t15[16];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1552);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(119, ng0);
    t5 = (t1 + 2936U);
    t6 = *((char **)t5);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(122, ng0);

LAB8:    xsi_set_current_line(123, ng0);
    t4 = (t1 + 5736);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t12 = (t1 + 4136);
    xsi_vlogvar_assign_value(t12, t6, 0, 0, 32);
    xsi_set_current_line(124, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 3976);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(125, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 0U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB9;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB5:    xsi_set_current_line(120, ng0);
    t12 = (t1 + 5736);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t16 = xsi_vlog_time(t15, 1000.0000000000000, 1000.0000000000000);
    t17 = (t1 + 1552);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t17, (char)118, t14, 32, (char)118, t15, 64);

LAB7:    goto LAB4;

LAB9:    xsi_set_current_line(126, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 1000LL);
    *((char **)t3) = &&LAB10;
    t0 = 1;
    goto LAB1;

LAB10:    xsi_set_current_line(126, ng0);
    t6 = ((char*)((ng2)));
    t12 = (t1 + 3976);
    xsi_vlogvar_assign_value(t12, t6, 0, 0, 1);
    goto LAB7;

}

static int sp_pop(char *t1, char *t2)
{
    char t12[16];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t13;
    char *t14;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1984);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(132, ng0);
    t5 = (t1 + 2776U);
    t6 = *((char **)t5);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(135, ng0);

LAB8:    xsi_set_current_line(136, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 3816);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(137, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 0U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB9;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB5:    xsi_set_current_line(133, ng0);
    t13 = xsi_vlog_time(t12, 1000.0000000000000, 1000.0000000000000);
    t14 = (t1 + 1984);
    xsi_vlogfile_write(1, 0, 0, ng4, 2, t14, (char)118, t12, 64);

LAB7:    goto LAB4;

LAB9:    xsi_set_current_line(138, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 1000LL);
    *((char **)t3) = &&LAB10;
    t0 = 1;
    goto LAB1;

LAB10:    xsi_set_current_line(138, ng0);
    t6 = ((char*)((ng2)));
    t13 = (t1 + 3816);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 1);
    xsi_set_current_line(139, ng0);
    t4 = (t1 + 2616U);
    t5 = *((char **)t4);
    t4 = (t1 + 5896);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    goto LAB7;

}

static void Initial_26_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 6808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);

LAB4:    xsi_set_current_line(27, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3656);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(28, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(29, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3816);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3976);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(31, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4296);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(32, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4136);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 6616);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(33, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 6616);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3496);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    goto LAB1;

}

static void Always_38_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 7056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 6864);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 3656);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 3656);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Initial_42_2(char *t0)
{
    char t3[16];
    char t23[8];
    char *t1;
    char *t2;
    char *t4;
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
    char *t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 7304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);

LAB4:    xsi_set_current_line(43, ng0);
    t2 = xsi_vlog_time(t3, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng6, 2, t0, (char)118, t3, 64);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB7:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB9:    if (t16 != 0)
        goto LAB10;

LAB5:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB6:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng7)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB13:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB15:    if (t16 != 0)
        goto LAB16;

LAB11:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB12:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng8)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB19:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB21:    if (t16 != 0)
        goto LAB22;

LAB17:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB18:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng9)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB25:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB27:    if (t16 != 0)
        goto LAB28;

LAB23:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB24:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng10)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB31:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB33:    if (t16 != 0)
        goto LAB34;

LAB29:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB30:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB37:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB39:    if (t16 != 0)
        goto LAB40;

LAB35:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB36:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB43:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB45:    if (t16 != 0)
        goto LAB46;

LAB41:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB42:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB49:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB51:    if (t16 != 0)
        goto LAB52;

LAB47:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB48:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB55:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB57:    if (t16 != 0)
        goto LAB58;

LAB53:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB54:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB61:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB63:    if (t16 != 0)
        goto LAB64;

LAB59:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB60:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB67:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB69:    if (t16 != 0)
        goto LAB70;

LAB65:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB66:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng11)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB73:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB75:    if (t16 != 0)
        goto LAB76;

LAB71:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB72:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng12)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB79:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB81:    if (t16 != 0)
        goto LAB82;

LAB77:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB78:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng13)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB85:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB87:    if (t16 != 0)
        goto LAB88;

LAB83:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB84:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng14)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB91:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB93:    if (t16 != 0)
        goto LAB94;

LAB89:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB90:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng15)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB97:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB99:    if (t16 != 0)
        goto LAB100;

LAB95:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB96:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng16)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB103:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB105:    if (t16 != 0)
        goto LAB106;

LAB101:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB102:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng17)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB109:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB111:    if (t16 != 0)
        goto LAB112;

LAB107:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB108:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng18)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB115:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB117:    if (t16 != 0)
        goto LAB118;

LAB113:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB114:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng19)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB121:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB123:    if (t16 != 0)
        goto LAB124;

LAB119:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB120:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB127:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB129:    if (t16 != 0)
        goto LAB130;

LAB125:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB126:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB133:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB135:    if (t16 != 0)
        goto LAB136;

LAB131:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB132:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB139:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB141:    if (t16 != 0)
        goto LAB142;

LAB137:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB138:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB145:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB147:    if (t16 != 0)
        goto LAB148;

LAB143:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB144:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB151:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB153:    if (t16 != 0)
        goto LAB154;

LAB149:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB150:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB157:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB159:    if (t16 != 0)
        goto LAB160;

LAB155:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB156:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB163:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB165:    if (t16 != 0)
        goto LAB166;

LAB161:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB162:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB169:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB171:    if (t16 != 0)
        goto LAB172;

LAB167:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB168:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 7112);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB175:    t6 = (t0 + 7208);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t16 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB177:    if (t16 != 0)
        goto LAB178;

LAB173:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB174:    t14 = (t0 + 7208);
    t15 = *((char **)t14);
    t14 = (t0 + 5896);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7112);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t15, t0, t21, t22);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 10600);
    *((int *)t2) = 1;
    t4 = (t0 + 7336);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB179;

LAB1:    return;
LAB8:;
LAB10:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB7;
    goto LAB1;

LAB14:;
LAB16:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB13;
    goto LAB1;

LAB20:;
LAB22:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB19;
    goto LAB1;

LAB26:;
LAB28:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB25;
    goto LAB1;

LAB32:;
LAB34:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB31;
    goto LAB1;

LAB38:;
LAB40:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB37;
    goto LAB1;

LAB44:;
LAB46:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB43;
    goto LAB1;

LAB50:;
LAB52:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB49;
    goto LAB1;

LAB56:;
LAB58:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB55;
    goto LAB1;

LAB62:;
LAB64:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB61;
    goto LAB1;

LAB68:;
LAB70:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB67;
    goto LAB1;

LAB74:;
LAB76:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB73;
    goto LAB1;

LAB80:;
LAB82:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB79;
    goto LAB1;

LAB86:;
LAB88:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB85;
    goto LAB1;

LAB92:;
LAB94:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB91;
    goto LAB1;

LAB98:;
LAB100:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB97;
    goto LAB1;

LAB104:;
LAB106:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB103;
    goto LAB1;

LAB110:;
LAB112:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB109;
    goto LAB1;

LAB116:;
LAB118:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB115;
    goto LAB1;

LAB122:;
LAB124:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB121;
    goto LAB1;

LAB128:;
LAB130:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB127;
    goto LAB1;

LAB134:;
LAB136:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB133;
    goto LAB1;

LAB140:;
LAB142:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB139;
    goto LAB1;

LAB146:;
LAB148:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB145;
    goto LAB1;

LAB152:;
LAB154:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB151;
    goto LAB1;

LAB158:;
LAB160:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB157;
    goto LAB1;

LAB164:;
LAB166:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB163;
    goto LAB1;

LAB170:;
LAB172:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB169;
    goto LAB1;

LAB176:;
LAB178:    t6 = (t0 + 7304U);
    *((char **)t6) = &&LAB175;
    goto LAB1;

LAB179:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 10616);
    *((int *)t2) = 1;
    t4 = (t0 + 7336);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB180;
    goto LAB1;

LAB180:    xsi_set_current_line(77, ng0);
    t2 = xsi_vlog_time(t3, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng20, 2, t0, (char)118, t3, 64);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng21)));
    t4 = (t0 + 7112);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB183:    t8 = (t0 + 7208);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB185:    if (t16 != 0)
        goto LAB186;

LAB181:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB182:    t17 = (t0 + 7208);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7112);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 7360);
    t4 = (t0 + 7112);
    xsi_add_process_toexecute(0, t2, t4);
    t5 = (t0 + 7608);
    t6 = (t0 + 7112);
    xsi_add_process_toexecute(0, t5, t6);
    t7 = (t0 + 4456);
    memset(t23, 0, 8);
    *((unsigned int *)t23) = 2;
    xsi_vlogvar_assign_value(t7, t23, 0, 0, 32);
    t8 = (t0 + 10632);
    *((int *)t8) = 1;
    *((char **)t1) = &&LAB187;
    goto LAB1;

LAB184:;
LAB186:    t8 = (t0 + 7304U);
    *((char **)t8) = &&LAB183;
    goto LAB1;

LAB187:    t9 = (t0 + 4456);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    if (*((int *)t11) > 0)
        goto LAB188;

LAB189:    t13 = (t0 + 7112);
    xsi_clean_active_fork_process_list(t13);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 7856);
    t4 = (t0 + 7112);
    xsi_add_process_toexecute(0, t2, t4);
    t5 = (t0 + 8104);
    t6 = (t0 + 7112);
    xsi_add_process_toexecute(0, t5, t6);
    t7 = (t0 + 4616);
    memset(t23, 0, 8);
    *((unsigned int *)t23) = 2;
    xsi_vlogvar_assign_value(t7, t23, 0, 0, 32);
    t8 = (t0 + 10648);
    *((int *)t8) = 1;
    *((char **)t1) = &&LAB190;
    goto LAB1;

LAB188:    t12 = (t0 + 10632);
    *((int *)t12) = 1;
    goto LAB1;

LAB190:    t9 = (t0 + 4616);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    if (*((int *)t11) > 0)
        goto LAB191;

LAB192:    t13 = (t0 + 7112);
    xsi_clean_active_fork_process_list(t13);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 8352);
    t4 = (t0 + 7112);
    xsi_add_process_toexecute(0, t2, t4);
    t5 = (t0 + 8600);
    t6 = (t0 + 7112);
    xsi_add_process_toexecute(0, t5, t6);
    t7 = (t0 + 4776);
    memset(t23, 0, 8);
    *((unsigned int *)t23) = 2;
    xsi_vlogvar_assign_value(t7, t23, 0, 0, 32);
    t8 = (t0 + 10664);
    *((int *)t8) = 1;
    *((char **)t1) = &&LAB193;
    goto LAB1;

LAB191:    t12 = (t0 + 10648);
    *((int *)t12) = 1;
    goto LAB1;

LAB193:    t9 = (t0 + 4776);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    if (*((int *)t11) > 0)
        goto LAB194;

LAB195:    t13 = (t0 + 7112);
    xsi_clean_active_fork_process_list(t13);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 8848);
    t4 = (t0 + 7112);
    xsi_add_process_toexecute(0, t2, t4);
    t5 = (t0 + 9096);
    t6 = (t0 + 7112);
    xsi_add_process_toexecute(0, t5, t6);
    t7 = (t0 + 4936);
    memset(t23, 0, 8);
    *((unsigned int *)t23) = 2;
    xsi_vlogvar_assign_value(t7, t23, 0, 0, 32);
    t8 = (t0 + 10680);
    *((int *)t8) = 1;
    *((char **)t1) = &&LAB196;
    goto LAB1;

LAB194:    t12 = (t0 + 10664);
    *((int *)t12) = 1;
    goto LAB1;

LAB196:    t9 = (t0 + 4936);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    if (*((int *)t11) > 0)
        goto LAB197;

LAB198:    t13 = (t0 + 7112);
    xsi_clean_active_fork_process_list(t13);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 9344);
    t4 = (t0 + 7112);
    xsi_add_process_toexecute(0, t2, t4);
    t5 = (t0 + 9592);
    t6 = (t0 + 7112);
    xsi_add_process_toexecute(0, t5, t6);
    t7 = (t0 + 5096);
    memset(t23, 0, 8);
    *((unsigned int *)t23) = 2;
    xsi_vlogvar_assign_value(t7, t23, 0, 0, 32);
    t8 = (t0 + 10696);
    *((int *)t8) = 1;
    *((char **)t1) = &&LAB199;
    goto LAB1;

LAB197:    t12 = (t0 + 10680);
    *((int *)t12) = 1;
    goto LAB1;

LAB199:    t9 = (t0 + 5096);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    if (*((int *)t11) > 0)
        goto LAB200;

LAB201:    t13 = (t0 + 7112);
    xsi_clean_active_fork_process_list(t13);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 9840);
    t4 = (t0 + 7112);
    xsi_add_process_toexecute(0, t2, t4);
    t5 = (t0 + 10088);
    t6 = (t0 + 7112);
    xsi_add_process_toexecute(0, t5, t6);
    t7 = (t0 + 5256);
    memset(t23, 0, 8);
    *((unsigned int *)t23) = 2;
    xsi_vlogvar_assign_value(t7, t23, 0, 0, 32);
    t8 = (t0 + 10712);
    *((int *)t8) = 1;
    *((char **)t1) = &&LAB202;
    goto LAB1;

LAB200:    t12 = (t0 + 10696);
    *((int *)t12) = 1;
    goto LAB1;

LAB202:    t9 = (t0 + 5256);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    if (*((int *)t11) > 0)
        goto LAB203;

LAB204:    t13 = (t0 + 7112);
    xsi_clean_active_fork_process_list(t13);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 10728);
    *((int *)t2) = 1;
    t4 = (t0 + 7336);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB205;
    goto LAB1;

LAB203:    t12 = (t0 + 10712);
    *((int *)t12) = 1;
    goto LAB1;

LAB205:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 10744);
    *((int *)t2) = 1;
    t4 = (t0 + 7336);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB206;
    goto LAB1;

LAB206:    xsi_set_current_line(105, ng0);
    xsi_vlog_stop(1);
    goto LAB1;

}

static void Forked_80_3(char *t0)
{
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    char *t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t22;

LAB0:    t1 = (t0 + 7552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 7360);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 7360);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 32);

LAB8:    t8 = (t0 + 7456);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB10:    if (t16 != 0)
        goto LAB11;

LAB6:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB7:    t17 = (t0 + 7456);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7360);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);

LAB5:    t2 = (t0 + 4456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t21, t4, 8);
    t22 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t22 - 1);
    xsi_vlogvar_assign_value(t2, t21, 0, 0, 32);
    goto LAB2;

LAB9:;
LAB11:    t8 = (t0 + 7552U);
    *((char **)t8) = &&LAB8;
    goto LAB1;

}

static void Forked_81_4(char *t0)
{
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t24;

LAB0:    t1 = (t0 + 7800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 7608);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(81, ng0);
    t3 = (t0 + 7608);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB8:    t6 = (t0 + 7704);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t14 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB10:    if (t14 != 0)
        goto LAB11;

LAB6:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB7:    t15 = (t0 + 7704);
    t16 = *((char **)t15);
    t15 = (t0 + 5896);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 7608);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t16, t0, t21, t22);

LAB5:    t2 = (t0 + 4456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t23, t4, 8);
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 - 1);
    xsi_vlogvar_assign_value(t2, t23, 0, 0, 32);
    goto LAB2;

LAB9:;
LAB11:    t6 = (t0 + 7800U);
    *((char **)t6) = &&LAB8;
    goto LAB1;

}

static void Forked_84_5(char *t0)
{
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    char *t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t22;

LAB0:    t1 = (t0 + 8048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 7856);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 7856);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 32);

LAB8:    t8 = (t0 + 7952);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB10:    if (t16 != 0)
        goto LAB11;

LAB6:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB7:    t17 = (t0 + 7952);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 7856);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);

LAB5:    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t21, t4, 8);
    t22 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t22 - 1);
    xsi_vlogvar_assign_value(t2, t21, 0, 0, 32);
    goto LAB2;

LAB9:;
LAB11:    t8 = (t0 + 8048U);
    *((char **)t8) = &&LAB8;
    goto LAB1;

}

static void Forked_85_6(char *t0)
{
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t24;

LAB0:    t1 = (t0 + 8296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 8104);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(85, ng0);
    t3 = (t0 + 8104);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB8:    t6 = (t0 + 8200);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t14 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB10:    if (t14 != 0)
        goto LAB11;

LAB6:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB7:    t15 = (t0 + 8200);
    t16 = *((char **)t15);
    t15 = (t0 + 5896);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 8104);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t16, t0, t21, t22);

LAB5:    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t23, t4, 8);
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 - 1);
    xsi_vlogvar_assign_value(t2, t23, 0, 0, 32);
    goto LAB2;

LAB9:;
LAB11:    t6 = (t0 + 8296U);
    *((char **)t6) = &&LAB8;
    goto LAB1;

}

static void Forked_88_7(char *t0)
{
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    char *t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t22;

LAB0:    t1 = (t0 + 8544U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 8352);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 8352);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 32);

LAB8:    t8 = (t0 + 8448);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB10:    if (t16 != 0)
        goto LAB11;

LAB6:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB7:    t17 = (t0 + 8448);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 8352);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);

LAB5:    t2 = (t0 + 4776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t21, t4, 8);
    t22 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t22 - 1);
    xsi_vlogvar_assign_value(t2, t21, 0, 0, 32);
    goto LAB2;

LAB9:;
LAB11:    t8 = (t0 + 8544U);
    *((char **)t8) = &&LAB8;
    goto LAB1;

}

static void Forked_89_8(char *t0)
{
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t24;

LAB0:    t1 = (t0 + 8792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 8600);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(89, ng0);
    t3 = (t0 + 8600);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB8:    t6 = (t0 + 8696);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t14 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB10:    if (t14 != 0)
        goto LAB11;

LAB6:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB7:    t15 = (t0 + 8696);
    t16 = *((char **)t15);
    t15 = (t0 + 5896);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 8600);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t16, t0, t21, t22);

LAB5:    t2 = (t0 + 4776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t23, t4, 8);
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 - 1);
    xsi_vlogvar_assign_value(t2, t23, 0, 0, 32);
    goto LAB2;

LAB9:;
LAB11:    t6 = (t0 + 8792U);
    *((char **)t6) = &&LAB8;
    goto LAB1;

}

static void Forked_92_9(char *t0)
{
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    char *t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t22;

LAB0:    t1 = (t0 + 9040U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 8848);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 8848);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 32);

LAB8:    t8 = (t0 + 8944);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB10:    if (t16 != 0)
        goto LAB11;

LAB6:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB7:    t17 = (t0 + 8944);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 8848);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);

LAB5:    t2 = (t0 + 4936);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t21, t4, 8);
    t22 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t22 - 1);
    xsi_vlogvar_assign_value(t2, t21, 0, 0, 32);
    goto LAB2;

LAB9:;
LAB11:    t8 = (t0 + 9040U);
    *((char **)t8) = &&LAB8;
    goto LAB1;

}

static void Forked_93_10(char *t0)
{
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t24;

LAB0:    t1 = (t0 + 9288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 9096);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(93, ng0);
    t3 = (t0 + 9096);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB8:    t6 = (t0 + 9192);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t14 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB10:    if (t14 != 0)
        goto LAB11;

LAB6:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB7:    t15 = (t0 + 9192);
    t16 = *((char **)t15);
    t15 = (t0 + 5896);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 9096);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t16, t0, t21, t22);

LAB5:    t2 = (t0 + 4936);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t23, t4, 8);
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 - 1);
    xsi_vlogvar_assign_value(t2, t23, 0, 0, 32);
    goto LAB2;

LAB9:;
LAB11:    t6 = (t0 + 9288U);
    *((char **)t6) = &&LAB8;
    goto LAB1;

}

static void Forked_96_11(char *t0)
{
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    char *t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t22;

LAB0:    t1 = (t0 + 9536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 9344);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(96, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 9344);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 32);

LAB8:    t8 = (t0 + 9440);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB10:    if (t16 != 0)
        goto LAB11;

LAB6:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB7:    t17 = (t0 + 9440);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 9344);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);

LAB5:    t2 = (t0 + 5096);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t21, t4, 8);
    t22 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t22 - 1);
    xsi_vlogvar_assign_value(t2, t21, 0, 0, 32);
    goto LAB2;

LAB9:;
LAB11:    t8 = (t0 + 9536U);
    *((char **)t8) = &&LAB8;
    goto LAB1;

}

static void Forked_97_12(char *t0)
{
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t24;

LAB0:    t1 = (t0 + 9784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 9592);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(97, ng0);
    t3 = (t0 + 9592);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB8:    t6 = (t0 + 9688);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t14 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB10:    if (t14 != 0)
        goto LAB11;

LAB6:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB7:    t15 = (t0 + 9688);
    t16 = *((char **)t15);
    t15 = (t0 + 5896);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 9592);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t16, t0, t21, t22);

LAB5:    t2 = (t0 + 5096);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t23, t4, 8);
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 - 1);
    xsi_vlogvar_assign_value(t2, t23, 0, 0, 32);
    goto LAB2;

LAB9:;
LAB11:    t6 = (t0 + 9784U);
    *((char **)t6) = &&LAB8;
    goto LAB1;

}

static void Forked_100_13(char *t0)
{
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    char *t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t22;

LAB0:    t1 = (t0 + 10032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 9840);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(100, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 9840);
    t5 = (t0 + 1552);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 5736);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 32);

LAB8:    t8 = (t0 + 9936);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB10:    if (t16 != 0)
        goto LAB11;

LAB6:    t9 = (t0 + 1552);
    xsi_vlog_subprogram_popinvocation(t9);

LAB7:    t17 = (t0 + 9936);
    t18 = *((char **)t17);
    t17 = (t0 + 1552);
    t19 = (t0 + 9840);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);

LAB5:    t2 = (t0 + 5256);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t21, t4, 8);
    t22 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t22 - 1);
    xsi_vlogvar_assign_value(t2, t21, 0, 0, 32);
    goto LAB2;

LAB9:;
LAB11:    t8 = (t0 + 10032U);
    *((char **)t8) = &&LAB8;
    goto LAB1;

}

static void Forked_101_14(char *t0)
{
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t24;

LAB0:    t1 = (t0 + 10280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 10088);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(101, ng0);
    t3 = (t0 + 10088);
    t4 = (t0 + 1984);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);

LAB8:    t6 = (t0 + 10184);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t11 = *((char **)t10);
    t12 = (t11 + 0U);
    t13 = *((char **)t12);
    t14 = ((int  (*)(char *, char *))t13)(t0, t7);

LAB10:    if (t14 != 0)
        goto LAB11;

LAB6:    t7 = (t0 + 1984);
    xsi_vlog_subprogram_popinvocation(t7);

LAB7:    t15 = (t0 + 10184);
    t16 = *((char **)t15);
    t15 = (t0 + 5896);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4296);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    t20 = (t0 + 1984);
    t21 = (t0 + 10088);
    t22 = 0;
    xsi_delete_subprogram_invocation(t20, t16, t0, t21, t22);

LAB5:    t2 = (t0 + 5256);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t23, t4, 8);
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 - 1);
    xsi_vlogvar_assign_value(t2, t23, 0, 0, 32);
    goto LAB2;

LAB9:;
LAB11:    t6 = (t0 + 10280U);
    *((char **)t6) = &&LAB8;
    goto LAB1;

}


extern void work_m_04903268616697338318_1080955904_init()
{
	static char *pe[] = {(void *)Initial_26_0,(void *)Always_38_1,(void *)Initial_42_2,(void *)Forked_80_3,(void *)Forked_81_4,(void *)Forked_84_5,(void *)Forked_85_6,(void *)Forked_88_7,(void *)Forked_89_8,(void *)Forked_92_9,(void *)Forked_93_10,(void *)Forked_96_11,(void *)Forked_97_12,(void *)Forked_100_13,(void *)Forked_101_14};
	static char *se[] = {(void *)sp_clog2,(void *)sp_push,(void *)sp_pop};
	xsi_register_didat("work_m_04903268616697338318_1080955904", "isim/testFifoSynch_isim_beh.exe.sim/work/m_04903268616697338318_1080955904.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
