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
static const char *ng0 = "/parane4/fifoSynch.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static const char *ng3 = "Popping value: %d at %t";
static const char *ng4 = "Pushing value: %d at %t";



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
    xsi_set_current_line(101, ng0);

LAB2:    xsi_set_current_line(102, ng0);
    t3 = (t1 + 4072);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_minus(t7, 32, t5, 32, t6, 32);
    t8 = (t1 + 4072);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    xsi_set_current_line(103, ng0);
    xsi_set_current_line(103, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t1 + 3912);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);

LAB3:    t3 = (t1 + 4072);
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
LAB4:    xsi_set_current_line(104, ng0);
    t14 = (t1 + 4072);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng1)));
    memset(t18, 0, 8);
    xsi_vlog_signed_rshift(t18, 32, t16, 32, t17, 32);
    t19 = (t1 + 4072);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    xsi_set_current_line(103, ng0);
    t3 = (t1 + 3912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = (t1 + 3912);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB3;

}

static void Cont_24_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 4984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 3272);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    t22 = (t0 + 6704);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 1U;
    t28 = t27;
    t29 = (t6 + 4);
    t30 = *((unsigned int *)t6);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t22, 0, 0);
    t35 = (t0 + 6544);
    *((int *)t35) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

}

static void Cont_25_1(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 5232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 3272);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 608);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t4 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t7) = 1;

LAB7:    t22 = (t0 + 6768);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 1U;
    t28 = t27;
    t29 = (t7 + 4);
    t30 = *((unsigned int *)t7);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t22, 0, 0);
    t35 = (t0 + 6560);
    *((int *)t35) = 1;

LAB1:    return;
LAB6:    t21 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

}

static void Always_29_2(char *t0)
{
    char t4[8];
    char t31[8];
    char t32[8];
    char t33[8];
    char t64[8];
    char t76[8];
    char t85[8];
    char t99[8];
    char t106[8];
    char t138[8];
    char t146[8];
    char *t1;
    char *t2;
    char *t3;
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    int t56;
    int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    int t130;
    int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    char *t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    char *t150;
    char *t151;
    char *t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    char *t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    int t170;
    int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    char *t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    char *t184;
    char *t185;
    char *t186;
    char *t187;

LAB0:    t1 = (t0 + 5480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 6576);
    *((int *)t2) = 1;
    t3 = (t0 + 5512);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t5 = (t0 + 1752U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2712U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB18;

LAB16:    if (*((unsigned int *)t2) == 0)
        goto LAB15;

LAB17:    t5 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t5) = 1;

LAB18:    memset(t31, 0, 8);
    t6 = (t4 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t6) != 0)
        goto LAB21;

LAB22:    t13 = (t31 + 4);
    t20 = *((unsigned int *)t31);
    t21 = *((unsigned int *)t13);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB23;

LAB24:    memcpy(t33, t31, 8);

LAB25:    memset(t64, 0, 8);
    t65 = (t33 + 4);
    t66 = *((unsigned int *)t65);
    t67 = (~(t66));
    t68 = *((unsigned int *)t33);
    t69 = (t68 & t67);
    t70 = (t69 & 1U);
    if (t70 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t65) != 0)
        goto LAB35;

LAB36:    t72 = (t64 + 4);
    t73 = *((unsigned int *)t64);
    t74 = *((unsigned int *)t72);
    t75 = (t73 || t74);
    if (t75 > 0)
        goto LAB37;

LAB38:    memcpy(t146, t64, 8);

LAB39:    t178 = (t146 + 4);
    t179 = *((unsigned int *)t178);
    t180 = (~(t179));
    t181 = *((unsigned int *)t146);
    t182 = (t181 & t180);
    t183 = (t182 != 0);
    if (t183 > 0)
        goto LAB65;

LAB66:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2712U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB71;

LAB69:    if (*((unsigned int *)t2) == 0)
        goto LAB68;

LAB70:    t5 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t5) = 1;

LAB71:    memset(t31, 0, 8);
    t6 = (t4 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB72;

LAB73:    if (*((unsigned int *)t6) != 0)
        goto LAB74;

LAB75:    t13 = (t31 + 4);
    t20 = *((unsigned int *)t31);
    t21 = *((unsigned int *)t13);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB76;

LAB77:    memcpy(t33, t31, 8);

LAB78:    t65 = (t33 + 4);
    t66 = *((unsigned int *)t65);
    t67 = (~(t66));
    t68 = *((unsigned int *)t33);
    t69 = (t68 & t67);
    t70 = (t69 != 0);
    if (t70 > 0)
        goto LAB86;

LAB87:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2552U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB92;

LAB90:    if (*((unsigned int *)t2) == 0)
        goto LAB89;

LAB91:    t5 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t5) = 1;

LAB92:    memset(t31, 0, 8);
    t6 = (t4 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB93;

LAB94:    if (*((unsigned int *)t6) != 0)
        goto LAB95;

LAB96:    t13 = (t31 + 4);
    t20 = *((unsigned int *)t31);
    t21 = *((unsigned int *)t13);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB97;

LAB98:    memcpy(t33, t31, 8);

LAB99:    t65 = (t33 + 4);
    t66 = *((unsigned int *)t65);
    t67 = (~(t66));
    t68 = *((unsigned int *)t33);
    t69 = (t68 & t67);
    t70 = (t69 != 0);
    if (t70 > 0)
        goto LAB107;

LAB108:
LAB109:
LAB88:
LAB67:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(32, ng0);
    t29 = ((char*)((ng2)));
    t30 = (t0 + 3272);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 4, 0LL);
    goto LAB14;

LAB15:    *((unsigned int *)t4) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t31) = 1;
    goto LAB22;

LAB21:    t12 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB22;

LAB23:    t14 = (t0 + 2232U);
    t23 = *((char **)t14);
    memset(t32, 0, 8);
    t14 = (t23 + 4);
    t24 = *((unsigned int *)t14);
    t25 = (~(t24));
    t26 = *((unsigned int *)t23);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t14) != 0)
        goto LAB28;

LAB29:    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 & t35);
    *((unsigned int *)t33) = t36;
    t30 = (t31 + 4);
    t37 = (t32 + 4);
    t38 = (t33 + 4);
    t39 = *((unsigned int *)t30);
    t40 = *((unsigned int *)t37);
    t41 = (t39 | t40);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 != 0);
    if (t43 == 1)
        goto LAB30;

LAB31:
LAB32:    goto LAB25;

LAB26:    *((unsigned int *)t32) = 1;
    goto LAB29;

LAB28:    t29 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB29;

LAB30:    t44 = *((unsigned int *)t33);
    t45 = *((unsigned int *)t38);
    *((unsigned int *)t33) = (t44 | t45);
    t46 = (t31 + 4);
    t47 = (t32 + 4);
    t48 = *((unsigned int *)t31);
    t49 = (~(t48));
    t50 = *((unsigned int *)t46);
    t51 = (~(t50));
    t52 = *((unsigned int *)t32);
    t53 = (~(t52));
    t54 = *((unsigned int *)t47);
    t55 = (~(t54));
    t56 = (t49 & t51);
    t57 = (t53 & t55);
    t58 = (~(t56));
    t59 = (~(t57));
    t60 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t60 & t58);
    t61 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t61 & t59);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t58);
    t63 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t63 & t59);
    goto LAB32;

LAB33:    *((unsigned int *)t64) = 1;
    goto LAB36;

LAB35:    t71 = (t64 + 4);
    *((unsigned int *)t64) = 1;
    *((unsigned int *)t71) = 1;
    goto LAB36;

LAB37:    t77 = (t0 + 2552U);
    t78 = *((char **)t77);
    memset(t76, 0, 8);
    t77 = (t78 + 4);
    t79 = *((unsigned int *)t77);
    t80 = (~(t79));
    t81 = *((unsigned int *)t78);
    t82 = (t81 & t80);
    t83 = (t82 & 1U);
    if (t83 != 0)
        goto LAB43;

LAB41:    if (*((unsigned int *)t77) == 0)
        goto LAB40;

LAB42:    t84 = (t76 + 4);
    *((unsigned int *)t76) = 1;
    *((unsigned int *)t84) = 1;

LAB43:    memset(t85, 0, 8);
    t86 = (t76 + 4);
    t87 = *((unsigned int *)t86);
    t88 = (~(t87));
    t89 = *((unsigned int *)t76);
    t90 = (t89 & t88);
    t91 = (t90 & 1U);
    if (t91 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t86) != 0)
        goto LAB46;

LAB47:    t93 = (t85 + 4);
    t94 = *((unsigned int *)t85);
    t95 = *((unsigned int *)t93);
    t96 = (t94 || t95);
    if (t96 > 0)
        goto LAB48;

LAB49:    memcpy(t106, t85, 8);

LAB50:    memset(t138, 0, 8);
    t139 = (t106 + 4);
    t140 = *((unsigned int *)t139);
    t141 = (~(t140));
    t142 = *((unsigned int *)t106);
    t143 = (t142 & t141);
    t144 = (t143 & 1U);
    if (t144 != 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t139) != 0)
        goto LAB60;

LAB61:    t147 = *((unsigned int *)t64);
    t148 = *((unsigned int *)t138);
    t149 = (t147 & t148);
    *((unsigned int *)t146) = t149;
    t150 = (t64 + 4);
    t151 = (t138 + 4);
    t152 = (t146 + 4);
    t153 = *((unsigned int *)t150);
    t154 = *((unsigned int *)t151);
    t155 = (t153 | t154);
    *((unsigned int *)t152) = t155;
    t156 = *((unsigned int *)t152);
    t157 = (t156 != 0);
    if (t157 == 1)
        goto LAB62;

LAB63:
LAB64:    goto LAB39;

LAB40:    *((unsigned int *)t76) = 1;
    goto LAB43;

LAB44:    *((unsigned int *)t85) = 1;
    goto LAB47;

LAB46:    t92 = (t85 + 4);
    *((unsigned int *)t85) = 1;
    *((unsigned int *)t92) = 1;
    goto LAB47;

LAB48:    t97 = (t0 + 2072U);
    t98 = *((char **)t97);
    memset(t99, 0, 8);
    t97 = (t98 + 4);
    t100 = *((unsigned int *)t97);
    t101 = (~(t100));
    t102 = *((unsigned int *)t98);
    t103 = (t102 & t101);
    t104 = (t103 & 1U);
    if (t104 != 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t97) != 0)
        goto LAB53;

LAB54:    t107 = *((unsigned int *)t85);
    t108 = *((unsigned int *)t99);
    t109 = (t107 & t108);
    *((unsigned int *)t106) = t109;
    t110 = (t85 + 4);
    t111 = (t99 + 4);
    t112 = (t106 + 4);
    t113 = *((unsigned int *)t110);
    t114 = *((unsigned int *)t111);
    t115 = (t113 | t114);
    *((unsigned int *)t112) = t115;
    t116 = *((unsigned int *)t112);
    t117 = (t116 != 0);
    if (t117 == 1)
        goto LAB55;

LAB56:
LAB57:    goto LAB50;

LAB51:    *((unsigned int *)t99) = 1;
    goto LAB54;

LAB53:    t105 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t105) = 1;
    goto LAB54;

LAB55:    t118 = *((unsigned int *)t106);
    t119 = *((unsigned int *)t112);
    *((unsigned int *)t106) = (t118 | t119);
    t120 = (t85 + 4);
    t121 = (t99 + 4);
    t122 = *((unsigned int *)t85);
    t123 = (~(t122));
    t124 = *((unsigned int *)t120);
    t125 = (~(t124));
    t126 = *((unsigned int *)t99);
    t127 = (~(t126));
    t128 = *((unsigned int *)t121);
    t129 = (~(t128));
    t130 = (t123 & t125);
    t131 = (t127 & t129);
    t132 = (~(t130));
    t133 = (~(t131));
    t134 = *((unsigned int *)t112);
    *((unsigned int *)t112) = (t134 & t132);
    t135 = *((unsigned int *)t112);
    *((unsigned int *)t112) = (t135 & t133);
    t136 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t136 & t132);
    t137 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t137 & t133);
    goto LAB57;

LAB58:    *((unsigned int *)t138) = 1;
    goto LAB61;

LAB60:    t145 = (t138 + 4);
    *((unsigned int *)t138) = 1;
    *((unsigned int *)t145) = 1;
    goto LAB61;

LAB62:    t158 = *((unsigned int *)t146);
    t159 = *((unsigned int *)t152);
    *((unsigned int *)t146) = (t158 | t159);
    t160 = (t64 + 4);
    t161 = (t138 + 4);
    t162 = *((unsigned int *)t64);
    t163 = (~(t162));
    t164 = *((unsigned int *)t160);
    t165 = (~(t164));
    t166 = *((unsigned int *)t138);
    t167 = (~(t166));
    t168 = *((unsigned int *)t161);
    t169 = (~(t168));
    t170 = (t163 & t165);
    t171 = (t167 & t169);
    t172 = (~(t170));
    t173 = (~(t171));
    t174 = *((unsigned int *)t152);
    *((unsigned int *)t152) = (t174 & t172);
    t175 = *((unsigned int *)t152);
    *((unsigned int *)t152) = (t175 & t173);
    t176 = *((unsigned int *)t146);
    *((unsigned int *)t146) = (t176 & t172);
    t177 = *((unsigned int *)t146);
    *((unsigned int *)t146) = (t177 & t173);
    goto LAB64;

LAB65:    xsi_set_current_line(34, ng0);
    t184 = (t0 + 3272);
    t185 = (t184 + 56U);
    t186 = *((char **)t185);
    t187 = (t0 + 3272);
    xsi_vlogvar_wait_assign_value(t187, t186, 0, 0, 4, 0LL);
    goto LAB67;

LAB68:    *((unsigned int *)t4) = 1;
    goto LAB71;

LAB72:    *((unsigned int *)t31) = 1;
    goto LAB75;

LAB74:    t12 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB75;

LAB76:    t14 = (t0 + 2232U);
    t23 = *((char **)t14);
    memset(t32, 0, 8);
    t14 = (t23 + 4);
    t24 = *((unsigned int *)t14);
    t25 = (~(t24));
    t26 = *((unsigned int *)t23);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t14) != 0)
        goto LAB81;

LAB82:    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 & t35);
    *((unsigned int *)t33) = t36;
    t30 = (t31 + 4);
    t37 = (t32 + 4);
    t38 = (t33 + 4);
    t39 = *((unsigned int *)t30);
    t40 = *((unsigned int *)t37);
    t41 = (t39 | t40);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 != 0);
    if (t43 == 1)
        goto LAB83;

LAB84:
LAB85:    goto LAB78;

LAB79:    *((unsigned int *)t32) = 1;
    goto LAB82;

LAB81:    t29 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB82;

LAB83:    t44 = *((unsigned int *)t33);
    t45 = *((unsigned int *)t38);
    *((unsigned int *)t33) = (t44 | t45);
    t46 = (t31 + 4);
    t47 = (t32 + 4);
    t48 = *((unsigned int *)t31);
    t49 = (~(t48));
    t50 = *((unsigned int *)t46);
    t51 = (~(t50));
    t52 = *((unsigned int *)t32);
    t53 = (~(t52));
    t54 = *((unsigned int *)t47);
    t55 = (~(t54));
    t56 = (t49 & t51);
    t57 = (t53 & t55);
    t58 = (~(t56));
    t59 = (~(t57));
    t60 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t60 & t58);
    t61 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t61 & t59);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t58);
    t63 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t63 & t59);
    goto LAB85;

LAB86:    xsi_set_current_line(36, ng0);
    t71 = (t0 + 3272);
    t72 = (t71 + 56U);
    t77 = *((char **)t72);
    t78 = ((char*)((ng1)));
    memset(t64, 0, 8);
    xsi_vlog_unsigned_add(t64, 32, t77, 4, t78, 32);
    t84 = (t0 + 3272);
    xsi_vlogvar_wait_assign_value(t84, t64, 0, 0, 4, 0LL);
    goto LAB88;

LAB89:    *((unsigned int *)t4) = 1;
    goto LAB92;

LAB93:    *((unsigned int *)t31) = 1;
    goto LAB96;

LAB95:    t12 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB96;

LAB97:    t14 = (t0 + 2072U);
    t23 = *((char **)t14);
    memset(t32, 0, 8);
    t14 = (t23 + 4);
    t24 = *((unsigned int *)t14);
    t25 = (~(t24));
    t26 = *((unsigned int *)t23);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB100;

LAB101:    if (*((unsigned int *)t14) != 0)
        goto LAB102;

LAB103:    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 & t35);
    *((unsigned int *)t33) = t36;
    t30 = (t31 + 4);
    t37 = (t32 + 4);
    t38 = (t33 + 4);
    t39 = *((unsigned int *)t30);
    t40 = *((unsigned int *)t37);
    t41 = (t39 | t40);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 != 0);
    if (t43 == 1)
        goto LAB104;

LAB105:
LAB106:    goto LAB99;

LAB100:    *((unsigned int *)t32) = 1;
    goto LAB103;

LAB102:    t29 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB103;

LAB104:    t44 = *((unsigned int *)t33);
    t45 = *((unsigned int *)t38);
    *((unsigned int *)t33) = (t44 | t45);
    t46 = (t31 + 4);
    t47 = (t32 + 4);
    t48 = *((unsigned int *)t31);
    t49 = (~(t48));
    t50 = *((unsigned int *)t46);
    t51 = (~(t50));
    t52 = *((unsigned int *)t32);
    t53 = (~(t52));
    t54 = *((unsigned int *)t47);
    t55 = (~(t54));
    t56 = (t49 & t51);
    t57 = (t53 & t55);
    t58 = (~(t56));
    t59 = (~(t57));
    t60 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t60 & t58);
    t61 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t61 & t59);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t58);
    t63 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t63 & t59);
    goto LAB106;

LAB107:    xsi_set_current_line(38, ng0);
    t71 = (t0 + 3272);
    t72 = (t71 + 56U);
    t77 = *((char **)t72);
    t78 = ((char*)((ng1)));
    memset(t64, 0, 8);
    xsi_vlog_unsigned_minus(t64, 32, t77, 4, t78, 32);
    t84 = (t0 + 3272);
    xsi_vlogvar_wait_assign_value(t84, t64, 0, 0, 4, 0LL);
    goto LAB109;

}

static void Always_42_3(char *t0)
{
    char t4[8];
    char t31[8];
    char t32[8];
    char t33[8];
    char t73[8];
    char t84[16];
    char *t1;
    char *t2;
    char *t3;
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    int t56;
    int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t72;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;

LAB0:    t1 = (t0 + 5728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 6592);
    *((int *)t2) = 1;
    t3 = (t0 + 5760);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t5 = (t0 + 1752U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(47, ng0);

LAB15:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2552U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB19;

LAB17:    if (*((unsigned int *)t2) == 0)
        goto LAB16;

LAB18:    t5 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t5) = 1;

LAB19:    memset(t31, 0, 8);
    t6 = (t4 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t6) != 0)
        goto LAB22;

LAB23:    t13 = (t31 + 4);
    t20 = *((unsigned int *)t31);
    t21 = *((unsigned int *)t13);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB24;

LAB25:    memcpy(t33, t31, 8);

LAB26:    t64 = (t33 + 4);
    t65 = *((unsigned int *)t64);
    t66 = (~(t65));
    t67 = *((unsigned int *)t33);
    t68 = (t67 & t66);
    t69 = (t68 != 0);
    if (t69 > 0)
        goto LAB34;

LAB35:
LAB36:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(45, ng0);
    t29 = ((char*)((ng2)));
    t30 = (t0 + 3112);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 32, 0LL);
    goto LAB14;

LAB16:    *((unsigned int *)t4) = 1;
    goto LAB19;

LAB20:    *((unsigned int *)t31) = 1;
    goto LAB23;

LAB22:    t12 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB23;

LAB24:    t14 = (t0 + 2072U);
    t23 = *((char **)t14);
    memset(t32, 0, 8);
    t14 = (t23 + 4);
    t24 = *((unsigned int *)t14);
    t25 = (~(t24));
    t26 = *((unsigned int *)t23);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t14) != 0)
        goto LAB29;

LAB30:    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 & t35);
    *((unsigned int *)t33) = t36;
    t30 = (t31 + 4);
    t37 = (t32 + 4);
    t38 = (t33 + 4);
    t39 = *((unsigned int *)t30);
    t40 = *((unsigned int *)t37);
    t41 = (t39 | t40);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 != 0);
    if (t43 == 1)
        goto LAB31;

LAB32:
LAB33:    goto LAB26;

LAB27:    *((unsigned int *)t32) = 1;
    goto LAB30;

LAB29:    t29 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB30;

LAB31:    t44 = *((unsigned int *)t33);
    t45 = *((unsigned int *)t38);
    *((unsigned int *)t33) = (t44 | t45);
    t46 = (t31 + 4);
    t47 = (t32 + 4);
    t48 = *((unsigned int *)t31);
    t49 = (~(t48));
    t50 = *((unsigned int *)t46);
    t51 = (~(t50));
    t52 = *((unsigned int *)t32);
    t53 = (~(t52));
    t54 = *((unsigned int *)t47);
    t55 = (~(t54));
    t56 = (t49 & t51);
    t57 = (t53 & t55);
    t58 = (~(t56));
    t59 = (~(t57));
    t60 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t60 & t58);
    t61 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t61 & t59);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t58);
    t63 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t63 & t59);
    goto LAB33;

LAB34:    xsi_set_current_line(50, ng0);

LAB37:    xsi_set_current_line(51, ng0);
    t70 = (t0 + 3752);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    t74 = (t0 + 3752);
    t75 = (t74 + 72U);
    t76 = *((char **)t75);
    t77 = (t0 + 3752);
    t78 = (t77 + 64U);
    t79 = *((char **)t78);
    t80 = (t0 + 3432);
    t81 = (t80 + 56U);
    t82 = *((char **)t81);
    xsi_vlog_generic_get_array_select_value(t73, 32, t72, t76, t79, 2, 1, t82, 3, 2);
    t83 = (t0 + 3112);
    xsi_vlogvar_wait_assign_value(t83, t73, 0, 0, 32, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3752);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3752);
    t12 = (t6 + 72U);
    t13 = *((char **)t12);
    t14 = (t0 + 3752);
    t23 = (t14 + 64U);
    t29 = *((char **)t23);
    t30 = (t0 + 3432);
    t37 = (t30 + 56U);
    t38 = *((char **)t37);
    xsi_vlog_generic_get_array_select_value(t4, 32, t5, t13, t29, 2, 1, t38, 3, 2);
    t46 = xsi_vlog_time(t84, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t0, (char)118, t4, 32, (char)118, t84, 64);
    goto LAB36;

}

static void Always_62_4(char *t0)
{
    char t4[8];
    char t13[8];
    char t27[8];
    char t34[8];
    char t74[8];
    char t75[8];
    char t96[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    unsigned int t86;
    int t87;
    char *t88;
    unsigned int t89;
    int t90;
    int t91;
    unsigned int t92;
    unsigned int t93;
    int t94;
    int t95;

LAB0:    t1 = (t0 + 5976U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 6608);
    *((int *)t2) = 1;
    t3 = (t0 + 6008);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(63, ng0);

LAB5:    xsi_set_current_line(64, ng0);
    t5 = (t0 + 2712U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    memset(t13, 0, 8);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t14) != 0)
        goto LAB12;

LAB13:    t21 = (t13 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t21);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB14;

LAB15:    memcpy(t34, t13, 8);

LAB16:    t66 = (t34 + 4);
    t67 = *((unsigned int *)t66);
    t68 = (~(t67));
    t69 = *((unsigned int *)t34);
    t70 = (t69 & t68);
    t71 = (t70 != 0);
    if (t71 > 0)
        goto LAB24;

LAB25:
LAB26:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t13) = 1;
    goto LAB13;

LAB12:    t20 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB13;

LAB14:    t25 = (t0 + 2232U);
    t26 = *((char **)t25);
    memset(t27, 0, 8);
    t25 = (t26 + 4);
    t28 = *((unsigned int *)t25);
    t29 = (~(t28));
    t30 = *((unsigned int *)t26);
    t31 = (t30 & t29);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t25) != 0)
        goto LAB19;

LAB20:    t35 = *((unsigned int *)t13);
    t36 = *((unsigned int *)t27);
    t37 = (t35 & t36);
    *((unsigned int *)t34) = t37;
    t38 = (t13 + 4);
    t39 = (t27 + 4);
    t40 = (t34 + 4);
    t41 = *((unsigned int *)t38);
    t42 = *((unsigned int *)t39);
    t43 = (t41 | t42);
    *((unsigned int *)t40) = t43;
    t44 = *((unsigned int *)t40);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB16;

LAB17:    *((unsigned int *)t27) = 1;
    goto LAB20;

LAB19:    t33 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB20;

LAB21:    t46 = *((unsigned int *)t34);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t34) = (t46 | t47);
    t48 = (t13 + 4);
    t49 = (t27 + 4);
    t50 = *((unsigned int *)t13);
    t51 = (~(t50));
    t52 = *((unsigned int *)t48);
    t53 = (~(t52));
    t54 = *((unsigned int *)t27);
    t55 = (~(t54));
    t56 = *((unsigned int *)t49);
    t57 = (~(t56));
    t58 = (t51 & t53);
    t59 = (t55 & t57);
    t60 = (~(t58));
    t61 = (~(t59));
    t62 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t62 & t60);
    t63 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t63 & t61);
    t64 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t64 & t60);
    t65 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t65 & t61);
    goto LAB23;

LAB24:    xsi_set_current_line(65, ng0);

LAB27:    xsi_set_current_line(66, ng0);
    t72 = (t0 + 2392U);
    t73 = *((char **)t72);
    t72 = (t0 + 3752);
    t76 = (t0 + 3752);
    t77 = (t76 + 72U);
    t78 = *((char **)t77);
    t79 = (t0 + 3752);
    t80 = (t79 + 64U);
    t81 = *((char **)t80);
    t82 = (t0 + 3592);
    t83 = (t82 + 56U);
    t84 = *((char **)t83);
    xsi_vlog_generic_convert_array_indices(t74, t75, t78, t81, 2, 1, t84, 3, 2);
    t85 = (t74 + 4);
    t86 = *((unsigned int *)t85);
    t87 = (!(t86));
    t88 = (t75 + 4);
    t89 = *((unsigned int *)t88);
    t90 = (!(t89));
    t91 = (t87 && t90);
    if (t91 == 1)
        goto LAB28;

LAB29:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2392U);
    t3 = *((char **)t2);
    t2 = xsi_vlog_time(t96, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t3, 32, (char)118, t96, 64);
    goto LAB26;

LAB28:    t92 = *((unsigned int *)t74);
    t93 = *((unsigned int *)t75);
    t94 = (t92 - t93);
    t95 = (t94 + 1);
    xsi_vlogvar_wait_assign_value(t72, t73, 0, *((unsigned int *)t75), t95, 0LL);
    goto LAB29;

}

static void Always_74_5(char *t0)
{
    char t4[8];
    char t31[8];
    char t32[8];
    char t33[8];
    char t74[8];
    char *t1;
    char *t2;
    char *t3;
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    int t56;
    int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t75;

LAB0:    t1 = (t0 + 6224U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6624);
    *((int *)t2) = 1;
    t3 = (t0 + 6256);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(75, ng0);

LAB5:    xsi_set_current_line(76, ng0);
    t5 = (t0 + 1752U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(83, ng0);

LAB16:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2712U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB20;

LAB18:    if (*((unsigned int *)t2) == 0)
        goto LAB17;

LAB19:    t5 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t5) = 1;

LAB20:    memset(t31, 0, 8);
    t6 = (t4 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t6) != 0)
        goto LAB23;

LAB24:    t13 = (t31 + 4);
    t20 = *((unsigned int *)t31);
    t21 = *((unsigned int *)t13);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB25;

LAB26:    memcpy(t33, t31, 8);

LAB27:    t64 = (t33 + 4);
    t65 = *((unsigned int *)t64);
    t66 = (~(t65));
    t67 = *((unsigned int *)t33);
    t68 = (t67 & t66);
    t69 = (t68 != 0);
    if (t69 > 0)
        goto LAB35;

LAB36:
LAB37:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2552U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB41;

LAB39:    if (*((unsigned int *)t2) == 0)
        goto LAB38;

LAB40:    t5 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t5) = 1;

LAB41:    memset(t31, 0, 8);
    t6 = (t4 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t6) != 0)
        goto LAB44;

LAB45:    t13 = (t31 + 4);
    t20 = *((unsigned int *)t31);
    t21 = *((unsigned int *)t13);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB46;

LAB47:    memcpy(t33, t31, 8);

LAB48:    t64 = (t33 + 4);
    t65 = *((unsigned int *)t64);
    t66 = (~(t65));
    t67 = *((unsigned int *)t33);
    t68 = (t67 & t66);
    t69 = (t68 != 0);
    if (t69 > 0)
        goto LAB56;

LAB57:
LAB58:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(77, ng0);

LAB15:    xsi_set_current_line(79, ng0);
    t29 = ((char*)((ng2)));
    t30 = (t0 + 3592);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 3, 0LL);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3432);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB14;

LAB17:    *((unsigned int *)t4) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t31) = 1;
    goto LAB24;

LAB23:    t12 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB24;

LAB25:    t14 = (t0 + 2232U);
    t23 = *((char **)t14);
    memset(t32, 0, 8);
    t14 = (t23 + 4);
    t24 = *((unsigned int *)t14);
    t25 = (~(t24));
    t26 = *((unsigned int *)t23);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t14) != 0)
        goto LAB30;

LAB31:    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 & t35);
    *((unsigned int *)t33) = t36;
    t30 = (t31 + 4);
    t37 = (t32 + 4);
    t38 = (t33 + 4);
    t39 = *((unsigned int *)t30);
    t40 = *((unsigned int *)t37);
    t41 = (t39 | t40);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 != 0);
    if (t43 == 1)
        goto LAB32;

LAB33:
LAB34:    goto LAB27;

LAB28:    *((unsigned int *)t32) = 1;
    goto LAB31;

LAB30:    t29 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB31;

LAB32:    t44 = *((unsigned int *)t33);
    t45 = *((unsigned int *)t38);
    *((unsigned int *)t33) = (t44 | t45);
    t46 = (t31 + 4);
    t47 = (t32 + 4);
    t48 = *((unsigned int *)t31);
    t49 = (~(t48));
    t50 = *((unsigned int *)t46);
    t51 = (~(t50));
    t52 = *((unsigned int *)t32);
    t53 = (~(t52));
    t54 = *((unsigned int *)t47);
    t55 = (~(t54));
    t56 = (t49 & t51);
    t57 = (t53 & t55);
    t58 = (~(t56));
    t59 = (~(t57));
    t60 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t60 & t58);
    t61 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t61 & t59);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t58);
    t63 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t63 & t59);
    goto LAB34;

LAB35:    xsi_set_current_line(86, ng0);
    t70 = (t0 + 3592);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    t73 = ((char*)((ng1)));
    memset(t74, 0, 8);
    xsi_vlog_unsigned_add(t74, 32, t72, 3, t73, 32);
    t75 = (t0 + 3592);
    xsi_vlogvar_wait_assign_value(t75, t74, 0, 0, 3, 0LL);
    goto LAB37;

LAB38:    *((unsigned int *)t4) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t31) = 1;
    goto LAB45;

LAB44:    t12 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB45;

LAB46:    t14 = (t0 + 2072U);
    t23 = *((char **)t14);
    memset(t32, 0, 8);
    t14 = (t23 + 4);
    t24 = *((unsigned int *)t14);
    t25 = (~(t24));
    t26 = *((unsigned int *)t23);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t14) != 0)
        goto LAB51;

LAB52:    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 & t35);
    *((unsigned int *)t33) = t36;
    t30 = (t31 + 4);
    t37 = (t32 + 4);
    t38 = (t33 + 4);
    t39 = *((unsigned int *)t30);
    t40 = *((unsigned int *)t37);
    t41 = (t39 | t40);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 != 0);
    if (t43 == 1)
        goto LAB53;

LAB54:
LAB55:    goto LAB48;

LAB49:    *((unsigned int *)t32) = 1;
    goto LAB52;

LAB51:    t29 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB52;

LAB53:    t44 = *((unsigned int *)t33);
    t45 = *((unsigned int *)t38);
    *((unsigned int *)t33) = (t44 | t45);
    t46 = (t31 + 4);
    t47 = (t32 + 4);
    t48 = *((unsigned int *)t31);
    t49 = (~(t48));
    t50 = *((unsigned int *)t46);
    t51 = (~(t50));
    t52 = *((unsigned int *)t32);
    t53 = (~(t52));
    t54 = *((unsigned int *)t47);
    t55 = (~(t54));
    t56 = (t49 & t51);
    t57 = (t53 & t55);
    t58 = (~(t56));
    t59 = (~(t57));
    t60 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t60 & t58);
    t61 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t61 & t59);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t58);
    t63 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t63 & t59);
    goto LAB55;

LAB56:    xsi_set_current_line(90, ng0);
    t70 = (t0 + 3432);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    t73 = ((char*)((ng1)));
    memset(t74, 0, 8);
    xsi_vlog_unsigned_add(t74, 32, t72, 3, t73, 32);
    t75 = (t0 + 3432);
    xsi_vlogvar_wait_assign_value(t75, t74, 0, 0, 3, 0LL);
    goto LAB58;

}


extern void work_m_13980497649035867636_0816989564_init()
{
	static char *pe[] = {(void *)Cont_24_0,(void *)Cont_25_1,(void *)Always_29_2,(void *)Always_42_3,(void *)Always_62_4,(void *)Always_74_5};
	static char *se[] = {(void *)sp_clog2};
	xsi_register_didat("work_m_13980497649035867636_0816989564", "isim/testFifoSynch_isim_beh.exe.sim/work/m_13980497649035867636_0816989564.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
