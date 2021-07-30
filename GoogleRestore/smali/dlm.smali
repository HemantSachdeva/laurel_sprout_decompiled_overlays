.class final Ldlm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldlw;


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Ldlj;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:[I

.field private final l:I

.field private final m:I

.field private final n:Ldkx;

.field private final o:Ldne;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Ldlm;->a:[I

    .line 1
    invoke-static {}, Ldms;->a()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ldlm;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILdlj;Z[IIILdkx;Ldne;Ldll;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldlm;->c:[I

    iput-object p2, p0, Ldlm;->d:[Ljava/lang/Object;

    iput p3, p0, Ldlm;->e:I

    iput p4, p0, Ldlm;->f:I

    .line 2
    instance-of p1, p5, Ldkd;

    iput-boolean p1, p0, Ldlm;->i:Z

    iput-boolean p6, p0, Ldlm;->j:Z

    const/4 p1, 0x0

    if-eqz p12, :cond_0

    .line 3
    instance-of p2, p5, Ldkb;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-boolean p1, p0, Ldlm;->h:Z

    iput-object p7, p0, Ldlm;->k:[I

    iput p8, p0, Ldlm;->l:I

    iput p9, p0, Ldlm;->m:I

    iput-object p10, p0, Ldlm;->n:Ldkx;

    iput-object p11, p0, Ldlm;->o:Ldne;

    iput-object p5, p0, Ldlm;->g:Ldlj;

    return-void
.end method

.method private final a(II)I
    .locals 1

    iget v0, p0, Ldlm;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ldlm;->f:I

    if-gt p1, v0, :cond_0

    .line 1338
    invoke-direct {p0, p1, p2}, Ldlm;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIIJILdhn;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Ldlm;->b:Lsun/misc/Unsafe;

    iget-object v7, v0, Ldlm;->c:[I

    add-int/lit8 v13, v6, 0x2

    .line 993
    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    :goto_0
    goto/16 :goto_a

    .line 1048
    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 994
    invoke-direct {v0, v6}, Ldlm;->a(I)Ldlw;

    move-result-object v5

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    .line 995
    move-object v2, v5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Ldll;->a(Ldlw;[BIIILdhn;)I

    move-result v2

    .line 996
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 997
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_1

    .line 1000
    :cond_0
    const/4 v15, 0x0

    .line 997
    :goto_1
    if-nez v15, :cond_1

    iget-object v3, v11, Ldhn;->c:Ljava/lang/Object;

    .line 998
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    .line 1001
    :cond_1
    iget-object v3, v11, Ldhn;->c:Ljava/lang/Object;

    .line 999
    invoke-static {v15, v3}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1000
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1001
    :goto_2
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    .line 1000
    :pswitch_1
    if-eqz v5, :cond_3

    :cond_2
    goto/16 :goto_a

    .line 1002
    :cond_3
    invoke-static {v3, v4, v11}, Ldll;->b([BILdhn;)I

    move-result v2

    iget-wide v3, v11, Ldhn;->b:J

    invoke-static {v3, v4}, Ldie;->a(J)J

    move-result-wide v3

    .line 1003
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1004
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_2
    if-eqz v5, :cond_4

    goto/16 :goto_a

    .line 1005
    :cond_4
    invoke-static {v3, v4, v11}, Ldll;->a([BILdhn;)I

    move-result v2

    iget v3, v11, Ldhn;->a:I

    invoke-static {v3}, Ldie;->f(I)I

    move-result v3

    .line 1006
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1007
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_3
    if-nez v5, :cond_7

    .line 1008
    invoke-static {v3, v4, v11}, Ldll;->a([BILdhn;)I

    move-result v3

    iget v4, v11, Ldhn;->a:I

    .line 1009
    invoke-direct {v0, v6}, Ldlm;->c(I)Ldkh;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1010
    invoke-interface {v5, v4}, Ldkh;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 1013
    :cond_5
    invoke-static/range {p1 .. p1}, Ldlm;->c(Ljava/lang/Object;)Ldmj;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ldmj;->a(ILjava/lang/Object;)V

    goto :goto_4

    .line 1011
    :cond_6
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1012
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 993
    :goto_4
    move v2, v3

    goto/16 :goto_b

    .line 1013
    :pswitch_4
    if-eq v5, v15, :cond_8

    :cond_7
    goto/16 :goto_a

    .line 1014
    :cond_8
    invoke-static {v3, v4, v11}, Ldll;->e([BILdhn;)I

    move-result v2

    iget-object v3, v11, Ldhn;->c:Ljava/lang/Object;

    .line 1015
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1016
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5
    if-ne v5, v15, :cond_b

    .line 1017
    invoke-direct {v0, v6}, Ldlm;->a(I)Ldlw;

    move-result-object v2

    .line 1018
    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Ldll;->a(Ldlw;[BIILdhn;)I

    move-result v2

    .line 1019
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_9

    .line 1020
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_5

    .line 1023
    :cond_9
    const/4 v15, 0x0

    .line 1020
    :goto_5
    if-nez v15, :cond_a

    iget-object v3, v11, Ldhn;->c:Ljava/lang/Object;

    .line 1021
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    .line 1024
    :cond_a
    iget-object v3, v11, Ldhn;->c:Ljava/lang/Object;

    .line 1022
    invoke-static {v15, v3}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1023
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1024
    :goto_6
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    .line 1023
    :cond_b
    goto/16 :goto_a

    :pswitch_6
    if-ne v5, v15, :cond_f

    .line 1025
    invoke-static {v3, v4, v11}, Ldll;->a([BILdhn;)I

    move-result v2

    iget v4, v11, Ldhn;->a:I

    if-nez v4, :cond_c

    .line 1026
    const-string v3, ""

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    .line 1030
    :cond_c
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_e

    add-int v5, v2, v4

    .line 1027
    invoke-static {v3, v2, v5}, Ldmy;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_7

    .line 1031
    :cond_d
    invoke-static {}, Ldkn;->i()Ldkn;

    move-result-object v1

    throw v1

    .line 1027
    :cond_e
    :goto_7
    new-instance v5, Ljava/lang/String;

    .line 1028
    sget-object v6, Ldkl;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1029
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 1030
    :goto_8
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    .line 1029
    :cond_f
    goto/16 :goto_a

    :pswitch_7
    if-nez v5, :cond_11

    .line 1032
    invoke-static {v3, v4, v11}, Ldll;->b([BILdhn;)I

    move-result v2

    iget-wide v3, v11, Ldhn;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_10

    const/4 v15, 0x1

    goto :goto_9

    .line 1034
    :cond_10
    const/4 v15, 0x0

    .line 1033
    :goto_9
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1034
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_8
    if-eq v5, v7, :cond_12

    :cond_11
    goto/16 :goto_a

    .line 1035
    :cond_12
    invoke-static/range {p2 .. p3}, Ldll;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1036
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_9
    const/4 v2, 0x1

    if-eq v5, v2, :cond_13

    goto :goto_a

    .line 1037
    :cond_13
    invoke-static/range {p2 .. p3}, Ldll;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1038
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :pswitch_a
    if-eqz v5, :cond_14

    goto :goto_a

    .line 1039
    :cond_14
    invoke-static {v3, v4, v11}, Ldll;->a([BILdhn;)I

    move-result v2

    iget v3, v11, Ldhn;->a:I

    .line 1040
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1041
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_b
    if-eqz v5, :cond_15

    goto :goto_a

    .line 1042
    :cond_15
    invoke-static {v3, v4, v11}, Ldll;->b([BILdhn;)I

    move-result v2

    iget-wide v3, v11, Ldhn;->b:J

    .line 1043
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1044
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_c
    if-eq v5, v7, :cond_16

    goto :goto_a

    .line 1045
    :cond_16
    invoke-static/range {p2 .. p3}, Ldll;->d([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1046
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    .line 993
    :pswitch_d
    const/4 v2, 0x1

    if-eq v5, v2, :cond_17

    goto/16 :goto_0

    .line 1047
    :cond_17
    invoke-static/range {p2 .. p3}, Ldll;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1048
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    .line 993
    :goto_a
    move v2, v4

    :goto_b
    return v2

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIJIJLdhn;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Ldlm;->b:Lsun/misc/Unsafe;

    .line 1201
    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ldkk;

    .line 1202
    invoke-interface {v12}, Ldkk;->a()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1203
    invoke-interface {v12}, Ldkk;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    .line 1328
    :cond_0
    add-int/2addr v13, v13

    .line 1204
    :goto_0
    invoke-interface {v12, v13}, Ldkk;->a(I)Ldkk;

    move-result-object v12

    .line 1205
    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 1328
    :cond_1
    nop

    .line 1205
    :goto_1
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_53

    .line 1206
    invoke-direct {p0, v8}, Ldlm;->a(I)Ldlw;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    .line 1207
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Ldll;->a(Ldlw;[BIIILdhn;)I

    move-result v4

    iget-object v8, v7, Ldhn;->c:Ljava/lang/Object;

    .line 1208
    invoke-interface {v12, v8}, Ldkk;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 1336
    :pswitch_0
    if-ne v6, v14, :cond_4

    .line 1212
    check-cast v12, Ldky;

    .line 1213
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v1

    iget v2, v7, Ldhn;->a:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    .line 1214
    invoke-static {v3, v1, v7}, Ldll;->b([BILdhn;)I

    move-result v1

    iget-wide v4, v7, Ldhn;->b:J

    invoke-static {v4, v5}, Ldie;->a(J)J

    move-result-wide v4

    .line 1215
    invoke-virtual {v12, v4, v5}, Ldky;->a(J)V

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_25

    .line 1216
    :cond_3
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_7

    .line 1217
    check-cast v12, Ldky;

    .line 1218
    invoke-static {v3, v4, v7}, Ldll;->b([BILdhn;)I

    move-result v1

    iget-wide v8, v7, Ldhn;->b:J

    invoke-static {v8, v9}, Ldie;->a(J)J

    move-result-wide v8

    .line 1219
    invoke-virtual {v12, v8, v9}, Ldky;->a(J)V

    :goto_3
    if-ge v1, v5, :cond_6

    .line 1220
    invoke-static {v3, v1, v7}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, v7, Ldhn;->a:I

    if-eq v2, v6, :cond_5

    goto :goto_4

    .line 1221
    :cond_5
    invoke-static {v3, v4, v7}, Ldll;->b([BILdhn;)I

    move-result v1

    iget-wide v8, v7, Ldhn;->b:J

    invoke-static {v8, v9}, Ldie;->a(J)J

    move-result-wide v8

    .line 1222
    invoke-virtual {v12, v8, v9}, Ldky;->a(J)V

    goto :goto_3

    .line 1220
    :cond_6
    :goto_4
    return v1

    .line 1222
    :cond_7
    goto/16 :goto_24

    :pswitch_1
    if-ne v6, v14, :cond_a

    .line 1223
    check-cast v12, Ldke;

    .line 1224
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v1

    iget v2, v7, Ldhn;->a:I

    add-int/2addr v2, v1

    :goto_5
    if-ge v1, v2, :cond_8

    .line 1225
    invoke-static {v3, v1, v7}, Ldll;->a([BILdhn;)I

    move-result v1

    iget v4, v7, Ldhn;->a:I

    invoke-static {v4}, Ldie;->f(I)I

    move-result v4

    .line 1226
    invoke-virtual {v12, v4}, Ldke;->c(I)V

    goto :goto_5

    :cond_8
    if-ne v1, v2, :cond_9

    goto/16 :goto_25

    .line 1227
    :cond_9
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v1

    throw v1

    :cond_a
    if-nez v6, :cond_d

    .line 1228
    check-cast v12, Ldke;

    .line 1229
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v1

    iget v4, v7, Ldhn;->a:I

    invoke-static {v4}, Ldie;->f(I)I

    move-result v4

    .line 1230
    invoke-virtual {v12, v4}, Ldke;->c(I)V

    :goto_6
    if-ge v1, v5, :cond_c

    .line 1231
    invoke-static {v3, v1, v7}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, v7, Ldhn;->a:I

    if-eq v2, v6, :cond_b

    goto :goto_7

    .line 1232
    :cond_b
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v1

    iget v4, v7, Ldhn;->a:I

    invoke-static {v4}, Ldie;->f(I)I

    move-result v4

    .line 1233
    invoke-virtual {v12, v4}, Ldke;->c(I)V

    goto :goto_6

    .line 1231
    :cond_c
    :goto_7
    return v1

    .line 1233
    :cond_d
    goto/16 :goto_24

    :pswitch_2
    if-ne v6, v14, :cond_e

    .line 1234
    invoke-static {v3, v4, v12, v7}, Ldll;->a([BILdkk;Ldhn;)I

    move-result v2

    goto :goto_8

    .line 1239
    :cond_e
    if-nez v6, :cond_11

    .line 1235
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Ldll;->a(I[BIILdkk;Ldhn;)I

    move-result v2

    .line 1236
    :goto_8
    check-cast v1, Ldkd;

    iget-object v3, v1, Ldkd;->s:Ldmj;

    .line 1237
    sget-object v4, Ldmj;->a:Ldmj;

    if-ne v3, v4, :cond_f

    const/4 v3, 0x0

    .line 1238
    :cond_f
    invoke-direct {p0, v8}, Ldlm;->c(I)Ldkh;

    move-result-object v4

    .line 1239
    move/from16 v5, p6

    invoke-static {v5, v12, v4, v3}, Ldlx;->a(ILjava/util/List;Ldkh;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldmj;

    if-nez v3, :cond_10

    move v1, v2

    goto/16 :goto_25

    :cond_10
    iput-object v3, v1, Ldkd;->s:Ldmj;

    return v2

    .line 1235
    :cond_11
    goto/16 :goto_24

    :pswitch_3
    if-ne v6, v14, :cond_1a

    .line 1240
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v1

    iget v4, v7, Ldhn;->a:I

    if-ltz v4, :cond_19

    .line 1242
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_18

    .line 1243
    if-nez v4, :cond_12

    .line 1244
    sget-object v4, Ldib;->b:Ldib;

    invoke-interface {v12, v4}, Ldkk;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1245
    :cond_12
    invoke-static {v3, v1, v4}, Ldib;->a([BII)Ldib;

    move-result-object v6

    invoke-interface {v12, v6}, Ldkk;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    .line 1244
    :goto_9
    if-ge v1, v5, :cond_17

    .line 1246
    invoke-static {v3, v1, v7}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, v7, Ldhn;->a:I

    if-eq v2, v6, :cond_13

    goto :goto_a

    .line 1247
    :cond_13
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v1

    iget v4, v7, Ldhn;->a:I

    if-ltz v4, :cond_16

    .line 1248
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_15

    .line 1252
    if-nez v4, :cond_14

    sget-object v4, Ldib;->b:Ldib;

    .line 1249
    invoke-interface {v12, v4}, Ldkk;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1250
    :cond_14
    invoke-static {v3, v1, v4}, Ldib;->a([BII)Ldib;

    move-result-object v6

    invoke-interface {v12, v6}, Ldkk;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    goto :goto_9

    .line 1252
    :cond_15
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v1

    throw v1

    .line 1251
    :cond_16
    invoke-static {}, Ldkn;->b()Ldkn;

    move-result-object v1

    throw v1

    .line 1246
    :cond_17
    :goto_a
    return v1

    .line 1243
    :cond_18
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v1

    throw v1

    .line 1241
    :cond_19
    invoke-static {}, Ldkn;->b()Ldkn;

    move-result-object v1

    throw v1

    .line 1245
    :pswitch_4
    if-eq v6, v14, :cond_1b

    :cond_1a
    goto/16 :goto_24

    .line 1253
    :cond_1b
    invoke-direct {p0, v8}, Ldlm;->a(I)Ldlw;

    move-result-object v1

    .line 1254
    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Ldll;->a(Ldlw;I[BIILdkk;Ldhn;)I

    move-result v1

    return v1

    :pswitch_5
    if-ne v6, v14, :cond_27

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v10

    if-nez v6, :cond_20

    .line 1270
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, v7, Ldhn;->a:I

    if-ltz v6, :cond_1f

    .line 1271
    if-nez v6, :cond_1c

    .line 1272
    invoke-interface {v12, v1}, Ldkk;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1279
    :cond_1c
    new-instance v8, Ljava/lang/String;

    .line 1273
    sget-object v9, Ldkl;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1274
    invoke-interface {v12, v8}, Ldkk;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    .line 1272
    :goto_b
    if-ge v4, v5, :cond_54

    .line 1275
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v6

    iget v8, v7, Ldhn;->a:I

    if-ne v2, v8, :cond_54

    .line 1276
    invoke-static {v3, v6, v7}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, v7, Ldhn;->a:I

    if-ltz v6, :cond_1e

    .line 1280
    if-nez v6, :cond_1d

    .line 1277
    invoke-interface {v12, v1}, Ldkk;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    new-instance v8, Ljava/lang/String;

    .line 1278
    sget-object v9, Ldkl;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1279
    invoke-interface {v12, v8}, Ldkk;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    goto :goto_b

    .line 1280
    :cond_1e
    invoke-static {}, Ldkn;->b()Ldkn;

    move-result-object v1

    throw v1

    .line 1271
    :cond_1f
    invoke-static {}, Ldkn;->b()Ldkn;

    move-result-object v1

    throw v1

    .line 1255
    :cond_20
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, v7, Ldhn;->a:I

    if-ltz v6, :cond_26

    .line 1256
    if-nez v6, :cond_21

    .line 1257
    invoke-interface {v12, v1}, Ldkk;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1267
    :cond_21
    add-int v8, v4, v6

    .line 1258
    invoke-static {v3, v4, v8}, Ldmy;->a([BII)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 1259
    new-instance v9, Ljava/lang/String;

    .line 1260
    sget-object v10, Ldkl;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1261
    invoke-interface {v12, v9}, Ldkk;->add(Ljava/lang/Object;)Z

    move v4, v8

    .line 1257
    :goto_c
    if-ge v4, v5, :cond_54

    .line 1262
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v6

    iget v8, v7, Ldhn;->a:I

    if-ne v2, v8, :cond_54

    .line 1263
    invoke-static {v3, v6, v7}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, v7, Ldhn;->a:I

    if-ltz v6, :cond_24

    .line 1268
    if-nez v6, :cond_22

    .line 1264
    invoke-interface {v12, v1}, Ldkk;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_22
    add-int v8, v4, v6

    .line 1265
    invoke-static {v3, v4, v8}, Ldmy;->a([BII)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 1269
    new-instance v9, Ljava/lang/String;

    .line 1266
    sget-object v10, Ldkl;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1267
    invoke-interface {v12, v9}, Ldkk;->add(Ljava/lang/Object;)Z

    move v4, v8

    goto :goto_c

    .line 1269
    :cond_23
    invoke-static {}, Ldkn;->i()Ldkn;

    move-result-object v1

    throw v1

    .line 1268
    :cond_24
    invoke-static {}, Ldkn;->b()Ldkn;

    move-result-object v1

    throw v1

    .line 1259
    :cond_25
    invoke-static {}, Ldkn;->i()Ldkn;

    move-result-object v1

    throw v1

    .line 1256
    :cond_26
    invoke-static {}, Ldkn;->b()Ldkn;

    move-result-object v1

    throw v1

    .line 1261
    :cond_27
    goto/16 :goto_24

    :pswitch_6
    const/4 v1, 0x0

    if-ne v6, v14, :cond_2b

    .line 1281
    check-cast v12, Ldhq;

    .line 1282
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v2

    iget v4, v7, Ldhn;->a:I

    add-int/2addr v4, v2

    :goto_d
    if-ge v2, v4, :cond_29

    .line 1283
    invoke-static {v3, v2, v7}, Ldll;->b([BILdhn;)I

    move-result v2

    iget-wide v5, v7, Ldhn;->b:J

    cmp-long v8, v5, v10

    if-eqz v8, :cond_28

    const/4 v5, 0x1

    goto :goto_e

    .line 1284
    :cond_28
    const/4 v5, 0x0

    :goto_e
    invoke-virtual {v12, v5}, Ldhq;->a(Z)V

    goto :goto_d

    :cond_29
    if-ne v2, v4, :cond_2a

    move v1, v2

    goto/16 :goto_25

    .line 1285
    :cond_2a
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v1

    throw v1

    :cond_2b
    if-nez v6, :cond_30

    .line 1286
    check-cast v12, Ldhq;

    .line 1287
    invoke-static {v3, v4, v7}, Ldll;->b([BILdhn;)I

    move-result v4

    iget-wide v8, v7, Ldhn;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2c

    const/4 v6, 0x1

    goto :goto_f

    .line 1291
    :cond_2c
    const/4 v6, 0x0

    .line 1288
    :goto_f
    invoke-virtual {v12, v6}, Ldhq;->a(Z)V

    :goto_10
    if-ge v4, v5, :cond_2f

    .line 1289
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v6

    iget v8, v7, Ldhn;->a:I

    if-eq v2, v8, :cond_2d

    goto :goto_12

    .line 1290
    :cond_2d
    invoke-static {v3, v6, v7}, Ldll;->b([BILdhn;)I

    move-result v4

    iget-wide v8, v7, Ldhn;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2e

    const/4 v6, 0x1

    goto :goto_11

    .line 1291
    :cond_2e
    const/4 v6, 0x0

    :goto_11
    invoke-virtual {v12, v6}, Ldhq;->a(Z)V

    goto :goto_10

    .line 1289
    :cond_2f
    :goto_12
    return v4

    .line 1291
    :cond_30
    goto/16 :goto_24

    :pswitch_7
    if-ne v6, v14, :cond_33

    .line 1292
    check-cast v12, Ldke;

    .line 1293
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v1

    iget v2, v7, Ldhn;->a:I

    add-int/2addr v2, v1

    :goto_13
    if-ge v1, v2, :cond_31

    .line 1294
    invoke-static {v3, v1}, Ldll;->a([BI)I

    move-result v4

    invoke-virtual {v12, v4}, Ldke;->c(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_13

    :cond_31
    if-ne v1, v2, :cond_32

    goto/16 :goto_25

    .line 1295
    :cond_32
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v1

    throw v1

    :cond_33
    if-ne v6, v9, :cond_36

    .line 1296
    check-cast v12, Ldke;

    .line 1297
    invoke-static/range {p2 .. p3}, Ldll;->a([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Ldke;->c(I)V

    add-int/lit8 v1, v4, 0x4

    :goto_14
    if-ge v1, v5, :cond_35

    .line 1298
    invoke-static {v3, v1, v7}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, v7, Ldhn;->a:I

    if-eq v2, v6, :cond_34

    goto :goto_15

    .line 1299
    :cond_34
    invoke-static {v3, v4}, Ldll;->a([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Ldke;->c(I)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_14

    .line 1298
    :cond_35
    :goto_15
    return v1

    .line 1299
    :cond_36
    goto/16 :goto_24

    :pswitch_8
    if-ne v6, v14, :cond_39

    .line 1300
    check-cast v12, Ldky;

    .line 1301
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v1

    iget v2, v7, Ldhn;->a:I

    add-int/2addr v2, v1

    :goto_16
    if-ge v1, v2, :cond_37

    .line 1302
    invoke-static {v3, v1}, Ldll;->b([BI)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Ldky;->a(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_16

    :cond_37
    if-ne v1, v2, :cond_38

    goto/16 :goto_25

    .line 1303
    :cond_38
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v1

    throw v1

    :cond_39
    if-ne v6, v13, :cond_3c

    .line 1304
    check-cast v12, Ldky;

    .line 1305
    invoke-static/range {p2 .. p3}, Ldll;->b([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldky;->a(J)V

    add-int/lit8 v1, v4, 0x8

    :goto_17
    if-ge v1, v5, :cond_3b

    .line 1306
    invoke-static {v3, v1, v7}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, v7, Ldhn;->a:I

    if-eq v2, v6, :cond_3a

    goto :goto_18

    .line 1307
    :cond_3a
    invoke-static {v3, v4}, Ldll;->b([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldky;->a(J)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_17

    .line 1306
    :cond_3b
    :goto_18
    return v1

    .line 1307
    :cond_3c
    goto/16 :goto_24

    :pswitch_9
    if-ne v6, v14, :cond_3d

    .line 1308
    invoke-static {v3, v4, v12, v7}, Ldll;->a([BILdkk;Ldhn;)I

    move-result v1

    goto/16 :goto_25

    :cond_3d
    if-eqz v6, :cond_3e

    goto/16 :goto_24

    .line 1309
    :cond_3e
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Ldll;->a(I[BIILdkk;Ldhn;)I

    move-result v1

    return v1

    :pswitch_a
    if-ne v6, v14, :cond_41

    .line 1310
    check-cast v12, Ldky;

    .line 1311
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v1

    iget v2, v7, Ldhn;->a:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_3f

    .line 1312
    invoke-static {v3, v1, v7}, Ldll;->b([BILdhn;)I

    move-result v1

    iget-wide v4, v7, Ldhn;->b:J

    .line 1313
    invoke-virtual {v12, v4, v5}, Ldky;->a(J)V

    goto :goto_19

    :cond_3f
    if-ne v1, v2, :cond_40

    goto/16 :goto_25

    .line 1314
    :cond_40
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v1

    throw v1

    :cond_41
    if-nez v6, :cond_44

    .line 1315
    check-cast v12, Ldky;

    .line 1316
    invoke-static {v3, v4, v7}, Ldll;->b([BILdhn;)I

    move-result v1

    iget-wide v8, v7, Ldhn;->b:J

    .line 1317
    invoke-virtual {v12, v8, v9}, Ldky;->a(J)V

    :goto_1a
    if-ge v1, v5, :cond_43

    .line 1318
    invoke-static {v3, v1, v7}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, v7, Ldhn;->a:I

    if-eq v2, v6, :cond_42

    goto :goto_1b

    .line 1319
    :cond_42
    invoke-static {v3, v4, v7}, Ldll;->b([BILdhn;)I

    move-result v1

    iget-wide v8, v7, Ldhn;->b:J

    .line 1320
    invoke-virtual {v12, v8, v9}, Ldky;->a(J)V

    goto :goto_1a

    .line 1318
    :cond_43
    :goto_1b
    return v1

    .line 1320
    :cond_44
    goto/16 :goto_24

    :pswitch_b
    if-ne v6, v14, :cond_47

    .line 1321
    check-cast v12, Ldjv;

    .line 1322
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v1

    iget v2, v7, Ldhn;->a:I

    add-int/2addr v2, v1

    :goto_1c
    if-ge v1, v2, :cond_45

    .line 1323
    invoke-static {v3, v1}, Ldll;->d([BI)F

    move-result v4

    invoke-virtual {v12, v4}, Ldjv;->a(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_1c

    :cond_45
    if-ne v1, v2, :cond_46

    goto/16 :goto_25

    .line 1324
    :cond_46
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v1

    throw v1

    :cond_47
    if-ne v6, v9, :cond_4a

    .line 1325
    check-cast v12, Ldjv;

    .line 1326
    invoke-static/range {p2 .. p3}, Ldll;->d([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Ldjv;->a(F)V

    add-int/lit8 v1, v4, 0x4

    :goto_1d
    if-ge v1, v5, :cond_49

    .line 1327
    invoke-static {v3, v1, v7}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, v7, Ldhn;->a:I

    if-eq v2, v6, :cond_48

    goto :goto_1e

    .line 1328
    :cond_48
    invoke-static {v3, v4}, Ldll;->d([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Ldjv;->a(F)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_1d

    .line 1327
    :cond_49
    :goto_1e
    return v1

    .line 1328
    :cond_4a
    goto/16 :goto_24

    .line 1211
    :pswitch_c
    if-ne v6, v14, :cond_4d

    .line 1329
    check-cast v12, Ldjo;

    .line 1330
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v1

    iget v2, v7, Ldhn;->a:I

    add-int/2addr v2, v1

    :goto_1f
    if-ge v1, v2, :cond_4b

    .line 1331
    invoke-static {v3, v1}, Ldll;->c([BI)D

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Ldjo;->a(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1f

    :cond_4b
    if-ne v1, v2, :cond_4c

    goto :goto_25

    .line 1332
    :cond_4c
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v1

    throw v1

    :cond_4d
    if-ne v6, v13, :cond_50

    .line 1333
    check-cast v12, Ldjo;

    .line 1334
    invoke-static/range {p2 .. p3}, Ldll;->c([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldjo;->a(D)V

    add-int/lit8 v1, v4, 0x8

    :goto_20
    if-ge v1, v5, :cond_4f

    .line 1335
    invoke-static {v3, v1, v7}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, v7, Ldhn;->a:I

    if-eq v2, v6, :cond_4e

    goto :goto_21

    .line 1336
    :cond_4e
    invoke-static {v3, v4}, Ldll;->c([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldjo;->a(D)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_20

    .line 1335
    :cond_4f
    :goto_21
    return v1

    .line 1336
    :cond_50
    goto :goto_24

    .line 1208
    :goto_22
    if-ge v4, v5, :cond_52

    .line 1209
    invoke-static {v3, v4, v7}, Ldll;->a([BILdhn;)I

    move-result v8

    iget v9, v7, Ldhn;->a:I

    if-eq v2, v9, :cond_51

    goto :goto_23

    .line 1210
    :cond_51
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Ldll;->a(Ldlw;[BIIILdhn;)I

    move-result v4

    iget-object v8, v7, Ldhn;->c:Ljava/lang/Object;

    .line 1211
    invoke-interface {v12, v8}, Ldkk;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1209
    :cond_52
    :goto_23
    return v4

    .line 1211
    :cond_53
    nop

    :cond_54
    :goto_24
    move v1, v4

    :goto_25
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIJLdhn;)I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move/from16 v7, p4

    move-wide/from16 v1, p6

    move-object/from16 v8, p8

    sget-object v3, Ldlm;->b:Lsun/misc/Unsafe;

    .line 975
    move-object/from16 v9, p0

    move/from16 v4, p5

    invoke-direct {v9, v4}, Ldlm;->b(I)Ljava/lang/Object;

    move-result-object v4

    .line 976
    invoke-virtual {v3, v0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 977
    invoke-static {v5}, Ldmg;->b(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 978
    invoke-static {}, Ldmg;->a()Ljava/lang/Object;

    move-result-object v10

    .line 979
    invoke-static {v10, v5}, Ldmg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    invoke-virtual {v3, v0, v1, v2, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v10

    .line 981
    :cond_0
    invoke-static {v4}, Ldmg;->a(Ljava/lang/Object;)Ldlc;

    move-result-object v10

    .line 982
    move-object v11, v5

    check-cast v11, Ldle;

    .line 983
    move/from16 v0, p3

    invoke-static {v6, v0, v8}, Ldll;->a([BILdhn;)I

    move-result v0

    iget v1, v8, Ldhn;->a:I

    if-ltz v1, :cond_7

    sub-int v2, v7, v0

    if-gt v1, v2, :cond_7

    .line 984
    add-int v12, v0, v1

    iget-object v1, v10, Ldlc;->b:Ljava/lang/Object;

    iget-object v2, v10, Ldlc;->d:Ljava/lang/Object;

    move-object v13, v1

    move-object v14, v2

    :goto_0
    if-ge v0, v12, :cond_5

    add-int/lit8 v1, v0, 0x1

    .line 985
    aget-byte v0, v6, v0

    if-gez v0, :cond_1

    .line 986
    invoke-static {v0, v6, v1, v8}, Ldll;->a(I[BILdhn;)I

    move-result v0

    iget v1, v8, Ldhn;->a:I

    move v15, v1

    move v1, v0

    move v0, v15

    goto :goto_1

    .line 989
    :cond_1
    nop

    .line 986
    :goto_1
    and-int/lit8 v2, v0, 0x7

    ushr-int/lit8 v3, v0, 0x3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_2

    .line 990
    :cond_2
    iget-object v3, v10, Ldlc;->c:Ldmz;

    iget v4, v3, Ldmz;->t:I

    if-ne v2, v4, :cond_4

    iget-object v0, v10, Ldlc;->d:Ljava/lang/Object;

    .line 987
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 988
    move-object/from16 v0, p2

    move/from16 v2, p4

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Ldlm;->a([BIILdmz;Ljava/lang/Class;Ldhn;)I

    move-result v0

    iget-object v14, v8, Ldhn;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v3, v10, Ldlc;->a:Ldmz;

    iget v4, v3, Ldmz;->t:I

    if-ne v2, v4, :cond_4

    const/4 v4, 0x0

    .line 989
    move-object/from16 v0, p2

    move/from16 v2, p4

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Ldlm;->a([BIILdmz;Ljava/lang/Class;Ldhn;)I

    move-result v0

    iget-object v13, v8, Ldhn;->c:Ljava/lang/Object;

    goto :goto_0

    .line 990
    :cond_4
    :goto_2
    invoke-static {v0, v6, v1, v7, v8}, Ldll;->a(I[BIILdhn;)I

    move-result v0

    goto :goto_0

    .line 989
    :cond_5
    if-ne v0, v12, :cond_6

    .line 992
    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v12

    .line 991
    :cond_6
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object v0

    throw v0

    .line 984
    :cond_7
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private static final a([BIILdmz;Ljava/lang/Class;Ldhn;)I
    .locals 1

    .line 5
    sget-object v0, Ldmz;->a:Ldmz;

    invoke-virtual {p3}, Ldmz;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    .line 23
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 24
    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :pswitch_1
    invoke-static {p0, p1, p5}, Ldll;->b([BILdhn;)I

    move-result p0

    iget-wide p1, p5, Ldhn;->b:J

    invoke-static {p1, p2}, Ldie;->a(J)J

    move-result-wide p1

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Ldhn;->c:Ljava/lang/Object;

    goto/16 :goto_1

    .line 9
    :pswitch_2
    invoke-static {p0, p1, p5}, Ldll;->a([BILdhn;)I

    move-result p0

    iget p1, p5, Ldhn;->a:I

    invoke-static {p1}, Ldie;->f(I)I

    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Ldhn;->c:Ljava/lang/Object;

    goto/16 :goto_1

    .line 21
    :pswitch_3
    invoke-static {p0, p1, p5}, Ldll;->e([BILdhn;)I

    move-result p0

    goto/16 :goto_1

    .line 11
    :pswitch_4
    sget-object p3, Ldls;->a:Ldls;

    invoke-virtual {p3, p4}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object p3

    .line 12
    invoke-static {p3, p0, p1, p2, p5}, Ldll;->a(Ldlw;[BIILdhn;)I

    move-result p0

    goto :goto_1

    .line 6
    :pswitch_5
    invoke-static {p0, p1, p5}, Ldll;->d([BILdhn;)I

    move-result p0

    goto :goto_1

    .line 22
    :pswitch_6
    invoke-static {p0, p1, p5}, Ldll;->b([BILdhn;)I

    move-result p0

    iget-wide p1, p5, Ldhn;->b:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Ldhn;->c:Ljava/lang/Object;

    goto :goto_1

    .line 19
    :pswitch_7
    invoke-static {p0, p1}, Ldll;->a([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Ldhn;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    goto :goto_1

    .line 18
    :pswitch_8
    invoke-static {p0, p1}, Ldll;->b([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Ldhn;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    goto :goto_1

    .line 15
    :pswitch_9
    invoke-static {p0, p1, p5}, Ldll;->a([BILdhn;)I

    move-result p0

    iget p1, p5, Ldhn;->a:I

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Ldhn;->c:Ljava/lang/Object;

    goto :goto_1

    .line 13
    :pswitch_a
    invoke-static {p0, p1, p5}, Ldll;->b([BILdhn;)I

    move-result p0

    iget-wide p1, p5, Ldhn;->b:J

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Ldhn;->c:Ljava/lang/Object;

    goto :goto_1

    .line 17
    :pswitch_b
    invoke-static {p0, p1}, Ldll;->d([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Ldhn;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    goto :goto_1

    .line 20
    :pswitch_c
    invoke-static {p0, p1}, Ldll;->c([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Ldhn;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    .line 6
    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static a(Ldlg;Ldmt;Ldkx;Ldne;Ldll;Ldmg;)Ldlm;
    .locals 0

    .line 898
    instance-of p1, p0, Ldlu;

    if-eqz p1, :cond_0

    .line 899
    check-cast p0, Ldlu;

    invoke-static {p0, p2, p3, p4, p5}, Ldlm;->a(Ldlu;Ldkx;Ldne;Ldll;Ldmg;)Ldlm;

    move-result-object p0

    return-object p0

    .line 900
    :cond_0
    check-cast p0, Ldmf;

    const/4 p0, 0x0

    throw p0
.end method

.method static a(Ldlu;Ldkx;Ldne;Ldll;Ldmg;)Ldlm;
    .locals 35

    .line 901
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ldlu;->c()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    .line 923
    :cond_0
    const/4 v11, 0x0

    .line 901
    :goto_0
    iget-object v1, v0, Ldlu;->b:Ljava/lang/String;

    .line 902
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 903
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    .line 904
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    .line 923
    :cond_1
    const/4 v7, 0x1

    .line 904
    :cond_2
    add-int/lit8 v5, v7, 0x1

    .line 905
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    .line 906
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    goto :goto_3

    .line 923
    :cond_4
    nop

    .line 906
    :goto_3
    if-nez v7, :cond_5

    sget-object v7, Ldlm;->a:[I

    move-object v13, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_14

    .line 968
    :cond_5
    add-int/lit8 v7, v5, 0x1

    .line 907
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v7, 0x1

    .line 908
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_4

    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    goto :goto_5

    .line 923
    :cond_7
    nop

    .line 908
    :goto_5
    add-int/lit8 v9, v7, 0x1

    .line 909
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_6
    add-int/lit8 v12, v9, 0x1

    .line 910
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_6

    :cond_8
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    goto :goto_7

    .line 923
    :cond_9
    nop

    .line 910
    :goto_7
    add-int/lit8 v10, v9, 0x1

    .line 911
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_8
    add-int/lit8 v13, v10, 0x1

    .line 912
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_8

    :cond_a
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    goto :goto_9

    .line 923
    :cond_b
    nop

    .line 912
    :goto_9
    add-int/lit8 v12, v10, 0x1

    .line 913
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_d

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_a
    add-int/lit8 v14, v12, 0x1

    .line 914
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_a

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    goto :goto_b

    .line 923
    :cond_d
    nop

    .line 914
    :goto_b
    add-int/lit8 v13, v12, 0x1

    .line 915
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_c
    add-int/lit8 v15, v13, 0x1

    .line 916
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_c

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    goto :goto_d

    .line 923
    :cond_f
    nop

    .line 916
    :goto_d
    add-int/lit8 v14, v13, 0x1

    .line 917
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_e
    add-int/lit8 v16, v14, 0x1

    .line 918
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_e

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    goto :goto_f

    .line 923
    :cond_11
    nop

    .line 918
    :goto_f
    add-int/lit8 v15, v14, 0x1

    .line 919
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_10
    add-int/lit8 v17, v15, 0x1

    .line 920
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_10

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    goto :goto_11

    .line 923
    :cond_13
    nop

    .line 920
    :goto_11
    add-int/lit8 v16, v15, 0x1

    .line 921
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v2, v16

    const/16 v16, 0xd

    :goto_12
    add-int/lit8 v17, v2, 0x1

    .line 922
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_14

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0xd

    move/from16 v2, v17

    goto :goto_12

    :cond_14
    shl-int v2, v2, v16

    or-int/2addr v15, v2

    move/from16 v16, v17

    goto :goto_13

    .line 923
    :cond_15
    nop

    .line 922
    :goto_13
    add-int v2, v15, v13

    add-int/2addr v2, v14

    .line 923
    new-array v2, v2, [I

    add-int v14, v5, v5

    add-int/2addr v14, v7

    move v7, v13

    move-object v13, v2

    move v2, v5

    move/from16 v5, v16

    .line 906
    :goto_14
    sget-object v8, Ldlm;->b:Lsun/misc/Unsafe;

    iget-object v3, v0, Ldlu;->c:[Ljava/lang/Object;

    iget-object v6, v0, Ldlu;->a:Ldlj;

    .line 924
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v19, v5

    mul-int/lit8 v5, v12, 0x3

    .line 925
    new-array v5, v5, [I

    add-int/2addr v12, v12

    .line 926
    new-array v12, v12, [Ljava/lang/Object;

    add-int v20, v15, v7

    move/from16 v22, v15

    move/from16 v7, v19

    move/from16 v23, v20

    const/16 v19, 0x0

    const/16 v21, 0x0

    :goto_15
    if-ge v7, v4, :cond_33

    add-int/lit8 v24, v7, 0x1

    .line 927
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v25, v4

    const v4, 0xd800

    if-lt v7, v4, :cond_17

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v4, v24

    const/16 v24, 0xd

    :goto_16
    add-int/lit8 v26, v4, 0x1

    .line 928
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v24

    or-int/2addr v7, v4

    add-int/lit8 v24, v24, 0xd

    move/from16 v4, v26

    move/from16 v15, v27

    goto :goto_16

    :cond_16
    shl-int v4, v4, v24

    or-int/2addr v7, v4

    move/from16 v4, v26

    goto :goto_17

    .line 954
    :cond_17
    move/from16 v27, v15

    move/from16 v4, v24

    .line 928
    :goto_17
    add-int/lit8 v15, v4, 0x1

    .line 929
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v24, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_19

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v15, v24

    const/16 v24, 0xd

    :goto_18
    add-int/lit8 v26, v15, 0x1

    .line 930
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v28, v10

    const v10, 0xd800

    if-lt v15, v10, :cond_18

    and-int/lit16 v10, v15, 0x1fff

    shl-int v10, v10, v24

    or-int/2addr v4, v10

    add-int/lit8 v24, v24, 0xd

    move/from16 v15, v26

    move/from16 v10, v28

    goto :goto_18

    :cond_18
    shl-int v10, v15, v24

    or-int/2addr v4, v10

    move/from16 v15, v26

    goto :goto_19

    .line 954
    :cond_19
    move/from16 v28, v10

    move/from16 v15, v24

    .line 930
    :goto_19
    and-int/lit16 v10, v4, 0xff

    move/from16 v24, v9

    and-int/lit16 v9, v4, 0x400

    if-eqz v9, :cond_1a

    add-int/lit8 v9, v21, 0x1

    .line 931
    aput v19, v13, v21

    move/from16 v21, v9

    :cond_1a
    const/16 v9, 0x33

    if-lt v10, v9, :cond_22

    add-int/lit8 v9, v15, 0x1

    .line 932
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v26, v9

    const v9, 0xd800

    if-lt v15, v9, :cond_1c

    and-int/lit16 v15, v15, 0x1fff

    const/16 v32, 0xd

    move/from16 v34, v26

    move/from16 v26, v15

    move/from16 v15, v34

    :goto_1a
    add-int/lit8 v33, v15, 0x1

    .line 933
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v9, :cond_1b

    and-int/lit16 v9, v15, 0x1fff

    shl-int v9, v9, v32

    or-int v26, v26, v9

    add-int/lit8 v32, v32, 0xd

    move/from16 v15, v33

    const v9, 0xd800

    goto :goto_1a

    :cond_1b
    shl-int v9, v15, v32

    or-int v15, v26, v9

    move/from16 v9, v33

    goto :goto_1b

    .line 935
    :cond_1c
    move/from16 v9, v26

    .line 933
    :goto_1b
    move/from16 v26, v9

    add-int/lit8 v9, v10, -0x33

    const/16 v0, 0x9

    if-eq v9, v0, :cond_1e

    const/16 v0, 0x11

    if-ne v9, v0, :cond_1d

    goto :goto_1c

    .line 940
    :cond_1d
    const/16 v0, 0xc

    if-ne v9, v0, :cond_1f

    if-nez v11, :cond_1f

    div-int/lit8 v0, v19, 0x3

    add-int/lit8 v9, v14, 0x1

    add-int/2addr v0, v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 935
    aget-object v14, v3, v14

    aput-object v14, v12, v0

    move v14, v9

    goto :goto_1d

    .line 933
    :cond_1e
    :goto_1c
    div-int/lit8 v0, v19, 0x3

    add-int/lit8 v9, v14, 0x1

    add-int/2addr v0, v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 934
    aget-object v14, v3, v14

    aput-object v14, v12, v0

    move v14, v9

    :cond_1f
    :goto_1d
    add-int/2addr v15, v15

    .line 936
    aget-object v0, v3, v15

    .line 937
    instance-of v9, v0, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_20

    .line 938
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_1e

    .line 939
    :cond_20
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Ldlm;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 940
    aput-object v0, v3, v15

    .line 941
    :goto_1e
    move-object v9, v1

    invoke-virtual {v8, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v15, v15, 0x1

    .line 942
    aget-object v0, v3, v15

    .line 943
    move/from16 v29, v1

    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_21

    .line 944
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_1f

    .line 945
    :cond_21
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Ldlm;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 946
    aput-object v0, v3, v15

    .line 947
    :goto_1f
    invoke-virtual {v8, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    move/from16 v31, v2

    move-object v0, v3

    move/from16 v30, v14

    move/from16 v15, v26

    const v2, 0xd800

    const/4 v14, 0x0

    const/16 v17, 0x1

    move/from16 v34, v29

    move/from16 v29, v1

    move/from16 v1, v34

    goto/16 :goto_2a

    .line 935
    :cond_22
    move-object v9, v1

    add-int/lit8 v0, v14, 0x1

    .line 948
    aget-object v1, v3, v14

    check-cast v1, Ljava/lang/String;

    invoke-static {v6, v1}, Ldlm;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/16 v14, 0x9

    if-eq v10, v14, :cond_2b

    const/16 v14, 0x11

    if-ne v10, v14, :cond_23

    const/16 v17, 0x1

    goto/16 :goto_24

    .line 962
    :cond_23
    const/16 v14, 0x1b

    if-eq v10, v14, :cond_2a

    const/16 v14, 0x31

    if-ne v10, v14, :cond_24

    goto :goto_23

    .line 950
    :cond_24
    const/16 v14, 0xc

    if-eq v10, v14, :cond_28

    const/16 v14, 0x1e

    if-eq v10, v14, :cond_28

    const/16 v14, 0x2c

    if-ne v10, v14, :cond_25

    goto :goto_21

    .line 951
    :cond_25
    const/16 v14, 0x32

    if-ne v10, v14, :cond_27

    add-int/lit8 v14, v22, 0x1

    .line 952
    aput v19, v13, v22

    div-int/lit8 v22, v19, 0x3

    add-int v22, v22, v22

    add-int/lit8 v29, v0, 0x1

    .line 953
    aget-object v0, v3, v0

    aput-object v0, v12, v22

    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_26

    add-int/lit8 v0, v29, 0x1

    add-int/lit8 v22, v22, 0x1

    .line 954
    aget-object v29, v3, v29

    aput-object v29, v12, v22

    move/from16 v22, v14

    goto :goto_20

    :cond_26
    move/from16 v22, v14

    move/from16 v0, v29

    :goto_20
    const/16 v17, 0x1

    goto :goto_25

    :cond_27
    goto :goto_20

    .line 950
    :cond_28
    :goto_21
    if-nez v11, :cond_29

    div-int/lit8 v14, v19, 0x3

    add-int/lit8 v29, v0, 0x1

    add-int/2addr v14, v14

    const/16 v17, 0x1

    add-int/lit8 v14, v14, 0x1

    .line 951
    aget-object v0, v3, v0

    aput-object v0, v12, v14

    move/from16 v0, v29

    :goto_22
    const/16 v17, 0x1

    goto :goto_25

    :cond_29
    goto :goto_22

    .line 962
    :cond_2a
    :goto_23
    div-int/lit8 v14, v19, 0x3

    add-int/lit8 v29, v0, 0x1

    add-int/2addr v14, v14

    const/16 v17, 0x1

    add-int/lit8 v14, v14, 0x1

    .line 950
    aget-object v0, v3, v0

    aput-object v0, v12, v14

    move/from16 v0, v29

    goto :goto_25

    .line 948
    :cond_2b
    const/16 v17, 0x1

    :goto_24
    div-int/lit8 v14, v19, 0x3

    add-int/2addr v14, v14

    add-int/lit8 v14, v14, 0x1

    .line 949
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v29

    aput-object v29, v12, v14

    .line 955
    :goto_25
    move v14, v0

    invoke-virtual {v8, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    and-int/lit16 v0, v4, 0x1000

    const v29, 0xfffff

    move/from16 v30, v14

    const/16 v14, 0x1000

    if-ne v0, v14, :cond_2f

    const/16 v0, 0x11

    if-gt v10, v0, :cond_2f

    add-int/lit8 v0, v15, 0x1

    .line 956
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v15, 0xd800

    if-lt v14, v15, :cond_2d

    and-int/lit16 v14, v14, 0x1fff

    const/16 v18, 0xd

    :goto_26
    add-int/lit8 v29, v0, 0x1

    .line 957
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v15, :cond_2c

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v18

    or-int/2addr v14, v0

    add-int/lit8 v18, v18, 0xd

    move/from16 v0, v29

    goto :goto_26

    :cond_2c
    shl-int v0, v0, v18

    or-int/2addr v14, v0

    goto :goto_27

    .line 962
    :cond_2d
    move/from16 v29, v0

    .line 957
    :goto_27
    add-int v0, v2, v2

    div-int/lit8 v18, v14, 0x20

    add-int v0, v0, v18

    .line 958
    aget-object v15, v3, v0

    .line 959
    move/from16 v31, v2

    instance-of v2, v15, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2e

    .line 960
    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_28

    .line 961
    :cond_2e
    check-cast v15, Ljava/lang/String;

    invoke-static {v6, v15}, Ldlm;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 962
    aput-object v15, v3, v0

    .line 963
    :goto_28
    move-object v0, v3

    invoke-virtual {v8, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v3, v2

    rem-int/lit8 v14, v14, 0x20

    move/from16 v15, v29

    const v2, 0xd800

    move/from16 v29, v3

    goto :goto_29

    .line 962
    :cond_2f
    move/from16 v31, v2

    move-object v0, v3

    const v2, 0xd800

    const/4 v14, 0x0

    .line 963
    :goto_29
    const/16 v3, 0x12

    if-lt v10, v3, :cond_30

    const/16 v3, 0x31

    if-gt v10, v3, :cond_30

    add-int/lit8 v3, v23, 0x1

    .line 964
    aput v1, v13, v23

    move/from16 v23, v3

    goto :goto_2a

    :cond_30
    nop

    .line 947
    :goto_2a
    add-int/lit8 v3, v19, 0x1

    .line 965
    aput v7, v5, v19

    add-int/lit8 v7, v3, 0x1

    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_31

    const/high16 v2, 0x20000000

    goto :goto_2b

    .line 967
    :cond_31
    const/4 v2, 0x0

    .line 965
    :goto_2b
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_32

    const/high16 v4, 0x10000000

    goto :goto_2c

    .line 967
    :cond_32
    const/4 v4, 0x0

    .line 965
    :goto_2c
    or-int/2addr v2, v4

    shl-int/lit8 v4, v10, 0x14

    or-int/2addr v2, v4

    or-int/2addr v1, v2

    .line 966
    aput v1, v5, v3

    add-int/lit8 v19, v7, 0x1

    shl-int/lit8 v1, v14, 0x14

    or-int v1, v1, v29

    .line 967
    aput v1, v5, v7

    move-object v3, v0

    move-object v1, v9

    move v7, v15

    move/from16 v9, v24

    move/from16 v4, v25

    move/from16 v15, v27

    move/from16 v10, v28

    move/from16 v14, v30

    move/from16 v2, v31

    move-object/from16 v0, p0

    goto/16 :goto_15

    .line 954
    :cond_33
    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v27, v15

    new-instance v0, Ldlm;

    move-object/from16 v1, p0

    iget-object v10, v1, Ldlu;->a:Ldlj;

    const/16 v18, 0x0

    .line 968
    move-object v1, v5

    move-object v5, v0

    move-object v6, v1

    move-object v7, v12

    move/from16 v8, v24

    move/from16 v9, v28

    move-object v12, v13

    move/from16 v13, v27

    move/from16 v14, v20

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    invoke-direct/range {v5 .. v18}, Ldlm;-><init>([I[Ljava/lang/Object;IILdlj;Z[IIILdkx;Ldne;Ldll;[B)V

    return-object v0
.end method

.method private final a(I)Ldlw;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Ldlm;->d:[Ljava/lang/Object;

    .line 101
    aget-object v0, v0, p1

    check-cast v0, Ldlw;

    if-eqz v0, :cond_0

    return-object v0

    .line 102
    :cond_0
    sget-object v0, Ldls;->a:Ldls;

    iget-object v1, p0, Ldlm;->d:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object v0

    iget-object v1, p0, Ldlm;->d:[Ljava/lang/Object;

    .line 103
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 83
    invoke-direct {p0, p2}, Ldlm;->d(I)I

    move-result v0

    .line 84
    invoke-direct {p0, p2}, Ldlm;->e(I)I

    move-result v1

    invoke-static {v1}, Ldlm;->i(I)J

    move-result-wide v1

    .line 85
    invoke-static {p1, v1, v2}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 86
    :cond_0
    invoke-direct {p0, p2}, Ldlm;->c(I)Ldkh;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p3

    .line 87
    :cond_1
    check-cast p1, Ldle;

    .line 88
    invoke-direct {p0, p2}, Ldlm;->b(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ldmg;->a(Ljava/lang/Object;)Ldlc;

    move-result-object p2

    .line 89
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ldkh;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p3, :cond_3

    .line 92
    invoke-static {}, Ldmj;->a()Ldmj;

    move-result-object p3

    .line 93
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v3, v4}, Ldld;->a(Ldlc;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 94
    invoke-static {v3}, Ldib;->d(I)Ldhx;

    move-result-object v3

    iget-object v4, v3, Ldhx;->a:Ldij;

    .line 95
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, p2, v5, v2}, Ldld;->a(Ldij;Ldlc;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-virtual {v3}, Ldhx;->a()Ldib;

    move-result-object v2

    invoke-static {p3, v0, v2}, Ldne;->a(Ljava/lang/Object;ILdib;)V

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    .line 98
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    return-object p3
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    .line 1343
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1344
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1345
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1346
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 1348
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1346
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1347
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1348
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0

    .line 553
    invoke-static {p0, p1, p2}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final a(ILjava/lang/Object;Ldik;)V
    .locals 1

    .line 1507
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1508
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Ldik;->a(ILjava/lang/String;)V

    return-void

    .line 1509
    :cond_0
    check-cast p1, Ldib;

    invoke-virtual {p2, p0, p1}, Ldik;->a(ILdib;)V

    return-void
.end method

.method private final a(Ldik;ILjava/lang/Object;I)V
    .locals 4

    if-eqz p3, :cond_0

    .line 1500
    invoke-direct {p0, p4}, Ldlm;->b(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Ldmg;->a(Ljava/lang/Object;)Ldlc;

    move-result-object p4

    .line 1501
    check-cast p3, Ldle;

    .line 1502
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p1, Ldik;->a:Ldij;

    const/4 v2, 0x2

    .line 1503
    invoke-virtual {v1, p2, v2}, Ldij;->b(II)V

    iget-object v1, p1, Ldik;->a:Ldij;

    .line 1504
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p4, v2, v3}, Ldld;->a(Ldlc;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 1505
    invoke-virtual {v1, v2}, Ldij;->d(I)V

    iget-object v1, p1, Ldik;->a:Ldij;

    .line 1506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p4, v2, v0}, Ldld;->a(Ldij;Ldlc;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/Object;ILdlv;)V
    .locals 2

    invoke-static {p2}, Ldlm;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ldlm;->i(I)J

    move-result-wide v0

    .line 1340
    invoke-interface {p3}, Ldlv;->m()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Ldlm;->i:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Ldlm;->i(I)J

    move-result-wide v0

    .line 1341
    invoke-interface {p3}, Ldlv;->l()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p2}, Ldlm;->i(I)J

    move-result-wide v0

    .line 1342
    invoke-interface {p3}, Ldlv;->n()Ldib;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    .line 878
    invoke-direct {p0, p3}, Ldlm;->e(I)I

    move-result v0

    invoke-static {v0}, Ldlm;->i(I)J

    move-result-wide v0

    .line 879
    invoke-direct {p0, p2, p3}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 880
    :cond_0
    invoke-static {p1, v0, v1}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 881
    invoke-static {p2, v0, v1}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 884
    :cond_1
    invoke-static {v2, p2}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 885
    invoke-static {p1, v0, v1, p2}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 886
    invoke-direct {p0, p1, p3}, Ldlm;->b(Ljava/lang/Object;I)V

    return-void

    .line 881
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 882
    invoke-static {p1, v0, v1, p2}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 883
    invoke-direct {p0, p1, p3}, Ldlm;->b(Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method private final a(Ljava/lang/Object;I)Z
    .locals 8

    .line 495
    invoke-direct {p0, p2}, Ldlm;->f(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/32 v5, 0xfffff

    cmp-long v7, v1, v5

    if-nez v7, :cond_14

    .line 496
    invoke-direct {p0, p2}, Ldlm;->e(I)I

    move-result p2

    invoke-static {p2}, Ldlm;->i(I)J

    move-result-wide v0

    invoke-static {p2}, Ldlm;->g(I)I

    move-result p2

    const-wide/16 v5, 0x0

    packed-switch p2, :pswitch_data_0

    .line 511
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 520
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 497
    :pswitch_0
    invoke-static {p1, v0, v1}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v4

    :cond_0
    return v3

    .line 498
    :pswitch_1
    invoke-static {p1, v0, v1}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_1

    return v4

    :cond_1
    return v3

    .line 499
    :pswitch_2
    invoke-static {p1, v0, v1}, Ldms;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v4

    :cond_2
    return v3

    .line 500
    :pswitch_3
    invoke-static {p1, v0, v1}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_3

    return v4

    :cond_3
    return v3

    .line 501
    :pswitch_4
    invoke-static {p1, v0, v1}, Ldms;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v3

    .line 502
    :pswitch_5
    invoke-static {p1, v0, v1}, Ldms;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v4

    :cond_5
    return v3

    .line 503
    :pswitch_6
    invoke-static {p1, v0, v1}, Ldms;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v4

    :cond_6
    return v3

    .line 504
    :pswitch_7
    sget-object p2, Ldib;->b:Ldib;

    invoke-static {p1, v0, v1}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ldib;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v4

    :cond_7
    return v3

    .line 505
    :pswitch_8
    invoke-static {p1, v0, v1}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v4

    :cond_8
    return v3

    .line 506
    :pswitch_9
    invoke-static {p1, v0, v1}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 507
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 508
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v4

    :cond_9
    return v3

    .line 509
    :cond_a
    instance-of p2, p1, Ldib;

    if-eqz p2, :cond_c

    .line 510
    sget-object p2, Ldib;->b:Ldib;

    invoke-virtual {p2, p1}, Ldib;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v4

    :cond_b
    return v3

    .line 521
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 511
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 512
    :pswitch_a
    invoke-static {p1, v0, v1}, Ldms;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 513
    :pswitch_b
    invoke-static {p1, v0, v1}, Ldms;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v4

    :cond_d
    return v3

    .line 514
    :pswitch_c
    invoke-static {p1, v0, v1}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_e

    return v4

    :cond_e
    return v3

    .line 515
    :pswitch_d
    invoke-static {p1, v0, v1}, Ldms;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v4

    :cond_f
    return v3

    .line 516
    :pswitch_e
    invoke-static {p1, v0, v1}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_10

    return v4

    :cond_10
    return v3

    .line 517
    :pswitch_f
    invoke-static {p1, v0, v1}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_11

    return v4

    :cond_11
    return v3

    .line 518
    :pswitch_10
    invoke-static {p1, v0, v1}, Ldms;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v4

    :cond_12
    return v3

    .line 519
    :pswitch_11
    invoke-static {p1, v0, v1}, Ldms;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_13

    return v4

    :cond_13
    return v3

    .line 521
    :cond_14
    invoke-static {p1, v1, v2}, Ldms;->a(Ljava/lang/Object;J)I

    move-result p1

    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v4, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v4

    .line 520
    :cond_15
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;II)Z
    .locals 2

    .line 551
    invoke-direct {p0, p3}, Ldlm;->f(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 552
    invoke-static {p1, v0, v1}, Ldms;->a(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final a(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 522
    invoke-direct {p0, p1, p2}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static a(Ljava/lang/Object;ILdlw;)Z
    .locals 2

    invoke-static {p1}, Ldlm;->i(I)J

    move-result-wide v0

    .line 549
    invoke-static {p0, v0, v1}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 550
    invoke-interface {p2, p0}, Ldlw;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Object;J)D
    .locals 0

    .line 971
    invoke-static {p0, p1, p2}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final b(II)I
    .locals 5

    iget-object v0, p0, Ldlm;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    .line 1354
    invoke-direct {p0, v3}, Ldlm;->d(I)I

    move-result v4

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final b(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Ldlm;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    .line 100
    aget-object p1, v0, p1

    return-object p1
.end method

.method private final b(Ljava/lang/Object;I)V
    .locals 5

    .line 1349
    invoke-direct {p0, p2}, Ldlm;->f(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1350
    :cond_0
    invoke-static {p1, v0, v1}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 1351
    invoke-static {p1, v0, v1, p2}, Ldms;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;II)V
    .locals 2

    .line 1352
    invoke-direct {p0, p3}, Ldlm;->f(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 1353
    invoke-static {p1, v0, v1, p2}, Ldms;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ldik;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Ldlm;->h:Z

    if-eqz v3, :cond_0

    .line 1356
    invoke-static/range {p1 .. p1}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object v3

    .line 1357
    invoke-virtual {v3}, Ldjt;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1358
    invoke-virtual {v3}, Ldjt;->d()Ljava/util/Iterator;

    move-result-object v3

    .line 1359
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    .line 1499
    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1359
    :goto_0
    iget-object v6, v0, Ldlm;->c:[I

    array-length v6, v6

    sget-object v7, Ldlm;->b:Lsun/misc/Unsafe;

    const v8, 0xfffff

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_18

    .line 1360
    invoke-direct {v0, v10}, Ldlm;->e(I)I

    move-result v13

    .line 1361
    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v14

    invoke-static {v13}, Ldlm;->g(I)I

    move-result v15

    iget-boolean v4, v0, Ldlm;->j:Z

    if-nez v4, :cond_2

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    iget-object v4, v0, Ldlm;->c:[I

    add-int/lit8 v16, v10, 0x2

    .line 1362
    aget v4, v4, v16

    and-int v9, v4, v8

    if-eq v9, v11, :cond_1

    int-to-long v11, v9

    .line 1363
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v9

    goto :goto_2

    .line 1496
    :cond_1
    nop

    .line 1363
    :goto_2
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_3

    .line 1496
    :cond_2
    const/4 v4, 0x0

    .line 1363
    :goto_3
    if-eqz v5, :cond_4

    .line 1364
    invoke-static {v5}, Ldll;->a(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    .line 1365
    invoke-static {v2, v5}, Ldll;->a(Ldik;Ljava/util/Map$Entry;)V

    .line 1366
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    invoke-static {v13}, Ldlm;->i(I)J

    move-result-wide v8

    packed-switch v15, :pswitch_data_0

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1367
    :pswitch_0
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1368
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    .line 1369
    invoke-virtual {v2, v14, v4, v8}, Ldik;->b(ILjava/lang/Object;Ldlw;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1367
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1370
    :pswitch_1
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1371
    invoke-static {v1, v8, v9}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldik;->e(IJ)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1370
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1372
    :pswitch_2
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1373
    invoke-static {v1, v8, v9}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->f(II)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1372
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1374
    :pswitch_3
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1375
    invoke-static {v1, v8, v9}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldik;->b(IJ)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1374
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1376
    :pswitch_4
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1377
    invoke-static {v1, v8, v9}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->a(II)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1376
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1378
    :pswitch_5
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1379
    invoke-static {v1, v8, v9}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->b(II)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1378
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1380
    :pswitch_6
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1381
    invoke-static {v1, v8, v9}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->e(II)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1380
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1382
    :pswitch_7
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1383
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldib;

    invoke-virtual {v2, v14, v4}, Ldik;->a(ILdib;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1382
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1384
    :pswitch_8
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1385
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1386
    invoke-direct {v0, v10}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    invoke-virtual {v2, v14, v4, v8}, Ldik;->a(ILjava/lang/Object;Ldlw;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1384
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1387
    :pswitch_9
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1388
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Ldlm;->a(ILjava/lang/Object;Ldik;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1387
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1389
    :pswitch_a
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1390
    invoke-static {v1, v8, v9}, Ldlm;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->a(IZ)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1389
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1391
    :pswitch_b
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1392
    invoke-static {v1, v8, v9}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->d(II)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1391
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1393
    :pswitch_c
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1394
    invoke-static {v1, v8, v9}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldik;->d(IJ)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1393
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1395
    :pswitch_d
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1396
    invoke-static {v1, v8, v9}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->c(II)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1395
    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1397
    :pswitch_e
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1398
    invoke-static {v1, v8, v9}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldik;->c(IJ)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1397
    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1399
    :pswitch_f
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1400
    invoke-static {v1, v8, v9}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldik;->a(IJ)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1399
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1401
    :pswitch_10
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1402
    invoke-static {v1, v8, v9}, Ldlm;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->a(IF)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1401
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1403
    :pswitch_11
    invoke-direct {v0, v1, v14, v10}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1404
    invoke-static {v1, v8, v9}, Ldlm;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldik;->a(ID)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1403
    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1405
    :pswitch_12
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v10}, Ldlm;->a(Ldik;ILjava/lang/Object;I)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1406
    :pswitch_13
    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    .line 1407
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1408
    invoke-direct {v0, v10}, Ldlm;->a(I)Ldlw;

    move-result-object v9

    .line 1409
    invoke-static {v4, v8, v2, v9}, Ldlx;->b(ILjava/util/List;Ldik;Ldlw;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1410
    :pswitch_14
    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1411
    const/4 v13, 0x1

    invoke-static {v4, v8, v2, v13}, Ldlx;->e(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1412
    :pswitch_15
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1413
    invoke-static {v4, v8, v2, v13}, Ldlx;->j(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1414
    :pswitch_16
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1415
    invoke-static {v4, v8, v2, v13}, Ldlx;->g(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1416
    :pswitch_17
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1417
    invoke-static {v4, v8, v2, v13}, Ldlx;->l(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1418
    :pswitch_18
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1419
    invoke-static {v4, v8, v2, v13}, Ldlx;->m(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1420
    :pswitch_19
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1421
    invoke-static {v4, v8, v2, v13}, Ldlx;->i(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1422
    :pswitch_1a
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1423
    invoke-static {v4, v8, v2, v13}, Ldlx;->n(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1424
    :pswitch_1b
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1425
    invoke-static {v4, v8, v2, v13}, Ldlx;->k(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1426
    :pswitch_1c
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1427
    invoke-static {v4, v8, v2, v13}, Ldlx;->f(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1428
    :pswitch_1d
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1429
    invoke-static {v4, v8, v2, v13}, Ldlx;->h(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1430
    :pswitch_1e
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1431
    invoke-static {v4, v8, v2, v13}, Ldlx;->d(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1432
    :pswitch_1f
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1433
    invoke-static {v4, v8, v2, v13}, Ldlx;->c(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1434
    :pswitch_20
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1435
    invoke-static {v4, v8, v2, v13}, Ldlx;->b(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1436
    :pswitch_21
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1437
    invoke-static {v4, v8, v2, v13}, Ldlx;->a(ILjava/util/List;Ldik;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1438
    :pswitch_22
    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1439
    const/4 v13, 0x0

    invoke-static {v4, v8, v2, v13}, Ldlx;->e(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1440
    :pswitch_23
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1441
    invoke-static {v4, v8, v2, v13}, Ldlx;->j(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1442
    :pswitch_24
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1443
    invoke-static {v4, v8, v2, v13}, Ldlx;->g(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1444
    :pswitch_25
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1445
    invoke-static {v4, v8, v2, v13}, Ldlx;->l(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1446
    :pswitch_26
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1447
    invoke-static {v4, v8, v2, v13}, Ldlx;->m(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1448
    :pswitch_27
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1449
    invoke-static {v4, v8, v2, v13}, Ldlx;->i(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1450
    :pswitch_28
    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1451
    invoke-static {v4, v8, v2}, Ldlx;->b(ILjava/util/List;Ldik;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1452
    :pswitch_29
    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    .line 1453
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1454
    invoke-direct {v0, v10}, Ldlm;->a(I)Ldlw;

    move-result-object v9

    .line 1455
    invoke-static {v4, v8, v2, v9}, Ldlx;->a(ILjava/util/List;Ldik;Ldlw;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1456
    :pswitch_2a
    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1457
    invoke-static {v4, v8, v2}, Ldlx;->a(ILjava/util/List;Ldik;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1458
    :pswitch_2b
    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1459
    const/4 v13, 0x0

    invoke-static {v4, v8, v2, v13}, Ldlx;->n(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1460
    :pswitch_2c
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1461
    invoke-static {v4, v8, v2, v13}, Ldlx;->k(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1462
    :pswitch_2d
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1463
    invoke-static {v4, v8, v2, v13}, Ldlx;->f(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1464
    :pswitch_2e
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1465
    invoke-static {v4, v8, v2, v13}, Ldlx;->h(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1466
    :pswitch_2f
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1467
    invoke-static {v4, v8, v2, v13}, Ldlx;->d(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1468
    :pswitch_30
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1469
    invoke-static {v4, v8, v2, v13}, Ldlx;->c(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1470
    :pswitch_31
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1471
    invoke-static {v4, v8, v2, v13}, Ldlx;->b(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    .line 1472
    :pswitch_32
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldlm;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1473
    invoke-static {v4, v8, v2, v13}, Ldlx;->a(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1474
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    .line 1475
    invoke-virtual {v2, v14, v4, v8}, Ldik;->b(ILjava/lang/Object;Ldlw;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1476
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldik;->e(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1477
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->f(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1478
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldik;->b(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1479
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->a(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1480
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->b(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1481
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->e(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1482
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldib;

    invoke-virtual {v2, v14, v4}, Ldik;->a(ILdib;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1483
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1484
    invoke-direct {v0, v10}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    invoke-virtual {v2, v14, v4, v8}, Ldik;->a(ILjava/lang/Object;Ldlw;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1485
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Ldlm;->a(ILjava/lang/Object;Ldik;)V

    goto :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1486
    invoke-static {v1, v8, v9}, Ldms;->c(Ljava/lang/Object;J)Z

    move-result v4

    .line 1487
    invoke-virtual {v2, v14, v4}, Ldik;->a(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1488
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->d(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1489
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldik;->d(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1490
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldik;->c(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1491
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldik;->c(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1492
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldik;->a(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1493
    invoke-static {v1, v8, v9}, Ldms;->d(Ljava/lang/Object;J)F

    move-result v4

    .line 1494
    invoke-virtual {v2, v14, v4}, Ldik;->a(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 1495
    invoke-static {v1, v8, v9}, Ldms;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 1496
    invoke-virtual {v2, v14, v8, v9}, Ldik;->a(ID)V

    .line 1366
    :cond_17
    :goto_4
    add-int/lit8 v10, v10, 0x3

    const v8, 0xfffff

    goto/16 :goto_1

    .line 1496
    :cond_18
    nop

    :goto_5
    if-eqz v5, :cond_1a

    .line 1497
    invoke-static {v2, v5}, Ldll;->a(Ldik;Ljava/util/Map$Entry;)V

    .line 1498
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_19
    const/4 v5, 0x0

    goto :goto_5

    .line 1499
    :cond_1a
    invoke-static/range {p1 .. p2}, Ldlm;->c(Ljava/lang/Object;Ldik;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4

    .line 887
    invoke-direct {p0, p3}, Ldlm;->e(I)I

    move-result v0

    .line 888
    invoke-direct {p0, p3}, Ldlm;->d(I)I

    move-result v1

    invoke-static {v0}, Ldlm;->i(I)J

    move-result-wide v2

    .line 889
    invoke-direct {p0, p2, v1, p3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 890
    :cond_0
    invoke-static {p1, v2, v3}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 891
    invoke-static {p2, v2, v3}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 894
    :cond_1
    invoke-static {v0, p2}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 895
    invoke-static {p1, v2, v3, p2}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 896
    invoke-direct {p0, p1, v1, p3}, Ldlm;->b(Ljava/lang/Object;II)V

    return-void

    .line 891
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 892
    invoke-static {p1, v2, v3, p2}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 893
    invoke-direct {p0, p1, v1, p3}, Ldlm;->b(Ljava/lang/Object;II)V

    :cond_3
    return-void
.end method

.method private final b(Ljava/lang/Object;[BIILdhn;)V
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Ldlm;->b:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_21

    add-int/lit8 v3, v0, 0x1

    .line 1152
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 1153
    invoke-static {v0, v12, v3, v11}, Ldll;->a(I[BILdhn;)I

    move-result v0

    iget v3, v11, Ldhn;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    .line 1155
    :cond_0
    move/from16 v17, v0

    move v4, v3

    .line 1153
    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    .line 1154
    invoke-direct {v15, v5, v2}, Ldlm;->a(II)I

    move-result v0

    move v2, v0

    goto :goto_2

    .line 1155
    :cond_1
    invoke-direct {v15, v5}, Ldlm;->j(I)I

    move-result v0

    move v2, v0

    .line 1154
    :goto_2
    if-ne v2, v10, :cond_2

    move v2, v4

    move/from16 v19, v5

    move-object/from16 v28, v9

    const/16 v18, -0x1

    const/16 v20, 0x0

    goto/16 :goto_d

    .line 1198
    :cond_2
    iget-object v0, v15, Ldlm;->c:[I

    add-int/lit8 v1, v2, 0x1

    .line 1156
    aget v1, v0, v1

    invoke-static {v1}, Ldlm;->g(I)I

    move-result v0

    move-object/from16 v18, v9

    invoke-static {v1}, Ldlm;->i(I)J

    move-result-wide v8

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_16

    iget-object v10, v15, Ldlm;->c:[I

    add-int/lit8 v21, v2, 0x2

    .line 1157
    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    if-eq v10, v7, :cond_5

    if-eq v7, v13, :cond_3

    move/from16 v23, v1

    move/from16 v19, v2

    int-to-long v1, v7

    .line 1158
    move-object/from16 v7, v18

    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    .line 1157
    :cond_3
    move/from16 v23, v1

    move/from16 v19, v2

    move-object/from16 v7, v18

    .line 1158
    :goto_3
    if-eq v10, v13, :cond_4

    int-to-long v1, v10

    .line 1159
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    goto :goto_4

    .line 1185
    :cond_4
    nop

    .line 1159
    :goto_4
    move/from16 v29, v10

    move-object v10, v7

    move/from16 v7, v29

    goto :goto_5

    .line 1185
    :cond_5
    move/from16 v23, v1

    move/from16 v19, v2

    move-object/from16 v10, v18

    .line 1159
    :goto_5
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    goto/16 :goto_9

    .line 1186
    :pswitch_0
    if-nez v3, :cond_6

    .line 1160
    invoke-static {v12, v4, v11}, Ldll;->b([BILdhn;)I

    move-result v17

    iget-wide v0, v11, Ldhn;->b:J

    invoke-static {v0, v1}, Ldie;->a(J)J

    move-result-wide v4

    .line 1161
    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v13, v19

    move-wide v2, v8

    move/from16 v19, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_6
    move/from16 v13, v19

    move/from16 v19, p3

    const v18, 0xfffff

    goto/16 :goto_9

    :pswitch_1
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_7

    .line 1162
    invoke-static {v12, v4, v11}, Ldll;->a([BILdhn;)I

    move-result v0

    iget v1, v11, Ldhn;->a:I

    invoke-static {v1}, Ldie;->f(I)I

    move-result v1

    .line 1163
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_7
    const v18, 0xfffff

    goto/16 :goto_9

    :pswitch_2
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_8

    .line 1164
    invoke-static {v12, v4, v11}, Ldll;->a([BILdhn;)I

    move-result v0

    iget v1, v11, Ldhn;->a:I

    .line 1165
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_8
    const v18, 0xfffff

    goto/16 :goto_9

    :pswitch_3
    move/from16 v13, v19

    move/from16 v19, p3

    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    .line 1166
    invoke-static {v12, v4, v11}, Ldll;->e([BILdhn;)I

    move-result v0

    iget-object v1, v11, Ldhn;->c:Ljava/lang/Object;

    .line 1167
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_9
    const v18, 0xfffff

    goto/16 :goto_9

    :pswitch_4
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_b

    .line 1168
    invoke-direct {v15, v13}, Ldlm;->a(I)Ldlw;

    move-result-object v0

    .line 1169
    move/from16 v2, p4

    const v18, 0xfffff

    invoke-static {v0, v12, v4, v2, v11}, Ldll;->a(Ldlw;[BIILdhn;)I

    move-result v0

    .line 1170
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    iget-object v1, v11, Ldhn;->c:Ljava/lang/Object;

    .line 1171
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_a
    iget-object v3, v11, Ldhn;->c:Ljava/lang/Object;

    .line 1172
    invoke-static {v1, v3}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1173
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1171
    :goto_6
    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    .line 1173
    :cond_b
    move/from16 v2, p4

    const v18, 0xfffff

    goto/16 :goto_9

    :pswitch_5
    move/from16 v2, p4

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    const/4 v0, 0x2

    if-ne v3, v0, :cond_d

    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-nez v0, :cond_c

    .line 1174
    invoke-static {v12, v4, v11}, Ldll;->c([BILdhn;)I

    move-result v0

    goto :goto_7

    .line 1175
    :cond_c
    invoke-static {v12, v4, v11}, Ldll;->d([BILdhn;)I

    move-result v0

    .line 1174
    :goto_7
    iget-object v1, v11, Ldhn;->c:Ljava/lang/Object;

    .line 1176
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    .line 1175
    :cond_d
    goto/16 :goto_9

    :pswitch_6
    move/from16 v2, p4

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_f

    .line 1177
    invoke-static {v12, v4, v11}, Ldll;->b([BILdhn;)I

    move-result v0

    iget-wide v3, v11, Ldhn;->b:J

    const-wide/16 v22, 0x0

    cmp-long v1, v3, v22

    if-eqz v1, :cond_e

    goto :goto_8

    .line 1178
    :cond_e
    const/4 v5, 0x0

    :goto_8
    invoke-static {v14, v8, v9, v5}, Ldms;->a(Ljava/lang/Object;JZ)V

    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    :cond_f
    goto/16 :goto_9

    :pswitch_7
    move/from16 v2, p4

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v1, :cond_10

    .line 1179
    invoke-static {v12, v4}, Ldll;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    :cond_10
    goto/16 :goto_9

    :pswitch_8
    move/from16 v2, p4

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v5, :cond_11

    .line 1180
    invoke-static {v12, v4}, Ldll;->b([BI)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_11
    move v8, v4

    goto/16 :goto_9

    :pswitch_9
    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_12

    .line 1181
    invoke-static {v12, v4, v11}, Ldll;->a([BILdhn;)I

    move-result v0

    iget v1, v11, Ldhn;->a:I

    .line 1182
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_12
    goto/16 :goto_9

    :pswitch_a
    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_13

    .line 1183
    invoke-static {v12, v4, v11}, Ldll;->b([BILdhn;)I

    move-result v17

    iget-wide v4, v11, Ldhn;->b:J

    .line 1184
    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_13
    goto :goto_9

    :pswitch_b
    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v1, :cond_14

    .line 1185
    invoke-static {v12, v4}, Ldll;->d([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Ldms;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_14
    goto :goto_9

    .line 1159
    :pswitch_c
    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v5, :cond_15

    .line 1186
    invoke-static {v12, v4}, Ldll;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Ldms;->a(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_15
    nop

    .line 1197
    :goto_9
    move v2, v4

    move-object/from16 v28, v10

    move/from16 v20, v13

    const/16 v18, -0x1

    goto/16 :goto_d

    .line 1185
    :cond_16
    move/from16 v19, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v18

    const v18, 0xfffff

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x2

    if-ne v3, v0, :cond_19

    .line 1187
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkk;

    .line 1188
    invoke-interface {v0}, Ldkk;->a()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1189
    invoke-interface {v0}, Ldkk;->size()I

    move-result v1

    if-nez v1, :cond_17

    const/16 v1, 0xa

    goto :goto_a

    .line 1193
    :cond_17
    add-int/2addr v1, v1

    .line 1190
    :goto_a
    invoke-interface {v0, v1}, Ldkk;->a(I)Ldkk;

    move-result-object v0

    .line 1191
    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v0

    goto :goto_b

    .line 1193
    :cond_18
    move-object v5, v0

    .line 1192
    :goto_b
    invoke-direct {v15, v13}, Ldlm;->a(I)Ldlw;

    move-result-object v0

    .line 1193
    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move v8, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Ldll;->a(Ldlw;I[BIILdkk;Ldhn;)I

    move-result v0

    move v6, v8

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_19
    move v8, v6

    move v15, v4

    move/from16 v25, v7

    move/from16 v24, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    const/16 v18, -0x1

    goto/16 :goto_c

    :cond_1a
    const/16 v1, 0x31

    if-gt v0, v1, :cond_1c

    move/from16 v1, v23

    int-to-long v1, v1

    .line 1194
    move v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v19

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    const v9, 0xfffff

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v20, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Ldlm;->a(Ljava/lang/Object;[BIIIIIIJIJLdhn;)I

    move-result v0

    if-eq v0, v15, :cond_1b

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_1b
    move v2, v0

    move/from16 v6, v24

    move/from16 v7, v25

    goto/16 :goto_d

    :cond_1c
    move/from16 p3, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_1f

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_1e

    .line 1195
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Ldlm;->a(Ljava/lang/Object;[BIIIJLdhn;)I

    move-result v0

    if-eq v0, v15, :cond_1d

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_1d
    move v2, v0

    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_d

    :cond_1e
    nop

    .line 1197
    :goto_c
    move v2, v15

    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_d

    .line 1196
    :cond_1f
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v19

    move-wide/from16 v10, v26

    move/from16 v12, v20

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Ldlm;->a(Ljava/lang/Object;[BIIIIIIIJILdhn;)I

    move-result v0

    if-eq v0, v15, :cond_20

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_20
    move v2, v0

    move/from16 v6, v24

    move/from16 v7, v25

    .line 1197
    :goto_d
    invoke-static/range {p1 .. p1}, Ldlm;->c(Ljava/lang/Object;)Ldmj;

    move-result-object v4

    .line 1198
    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Ldll;->a(I[BIILdmj;Ldhn;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v9, v28

    const/4 v10, -0x1

    goto/16 :goto_0

    .line 1155
    :cond_21
    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v28, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_22

    int-to-long v1, v7

    .line 1199
    move-object/from16 v3, p1

    move/from16 v6, v24

    move-object/from16 v4, v28

    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_22
    move/from16 v1, p4

    if-ne v0, v1, :cond_23

    .line 1200
    return-void

    :cond_23
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object v0

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c(Ljava/lang/Object;J)F
    .locals 0

    .line 972
    invoke-static {p0, p1, p2}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final c(I)Ldkh;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Ldlm;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 99
    aget-object p1, v0, p1

    check-cast p1, Ldkh;

    return-object p1
.end method

.method static c(Ljava/lang/Object;)Ldmj;
    .locals 2

    .line 104
    check-cast p0, Ldkd;

    iget-object v0, p0, Ldkd;->s:Ldmj;

    .line 105
    sget-object v1, Ldmj;->a:Ldmj;

    if-ne v0, v1, :cond_0

    .line 106
    invoke-static {}, Ldmj;->a()Ldmj;

    move-result-object v0

    iput-object v0, p0, Ldkd;->s:Ldmj;

    :cond_0
    return-object v0
.end method

.method private static final c(Ljava/lang/Object;Ldik;)V
    .locals 0

    .line 1716
    invoke-static {p0}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object p0

    .line 1717
    invoke-virtual {p0, p1}, Ldmj;->a(Ldik;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1, p3}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final d(I)I
    .locals 1

    iget-object v0, p0, Ldlm;->c:[I

    .line 969
    aget p1, v0, p1

    return p1
.end method

.method private static d(Ljava/lang/Object;J)I
    .locals 0

    .line 973
    invoke-static {p0, p1, p2}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final e(I)I
    .locals 1

    iget-object v0, p0, Ldlm;->c:[I

    add-int/lit8 p1, p1, 0x1

    .line 1355
    aget p1, v0, p1

    return p1
.end method

.method private static e(Ljava/lang/Object;J)J
    .locals 0

    .line 974
    invoke-static {p0, p1, p2}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final f(I)I
    .locals 1

    iget-object v0, p0, Ldlm;->c:[I

    add-int/lit8 p1, p1, 0x2

    .line 1339
    aget p1, v0, p1

    return p1
.end method

.method private final f(Ljava/lang/Object;)I
    .locals 13

    sget-object v0, Ldlm;->b:Lsun/misc/Unsafe;

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    iget-object v7, p0, Ldlm;->c:[I

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 108
    invoke-direct {p0, v3}, Ldlm;->e(I)I

    move-result v7

    .line 109
    invoke-direct {p0, v3}, Ldlm;->d(I)I

    move-result v8

    invoke-static {v7}, Ldlm;->g(I)I

    move-result v9

    const/16 v10, 0x11

    if-gt v9, v10, :cond_1

    iget-object v10, p0, Ldlm;->c:[I

    add-int/lit8 v11, v3, 0x2

    .line 110
    aget v10, v10, v11

    and-int v11, v10, v1

    ushr-int/lit8 v10, v10, 0x14

    const/4 v12, 0x1

    shl-int v10, v12, v10

    if-eq v11, v6, :cond_0

    int-to-long v5, v11

    .line 111
    invoke-virtual {v0, p1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v6, v11

    goto :goto_1

    .line 258
    :cond_0
    nop

    .line 111
    :goto_1
    goto :goto_2

    .line 258
    :cond_1
    const/4 v10, 0x0

    .line 111
    :goto_2
    invoke-static {v7}, Ldlm;->i(I)J

    move-result-wide v11

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_3

    .line 112
    :pswitch_0
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 113
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldlj;

    .line 114
    invoke-direct {p0, v3}, Ldlm;->a(I)Ldlw;

    move-result-object v9

    .line 115
    invoke-static {v8, v7, v9}, Ldij;->b(ILdlj;Ldlw;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 116
    :pswitch_1
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 117
    invoke-static {p1, v11, v12}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Ldij;->f(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 118
    :pswitch_2
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 119
    invoke-static {p1, v11, v12}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldij;->i(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 120
    :pswitch_3
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 121
    invoke-static {v8}, Ldij;->t(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 122
    :pswitch_4
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 123
    invoke-static {v8}, Ldij;->s(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 124
    :pswitch_5
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 125
    invoke-static {p1, v11, v12}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldij;->j(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 126
    :pswitch_6
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 127
    invoke-static {p1, v11, v12}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldij;->h(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 128
    :pswitch_7
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 129
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldib;

    .line 130
    invoke-static {v8, v7}, Ldij;->c(ILdib;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 131
    :pswitch_8
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 132
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 133
    invoke-direct {p0, v3}, Ldlm;->a(I)Ldlw;

    move-result-object v9

    invoke-static {v8, v7, v9}, Ldlx;->a(ILjava/lang/Object;Ldlw;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 134
    :pswitch_9
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 135
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 136
    instance-of v9, v7, Ldib;

    if-eqz v9, :cond_2

    .line 137
    check-cast v7, Ldib;

    invoke-static {v8, v7}, Ldij;->c(ILdib;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 138
    :cond_2
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Ldij;->b(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 139
    :pswitch_a
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 140
    invoke-static {v8}, Ldij;->n(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 141
    :pswitch_b
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 142
    invoke-static {v8}, Ldij;->p(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 143
    :pswitch_c
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 144
    invoke-static {v8}, Ldij;->q(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 145
    :pswitch_d
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 146
    invoke-static {p1, v11, v12}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldij;->g(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 147
    :pswitch_e
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 148
    invoke-static {p1, v11, v12}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Ldij;->e(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 149
    :pswitch_f
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 150
    invoke-static {p1, v11, v12}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Ldij;->d(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 151
    :pswitch_10
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 152
    invoke-static {v8}, Ldij;->r(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 153
    :pswitch_11
    invoke-direct {p0, p1, v8, v3}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 154
    invoke-static {v8}, Ldij;->o(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 155
    :pswitch_12
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Ldlm;->b(I)Ljava/lang/Object;

    move-result-object v9

    .line 156
    invoke-static {v8, v7, v9}, Ldmg;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 157
    :pswitch_13
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 158
    invoke-direct {p0, v3}, Ldlm;->a(I)Ldlw;

    move-result-object v9

    .line 159
    invoke-static {v8, v7, v9}, Ldlx;->b(ILjava/util/List;Ldlw;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 160
    :pswitch_14
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 161
    invoke-static {v7}, Ldlx;->c(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 162
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 163
    :pswitch_15
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 164
    invoke-static {v7}, Ldlx;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 165
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 166
    :pswitch_16
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 167
    invoke-static {v7}, Ldlx;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 168
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 169
    :pswitch_17
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 170
    invoke-static {v7}, Ldlx;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 171
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 172
    :pswitch_18
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 173
    invoke-static {v7}, Ldlx;->d(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 174
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 175
    :pswitch_19
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 176
    invoke-static {v7}, Ldlx;->f(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 177
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 178
    :pswitch_1a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 179
    invoke-static {v7}, Ldlx;->j(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 180
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 181
    :pswitch_1b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 182
    invoke-static {v7}, Ldlx;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 183
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 184
    :pswitch_1c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 185
    invoke-static {v7}, Ldlx;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 186
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 187
    :pswitch_1d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 188
    invoke-static {v7}, Ldlx;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 189
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 190
    :pswitch_1e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 191
    invoke-static {v7}, Ldlx;->b(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 192
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 193
    :pswitch_1f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 194
    invoke-static {v7}, Ldlx;->a(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 195
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 196
    :pswitch_20
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 197
    invoke-static {v7}, Ldlx;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 198
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 199
    :pswitch_21
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 200
    invoke-static {v7}, Ldlx;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 201
    invoke-static {v8}, Ldij;->h(I)I

    move-result v8

    invoke-static {v7}, Ldij;->j(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 202
    :pswitch_22
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 203
    invoke-static {v8, v7}, Ldlx;->j(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 204
    :pswitch_23
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 205
    invoke-static {v8, v7}, Ldlx;->i(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 206
    :pswitch_24
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 207
    invoke-static {v8, v7}, Ldlx;->f(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 208
    :pswitch_25
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 209
    invoke-static {v8, v7}, Ldlx;->e(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 210
    :pswitch_26
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 211
    invoke-static {v8, v7}, Ldlx;->d(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 212
    :pswitch_27
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 213
    invoke-static {v8, v7}, Ldlx;->k(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 214
    :pswitch_28
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 215
    invoke-static {v8, v7}, Ldlx;->b(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 216
    :pswitch_29
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Ldlm;->a(I)Ldlw;

    move-result-object v9

    .line 217
    invoke-static {v8, v7, v9}, Ldlx;->a(ILjava/util/List;Ldlw;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 218
    :pswitch_2a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Ldlx;->a(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 219
    :pswitch_2b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 220
    invoke-static {v8, v7}, Ldlx;->c(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 221
    :pswitch_2c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 222
    invoke-static {v8, v7}, Ldlx;->e(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 223
    :pswitch_2d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 224
    invoke-static {v8, v7}, Ldlx;->f(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 225
    :pswitch_2e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 226
    invoke-static {v8, v7}, Ldlx;->g(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 227
    :pswitch_2f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 228
    invoke-static {v8, v7}, Ldlx;->l(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 229
    :pswitch_30
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 230
    invoke-static {v8, v7}, Ldlx;->h(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 231
    :pswitch_31
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 232
    invoke-static {v8, v7}, Ldlx;->e(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 233
    :pswitch_32
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 234
    invoke-static {v8, v7}, Ldlx;->f(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 259
    :pswitch_33
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 235
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldlj;

    .line 236
    invoke-direct {p0, v3}, Ldlm;->a(I)Ldlw;

    move-result-object v9

    .line 237
    invoke-static {v8, v7, v9}, Ldij;->b(ILdlj;Ldlw;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_34
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 238
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Ldij;->f(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_35
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 239
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldij;->i(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_36
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 240
    invoke-static {v8}, Ldij;->t(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_37
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 241
    invoke-static {v8}, Ldij;->s(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_38
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 242
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldij;->j(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_39
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 243
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldij;->h(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_3a
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 244
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldib;

    .line 245
    invoke-static {v8, v7}, Ldij;->c(ILdib;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_3b
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 246
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 247
    invoke-direct {p0, v3}, Ldlm;->a(I)Ldlw;

    move-result-object v9

    invoke-static {v8, v7, v9}, Ldlx;->a(ILjava/lang/Object;Ldlw;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_3c
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 248
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 249
    instance-of v9, v7, Ldib;

    if-eqz v9, :cond_3

    .line 250
    check-cast v7, Ldib;

    invoke-static {v8, v7}, Ldij;->c(ILdib;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    .line 251
    :cond_3
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Ldij;->b(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_3d
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 252
    invoke-static {v8}, Ldij;->n(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_3e
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 253
    invoke-static {v8}, Ldij;->p(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_3f
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 254
    invoke-static {v8}, Ldij;->q(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_40
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 255
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldij;->g(II)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_41
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 256
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Ldij;->e(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_42
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 257
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Ldij;->d(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_43
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 258
    invoke-static {v8}, Ldij;->r(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    .line 232
    :pswitch_44
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 259
    invoke-static {v8}, Ldij;->o(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 217
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    .line 260
    :cond_5
    invoke-static {p1}, Ldlm;->h(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    iget-boolean v0, p0, Ldlm;->h:Z

    if-eqz v0, :cond_8

    .line 261
    invoke-static {p1}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object p1

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p1, Ldjt;->a:Ldme;

    .line 262
    invoke-virtual {v1}, Ldme;->a()I

    move-result v1

    if-ge v2, v1, :cond_6

    iget-object v1, p1, Ldjt;->a:Ldme;

    .line 263
    invoke-virtual {v1, v2}, Ldme;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 264
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldkc;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ldjt;->c(Ldkc;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    iget-object p1, p1, Ldjt;->a:Ldme;

    .line 265
    invoke-virtual {p1}, Ldme;->b()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldkc;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ldjt;->c(Ldkc;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5

    :cond_7
    add-int/2addr v4, v0

    :cond_8
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static f(Ljava/lang/Object;J)Z
    .locals 0

    .line 970
    invoke-static {p0, p1, p2}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static g(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final g(Ljava/lang/Object;)I
    .locals 9

    sget-object v0, Ldlm;->b:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ldlm;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 267
    invoke-direct {p0, v1}, Ldlm;->e(I)I

    move-result v3

    invoke-static {v3}, Ldlm;->g(I)I

    move-result v4

    .line 268
    invoke-direct {p0, v1}, Ldlm;->d(I)I

    move-result v5

    invoke-static {v3}, Ldlm;->i(I)J

    move-result-wide v6

    .line 269
    sget-object v3, Ldju;->J:Ldju;

    iget v3, v3, Ldju;->Z:I

    if-lt v4, v3, :cond_0

    sget-object v3, Ldju;->W:Ldju;

    iget v3, v3, Ldju;->Z:I

    if-gt v4, v3, :cond_0

    iget-object v3, p0, Ldlm;->c:[I

    add-int/lit8 v8, v1, 0x2

    .line 270
    aget v3, v3, v8

    :cond_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 271
    :pswitch_0
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    invoke-static {p1, v6, v7}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldlj;

    .line 273
    invoke-direct {p0, v1}, Ldlm;->a(I)Ldlw;

    move-result-object v4

    .line 274
    invoke-static {v5, v3, v4}, Ldij;->b(ILdlj;Ldlw;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 275
    :pswitch_1
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    invoke-static {p1, v6, v7}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Ldij;->f(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 277
    :pswitch_2
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    invoke-static {p1, v6, v7}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldij;->i(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 279
    :pswitch_3
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 280
    invoke-static {v5}, Ldij;->t(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 281
    :pswitch_4
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    invoke-static {v5}, Ldij;->s(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 283
    :pswitch_5
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 284
    invoke-static {p1, v6, v7}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldij;->j(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 285
    :pswitch_6
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 286
    invoke-static {p1, v6, v7}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldij;->h(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 287
    :pswitch_7
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    invoke-static {p1, v6, v7}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldib;

    .line 289
    invoke-static {v5, v3}, Ldij;->c(ILdib;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 290
    :pswitch_8
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    invoke-static {p1, v6, v7}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 292
    invoke-direct {p0, v1}, Ldlm;->a(I)Ldlw;

    move-result-object v4

    invoke-static {v5, v3, v4}, Ldlx;->a(ILjava/lang/Object;Ldlw;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 293
    :pswitch_9
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    invoke-static {p1, v6, v7}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 295
    instance-of v4, v3, Ldib;

    if-eqz v4, :cond_1

    .line 296
    check-cast v3, Ldib;

    invoke-static {v5, v3}, Ldij;->c(ILdib;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 297
    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Ldij;->b(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 298
    :pswitch_a
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 299
    invoke-static {v5}, Ldij;->n(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 300
    :pswitch_b
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    invoke-static {v5}, Ldij;->p(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 302
    :pswitch_c
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 303
    invoke-static {v5}, Ldij;->q(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 304
    :pswitch_d
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 305
    invoke-static {p1, v6, v7}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldij;->g(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 306
    :pswitch_e
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    invoke-static {p1, v6, v7}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Ldij;->e(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 308
    :pswitch_f
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    invoke-static {p1, v6, v7}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Ldij;->d(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 310
    :pswitch_10
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 311
    invoke-static {v5}, Ldij;->r(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 312
    :pswitch_11
    invoke-direct {p0, p1, v5, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    invoke-static {v5}, Ldij;->o(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 314
    :pswitch_12
    invoke-static {p1, v6, v7}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Ldlm;->b(I)Ljava/lang/Object;

    move-result-object v4

    .line 315
    invoke-static {v5, v3, v4}, Ldmg;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 316
    :pswitch_13
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Ldlm;->a(I)Ldlw;

    move-result-object v4

    .line 317
    invoke-static {v5, v3, v4}, Ldlx;->b(ILjava/util/List;Ldlw;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 318
    :pswitch_14
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 319
    invoke-static {v3}, Ldlx;->c(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 320
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 321
    :pswitch_15
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 322
    invoke-static {v3}, Ldlx;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 323
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 324
    :pswitch_16
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 325
    invoke-static {v3}, Ldlx;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 326
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 327
    :pswitch_17
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 328
    invoke-static {v3}, Ldlx;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 329
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 330
    :pswitch_18
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 331
    invoke-static {v3}, Ldlx;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 332
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 333
    :pswitch_19
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 334
    invoke-static {v3}, Ldlx;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 335
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 336
    :pswitch_1a
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 337
    invoke-static {v3}, Ldlx;->j(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 338
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 339
    :pswitch_1b
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 340
    invoke-static {v3}, Ldlx;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 341
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 342
    :pswitch_1c
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 343
    invoke-static {v3}, Ldlx;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 344
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 345
    :pswitch_1d
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 346
    invoke-static {v3}, Ldlx;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 347
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 348
    :pswitch_1e
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 349
    invoke-static {v3}, Ldlx;->b(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 350
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 351
    :pswitch_1f
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 352
    invoke-static {v3}, Ldlx;->a(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 353
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 354
    :pswitch_20
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 355
    invoke-static {v3}, Ldlx;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 356
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 357
    :pswitch_21
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 358
    invoke-static {v3}, Ldlx;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 359
    invoke-static {v5}, Ldij;->h(I)I

    move-result v4

    invoke-static {v3}, Ldij;->j(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 360
    :pswitch_22
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldlx;->j(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 361
    :pswitch_23
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 362
    invoke-static {v5, v3}, Ldlx;->i(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 363
    :pswitch_24
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldlx;->f(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 364
    :pswitch_25
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldlx;->e(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 365
    :pswitch_26
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 366
    invoke-static {v5, v3}, Ldlx;->d(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 367
    :pswitch_27
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 368
    invoke-static {v5, v3}, Ldlx;->k(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 369
    :pswitch_28
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 370
    invoke-static {v5, v3}, Ldlx;->b(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 371
    :pswitch_29
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Ldlm;->a(I)Ldlw;

    move-result-object v4

    .line 372
    invoke-static {v5, v3, v4}, Ldlx;->a(ILjava/util/List;Ldlw;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 373
    :pswitch_2a
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldlx;->a(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 374
    :pswitch_2b
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldlx;->c(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 375
    :pswitch_2c
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldlx;->e(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 376
    :pswitch_2d
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldlx;->f(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 377
    :pswitch_2e
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 378
    invoke-static {v5, v3}, Ldlx;->g(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 379
    :pswitch_2f
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldlx;->l(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 380
    :pswitch_30
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldlx;->h(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 381
    :pswitch_31
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldlx;->e(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 382
    :pswitch_32
    invoke-static {p1, v6, v7}, Ldlm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldlx;->f(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 383
    :pswitch_33
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 384
    invoke-static {p1, v6, v7}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldlj;

    .line 385
    invoke-direct {p0, v1}, Ldlm;->a(I)Ldlw;

    move-result-object v4

    .line 386
    invoke-static {v5, v3, v4}, Ldij;->b(ILdlj;Ldlw;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 387
    :pswitch_34
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 388
    invoke-static {p1, v6, v7}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Ldij;->f(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 389
    :pswitch_35
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 390
    invoke-static {p1, v6, v7}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldij;->i(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 391
    :pswitch_36
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 392
    invoke-static {v5}, Ldij;->t(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 393
    :pswitch_37
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 394
    invoke-static {v5}, Ldij;->s(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 395
    :pswitch_38
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    invoke-static {p1, v6, v7}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldij;->j(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 397
    :pswitch_39
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 398
    invoke-static {p1, v6, v7}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldij;->h(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 399
    :pswitch_3a
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 400
    invoke-static {p1, v6, v7}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldib;

    .line 401
    invoke-static {v5, v3}, Ldij;->c(ILdib;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 402
    :pswitch_3b
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 403
    invoke-static {p1, v6, v7}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 404
    invoke-direct {p0, v1}, Ldlm;->a(I)Ldlw;

    move-result-object v4

    invoke-static {v5, v3, v4}, Ldlx;->a(ILjava/lang/Object;Ldlw;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 405
    :pswitch_3c
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 406
    invoke-static {p1, v6, v7}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 407
    instance-of v4, v3, Ldib;

    if-eqz v4, :cond_2

    .line 408
    check-cast v3, Ldib;

    invoke-static {v5, v3}, Ldij;->c(ILdib;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 409
    :cond_2
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Ldij;->b(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 410
    :pswitch_3d
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 411
    invoke-static {v5}, Ldij;->n(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 412
    :pswitch_3e
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 413
    invoke-static {v5}, Ldij;->p(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 414
    :pswitch_3f
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    invoke-static {v5}, Ldij;->q(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 416
    :pswitch_40
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 417
    invoke-static {p1, v6, v7}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldij;->g(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 418
    :pswitch_41
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 419
    invoke-static {p1, v6, v7}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Ldij;->e(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 420
    :pswitch_42
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 421
    invoke-static {p1, v6, v7}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Ldij;->d(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 422
    :pswitch_43
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 423
    invoke-static {v5}, Ldij;->r(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 424
    :pswitch_44
    invoke-direct {p0, p1, v1}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 425
    invoke-static {v5}, Ldij;->o(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 372
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 426
    :cond_4
    invoke-static {p1}, Ldlm;->h(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final h(Ljava/lang/Object;)I
    .locals 0

    .line 427
    invoke-static {p0}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object p0

    .line 428
    invoke-virtual {p0}, Ldmj;->c()I

    move-result p0

    return p0
.end method

.method private static h(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static i(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private final j(I)I
    .locals 1

    iget v0, p0, Ldlm;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ldlm;->f:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1337
    invoke-direct {p0, p1, v0}, Ldlm;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Ldlm;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 429
    invoke-direct {p0, v1}, Ldlm;->e(I)I

    move-result v3

    .line 430
    invoke-direct {p0, v1}, Ldlm;->d(I)I

    move-result v4

    invoke-static {v3}, Ldlm;->i(I)J

    move-result-wide v5

    invoke-static {v3}, Ldlm;->g(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 431
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 432
    invoke-static {p1, v5, v6}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 433
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 434
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 435
    invoke-static {p1, v5, v6}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldkl;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 436
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 437
    invoke-static {p1, v5, v6}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 438
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 439
    invoke-static {p1, v5, v6}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldkl;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 440
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 441
    invoke-static {p1, v5, v6}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 442
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 443
    invoke-static {p1, v5, v6}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 444
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 445
    invoke-static {p1, v5, v6}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 446
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 447
    invoke-static {p1, v5, v6}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 448
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 449
    invoke-static {p1, v5, v6}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 450
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 451
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 452
    invoke-static {p1, v5, v6}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 453
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 454
    invoke-static {p1, v5, v6}, Ldlm;->f(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ldkl;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 455
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 456
    invoke-static {p1, v5, v6}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 457
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 458
    invoke-static {p1, v5, v6}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldkl;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 459
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 460
    invoke-static {p1, v5, v6}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 461
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 462
    invoke-static {p1, v5, v6}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldkl;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 463
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 464
    invoke-static {p1, v5, v6}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldkl;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 465
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 466
    invoke-static {p1, v5, v6}, Ldlm;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 467
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 468
    invoke-static {p1, v5, v6}, Ldlm;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldkl;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 469
    invoke-static {p1, v5, v6}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 470
    invoke-static {p1, v5, v6}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 471
    :pswitch_14
    invoke-static {p1, v5, v6}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 472
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :cond_0
    nop

    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto/16 :goto_3

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 473
    invoke-static {p1, v5, v6}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldkl;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 474
    invoke-static {p1, v5, v6}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 475
    invoke-static {p1, v5, v6}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldkl;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 476
    invoke-static {p1, v5, v6}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 477
    invoke-static {p1, v5, v6}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 478
    invoke-static {p1, v5, v6}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 479
    invoke-static {p1, v5, v6}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 480
    :pswitch_1c
    invoke-static {p1, v5, v6}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 481
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_2

    :cond_1
    nop

    :goto_2
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 482
    invoke-static {p1, v5, v6}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 483
    invoke-static {p1, v5, v6}, Ldms;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ldkl;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 484
    invoke-static {p1, v5, v6}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 485
    invoke-static {p1, v5, v6}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldkl;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 486
    invoke-static {p1, v5, v6}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 487
    invoke-static {p1, v5, v6}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldkl;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 488
    invoke-static {p1, v5, v6}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldkl;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 489
    invoke-static {p1, v5, v6}, Ldms;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 490
    invoke-static {p1, v5, v6}, Ldms;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 491
    invoke-static {v3, v4}, Ldkl;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 430
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 491
    :cond_3
    mul-int/lit8 v2, v2, 0x35

    .line 492
    invoke-static {p1}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Ldlm;->h:Z

    if-eqz v0, :cond_4

    mul-int/lit8 v2, v2, 0x35

    .line 494
    invoke-static {p1}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object p1

    invoke-virtual {p1}, Ldjt;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_4
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Ljava/lang/Object;[BIIILdhn;)I
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Ldlm;->b:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_2f

    add-int/lit8 v1, v0, 0x1

    .line 1049
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 1050
    invoke-static {v0, v12, v1, v9}, Ldll;->a(I[BILdhn;)I

    move-result v0

    iget v1, v9, Ldhn;->a:I

    move v4, v1

    move v1, v0

    goto :goto_1

    .line 1052
    :cond_0
    move v4, v0

    .line 1050
    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v2, :cond_1

    div-int/2addr v3, v8

    .line 1051
    invoke-direct {v15, v0, v3}, Ldlm;->a(II)I

    move-result v2

    goto :goto_2

    .line 1052
    :cond_1
    invoke-direct {v15, v0}, Ldlm;->j(I)I

    move-result v2

    .line 1051
    :goto_2
    const-wide/16 v20, 0x0

    const/4 v8, -0x1

    if-ne v2, v8, :cond_2

    move/from16 v23, v0

    move v2, v1

    move/from16 v22, v4

    move/from16 v24, v5

    move-object/from16 v29, v10

    const/16 v19, 0x1

    const/16 v25, -0x1

    const/16 v26, 0x0

    goto/16 :goto_f

    .line 1105
    :cond_2
    iget-object v3, v15, Ldlm;->c:[I

    add-int/lit8 v23, v2, 0x1

    .line 1053
    aget v3, v3, v23

    invoke-static {v3}, Ldlm;->g(I)I

    move-result v11

    move/from16 v24, v0

    move/from16 v23, v1

    invoke-static {v3}, Ldlm;->i(I)J

    move-result-wide v0

    const/16 v8, 0x11

    move-wide/from16 v26, v0

    if-gt v11, v8, :cond_19

    iget-object v1, v15, Ldlm;->c:[I

    add-int/lit8 v8, v2, 0x2

    .line 1054
    aget v1, v1, v8

    ushr-int/lit8 v8, v1, 0x14

    const/16 v22, 0x1

    shl-int v8, v22, v8

    const v13, 0xfffff

    and-int/2addr v1, v13

    if-eq v1, v6, :cond_4

    if-eq v6, v13, :cond_3

    move/from16 v28, v1

    int-to-long v0, v6

    .line 1055
    invoke-virtual {v10, v14, v0, v1, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    .line 1054
    :cond_3
    move/from16 v28, v1

    .line 1055
    :goto_3
    move/from16 v0, v28

    int-to-long v5, v0

    .line 1056
    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v6, v5

    goto :goto_4

    .line 1091
    :cond_4
    move/from16 v28, v6

    move v6, v5

    .line 1056
    :goto_4
    const/4 v0, 0x5

    packed-switch v11, :pswitch_data_0

    move v11, v2

    move v13, v4

    move/from16 v2, v23

    move-wide/from16 v4, v26

    const/4 v1, 0x1

    const v23, 0xfffff

    const/4 v0, 0x3

    if-ne v7, v0, :cond_18

    .line 1057
    invoke-direct {v15, v11}, Ldlm;->a(I)Ldlw;

    move-result-object v0

    shl-int/lit8 v1, v24, 0x3

    or-int/lit8 v7, v1, 0x4

    .line 1058
    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v22, v13

    move-wide v12, v4

    move v4, v7

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Ldll;->a(Ldlw;[BIIILdhn;)I

    move-result v0

    and-int v1, v6, v8

    if-nez v1, :cond_17

    iget-object v1, v9, Ldhn;->c:Ljava/lang/Object;

    .line 1059
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 1092
    :pswitch_0
    if-nez v7, :cond_5

    .line 1063
    move/from16 v1, v23

    invoke-static {v12, v1, v9}, Ldll;->b([BILdhn;)I

    move-result v7

    iget-wide v0, v9, Ldhn;->b:J

    invoke-static {v0, v1}, Ldie;->a(J)J

    move-result-wide v17

    .line 1064
    move/from16 v11, v24

    move-object v0, v10

    move-object/from16 v1, p1

    move v5, v2

    move-wide/from16 v2, v26

    move v13, v4

    move v11, v5

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v8

    move v0, v7

    move v3, v11

    move v1, v13

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_5
    move v11, v2

    move v13, v4

    move/from16 v1, v23

    move v2, v1

    move/from16 v22, v13

    const/4 v1, 0x1

    const v23, 0xfffff

    goto/16 :goto_a

    :pswitch_1
    move v11, v2

    move v13, v4

    move/from16 v1, v23

    if-nez v7, :cond_6

    .line 1065
    invoke-static {v12, v1, v9}, Ldll;->a([BILdhn;)I

    move-result v0

    iget v1, v9, Ldhn;->a:I

    invoke-static {v1}, Ldie;->f(I)I

    move-result v1

    .line 1066
    move-wide/from16 v4, v26

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v5, v6, v8

    move v3, v11

    move v1, v13

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_6
    move v2, v1

    move/from16 v22, v13

    const/4 v1, 0x1

    const v23, 0xfffff

    goto/16 :goto_a

    :pswitch_2
    move v11, v2

    move v13, v4

    move/from16 v1, v23

    move-wide/from16 v4, v26

    if-nez v7, :cond_9

    .line 1067
    invoke-static {v12, v1, v9}, Ldll;->a([BILdhn;)I

    move-result v0

    iget v1, v9, Ldhn;->a:I

    .line 1068
    invoke-direct {v15, v11}, Ldlm;->c(I)Ldkh;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1069
    invoke-interface {v2, v1}, Ldkh;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    .line 1071
    :cond_7
    invoke-static/range {p1 .. p1}, Ldlm;->c(Ljava/lang/Object;)Ldmj;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Ldmj;->a(ILjava/lang/Object;)V

    move v5, v6

    move v3, v11

    move v1, v13

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 1070
    :cond_8
    :goto_5
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v5, v6, v8

    move v3, v11

    move v1, v13

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 1071
    :cond_9
    move v2, v1

    move/from16 v22, v13

    const/4 v1, 0x1

    const v23, 0xfffff

    goto/16 :goto_a

    :pswitch_3
    move v11, v2

    move v13, v4

    move/from16 v1, v23

    move-wide/from16 v4, v26

    const/4 v0, 0x2

    if-ne v7, v0, :cond_a

    .line 1072
    invoke-static {v12, v1, v9}, Ldll;->e([BILdhn;)I

    move-result v0

    iget-object v1, v9, Ldhn;->c:Ljava/lang/Object;

    .line 1073
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v5, v6, v8

    move v3, v11

    move v1, v13

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_a
    move v2, v1

    move/from16 v22, v13

    const/4 v1, 0x1

    const v23, 0xfffff

    goto/16 :goto_a

    :pswitch_4
    move v11, v2

    move v13, v4

    move/from16 v1, v23

    move-wide/from16 v4, v26

    const/4 v0, 0x2

    if-ne v7, v0, :cond_c

    .line 1074
    invoke-direct {v15, v11}, Ldlm;->a(I)Ldlw;

    move-result-object v0

    .line 1075
    move/from16 v2, p4

    const v23, 0xfffff

    invoke-static {v0, v12, v1, v2, v9}, Ldll;->a(Ldlw;[BIILdhn;)I

    move-result v0

    and-int v1, v6, v8

    if-nez v1, :cond_b

    iget-object v1, v9, Ldhn;->c:Ljava/lang/Object;

    .line 1076
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    .line 1077
    :cond_b
    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v9, Ldhn;->c:Ljava/lang/Object;

    .line 1078
    invoke-static {v1, v3}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1079
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1076
    :goto_6
    or-int v5, v6, v8

    move v3, v11

    move v1, v13

    move/from16 v6, v28

    move/from16 v11, p5

    move v13, v2

    move/from16 v2, v24

    goto/16 :goto_0

    .line 1079
    :cond_c
    move/from16 v2, p4

    const v23, 0xfffff

    move v2, v1

    move/from16 v22, v13

    const/4 v1, 0x1

    goto/16 :goto_a

    :pswitch_5
    move v11, v2

    move v13, v4

    move/from16 v1, v23

    move-wide/from16 v4, v26

    const v23, 0xfffff

    move/from16 v2, p4

    const/4 v0, 0x2

    if-ne v7, v0, :cond_e

    const/high16 v0, 0x20000000

    and-int/2addr v0, v3

    if-nez v0, :cond_d

    .line 1080
    invoke-static {v12, v1, v9}, Ldll;->c([BILdhn;)I

    move-result v0

    goto :goto_7

    .line 1081
    :cond_d
    invoke-static {v12, v1, v9}, Ldll;->d([BILdhn;)I

    move-result v0

    .line 1080
    :goto_7
    iget-object v1, v9, Ldhn;->c:Ljava/lang/Object;

    .line 1082
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v5, v6, v8

    move v3, v11

    move v1, v13

    move/from16 v6, v28

    move/from16 v11, p5

    move v13, v2

    move/from16 v2, v24

    goto/16 :goto_0

    .line 1081
    :cond_e
    move v2, v1

    move/from16 v22, v13

    const/4 v1, 0x1

    goto/16 :goto_a

    :pswitch_6
    move v11, v2

    move v13, v4

    move/from16 v1, v23

    move-wide/from16 v4, v26

    const v23, 0xfffff

    move/from16 v2, p4

    if-nez v7, :cond_10

    .line 1083
    invoke-static {v12, v1, v9}, Ldll;->b([BILdhn;)I

    move-result v0

    move/from16 p3, v0

    iget-wide v0, v9, Ldhn;->b:J

    cmp-long v3, v0, v20

    if-eqz v3, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    .line 1084
    :cond_f
    const/4 v0, 0x0

    :goto_8
    invoke-static {v14, v4, v5, v0}, Ldms;->a(Ljava/lang/Object;JZ)V

    or-int v5, v6, v8

    move/from16 v0, p3

    move v3, v11

    move v1, v13

    move/from16 v6, v28

    move/from16 v11, p5

    move v13, v2

    move/from16 v2, v24

    goto/16 :goto_0

    :cond_10
    move v2, v1

    move/from16 v22, v13

    const/4 v1, 0x1

    goto/16 :goto_a

    :pswitch_7
    move v11, v2

    move v13, v4

    move/from16 v1, v23

    move-wide/from16 v4, v26

    const v23, 0xfffff

    move/from16 v2, p4

    if-ne v7, v0, :cond_11

    .line 1085
    invoke-static {v12, v1}, Ldll;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v1, 0x4

    or-int v5, v6, v8

    move v3, v11

    move v1, v13

    move/from16 v6, v28

    move/from16 v11, p5

    move v13, v2

    move/from16 v2, v24

    goto/16 :goto_0

    :cond_11
    move v2, v1

    move/from16 v22, v13

    const/4 v1, 0x1

    goto/16 :goto_a

    :pswitch_8
    move v11, v2

    move v13, v4

    move/from16 v1, v23

    move-wide/from16 v4, v26

    const v23, 0xfffff

    move/from16 v2, p4

    const/4 v0, 0x1

    if-ne v7, v0, :cond_12

    .line 1086
    invoke-static {v12, v1}, Ldll;->b([BI)J

    move-result-wide v17

    move-object v0, v10

    move v7, v1

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    or-int v5, v6, v8

    move v3, v11

    move v1, v13

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_12
    move v7, v1

    move v2, v7

    move/from16 v22, v13

    const/4 v1, 0x1

    goto/16 :goto_a

    :pswitch_9
    move v11, v2

    move v13, v4

    move/from16 v2, v23

    move-wide/from16 v4, v26

    const v23, 0xfffff

    if-nez v7, :cond_13

    .line 1087
    invoke-static {v12, v2, v9}, Ldll;->a([BILdhn;)I

    move-result v0

    iget v1, v9, Ldhn;->a:I

    .line 1088
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v5, v6, v8

    move v3, v11

    move v1, v13

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_13
    move/from16 v22, v13

    const/4 v1, 0x1

    goto/16 :goto_a

    :pswitch_a
    move v11, v2

    move v13, v4

    move/from16 v2, v23

    move-wide/from16 v4, v26

    const v23, 0xfffff

    if-nez v7, :cond_14

    .line 1089
    invoke-static {v12, v2, v9}, Ldll;->b([BILdhn;)I

    move-result v7

    iget-wide v2, v9, Ldhn;->b:J

    .line 1090
    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v17, v2

    move-wide v2, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v8

    move v0, v7

    move v3, v11

    move v1, v13

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_14
    move/from16 v22, v13

    const/4 v1, 0x1

    goto/16 :goto_a

    :pswitch_b
    move v11, v2

    move v13, v4

    move/from16 v2, v23

    move-wide/from16 v4, v26

    const v23, 0xfffff

    if-ne v7, v0, :cond_15

    .line 1091
    invoke-static {v12, v2}, Ldll;->d([BI)F

    move-result v0

    invoke-static {v14, v4, v5, v0}, Ldms;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v2, 0x4

    or-int v5, v6, v8

    move v3, v11

    move v1, v13

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_15
    move/from16 v22, v13

    const/4 v1, 0x1

    goto :goto_a

    .line 1062
    :pswitch_c
    move v11, v2

    move v13, v4

    move/from16 v2, v23

    move-wide/from16 v4, v26

    const v23, 0xfffff

    const/4 v1, 0x1

    if-ne v7, v1, :cond_16

    .line 1092
    invoke-static {v12, v2}, Ldll;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v4, v5, v0, v1}, Ldms;->a(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v2, 0x8

    or-int v5, v6, v8

    move v3, v11

    move v1, v13

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_16
    move/from16 v22, v13

    goto :goto_a

    .line 1060
    :cond_17
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Ldhn;->c:Ljava/lang/Object;

    .line 1061
    invoke-static {v1, v2}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1062
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1059
    :goto_9
    or-int v5, v6, v8

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v11

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    .line 1062
    :cond_18
    move/from16 v22, v13

    .line 1051
    :goto_a
    move-object/from16 v29, v10

    move/from16 v26, v11

    move/from16 v23, v24

    const/16 v19, 0x1

    const/16 v25, -0x1

    move/from16 v24, v6

    goto/16 :goto_e

    .line 1091
    :cond_19
    move/from16 v22, v4

    move v4, v11

    move/from16 v8, v24

    move-wide/from16 v12, v26

    const/4 v1, 0x1

    move v11, v2

    move/from16 v2, v23

    const v23, 0xfffff

    const/16 v0, 0x1b

    if-ne v4, v0, :cond_1d

    const/4 v0, 0x2

    if-ne v7, v0, :cond_1c

    .line 1093
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkk;

    .line 1094
    invoke-interface {v0}, Ldkk;->a()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1095
    invoke-interface {v0}, Ldkk;->size()I

    move-result v1

    if-nez v1, :cond_1a

    const/16 v3, 0xa

    goto :goto_b

    .line 1099
    :cond_1a
    add-int v3, v1, v1

    .line 1096
    :goto_b
    invoke-interface {v0, v3}, Ldkk;->a(I)Ldkk;

    move-result-object v0

    .line 1097
    invoke-virtual {v10, v14, v12, v13, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v7, v0

    goto :goto_c

    .line 1099
    :cond_1b
    move-object v7, v0

    .line 1098
    :goto_c
    invoke-direct {v15, v11}, Ldlm;->a(I)Ldlw;

    move-result-object v0

    .line 1099
    move/from16 v1, v22

    move v3, v2

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v24, v5

    move-object v5, v7

    move/from16 v28, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Ldll;->a(Ldlw;I[BIILdkk;Ldhn;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v2, v8

    move v3, v11

    move/from16 v5, v24

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_1c
    move v3, v2

    move/from16 v24, v5

    move/from16 v28, v6

    move v15, v3

    move/from16 v23, v8

    move-object/from16 v29, v10

    move/from16 v26, v11

    const/16 v19, 0x1

    const/16 v25, -0x1

    goto/16 :goto_d

    :cond_1d
    move/from16 v24, v5

    move/from16 v28, v6

    move v6, v2

    const/16 v0, 0x31

    if-gt v4, v0, :cond_1f

    int-to-long v2, v3

    .line 1100
    move-object/from16 v0, p0

    const/16 v18, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v26, v2

    move-object/from16 v2, p2

    const/16 v5, 0xa

    move v3, v6

    move/from16 p3, v4

    move/from16 v4, p4

    move/from16 v5, v22

    move v15, v6

    move v6, v8

    move/from16 v23, v8

    const/16 v19, 0x1

    const/16 v25, -0x1

    move v8, v11

    move-object/from16 v29, v10

    move-wide/from16 v9, v26

    move/from16 v26, v11

    move/from16 v11, p3

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Ldlm;->a(Ljava/lang/Object;[BIIIIIIJIJLdhn;)I

    move-result v0

    if-eq v0, v15, :cond_1e

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v5, v24

    move/from16 v3, v26

    move/from16 v6, v28

    move-object/from16 v10, v29

    goto/16 :goto_0

    :cond_1e
    move v2, v0

    move/from16 v6, v28

    goto/16 :goto_f

    :cond_1f
    move/from16 p3, v4

    move v15, v6

    move/from16 v23, v8

    move-object/from16 v29, v10

    move/from16 v26, v11

    const/16 v19, 0x1

    const/16 v25, -0x1

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_22

    const/4 v0, 0x2

    if-ne v7, v0, :cond_21

    .line 1101
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v26

    move-wide v6, v12

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Ldlm;->a(Ljava/lang/Object;[BIIIJLdhn;)I

    move-result v0

    if-eq v0, v15, :cond_20

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v5, v24

    move/from16 v3, v26

    move/from16 v6, v28

    move-object/from16 v10, v29

    goto/16 :goto_0

    :cond_20
    move v2, v0

    move/from16 v6, v28

    goto :goto_f

    :cond_21
    nop

    .line 1051
    :goto_d
    move v2, v15

    :goto_e
    move/from16 v6, v28

    goto :goto_f

    .line 1102
    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v8, v3

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v22

    move/from16 v6, v23

    move-wide v10, v12

    move/from16 v12, v26

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Ldlm;->a(Ljava/lang/Object;[BIIIIIIIJILdhn;)I

    move-result v0

    if-eq v0, v15, :cond_23

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v5, v24

    move/from16 v3, v26

    move/from16 v6, v28

    move-object/from16 v10, v29

    goto/16 :goto_0

    :cond_23
    move v2, v0

    move/from16 v6, v28

    .line 1051
    :goto_f
    move/from16 v7, p5

    move/from16 v8, v22

    if-ne v8, v7, :cond_24

    if-eqz v7, :cond_24

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move v0, v2

    move v2, v6

    move v1, v8

    move/from16 v5, v24

    move/from16 v6, p4

    goto/16 :goto_17

    .line 1150
    :cond_24
    move-object/from16 v9, p0

    iget-boolean v0, v9, Ldlm;->h:Z

    if-eqz v0, :cond_2e

    move-object/from16 v10, p6

    iget-object v0, v10, Ldhn;->d:Ldjr;

    .line 1103
    invoke-static {}, Ldjr;->a()Ldjr;

    move-result-object v1

    if-eq v0, v1, :cond_2d

    iget-object v0, v9, Ldlm;->g:Ldlj;

    iget-object v1, v10, Ldhn;->d:Ldjr;

    .line 1106
    move/from16 v11, v23

    invoke-virtual {v1, v0, v11}, Ldjr;->a(Ldlj;I)Ldjp;

    move-result-object v12

    if-nez v12, :cond_25

    .line 1107
    invoke-static/range {p1 .. p1}, Ldlm;->c(Ljava/lang/Object;)Ldmj;

    move-result-object v4

    .line 1108
    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Ldll;->a(I[BIILdmj;Ldhn;)I

    move-result v0

    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    goto/16 :goto_16

    .line 1109
    :cond_25
    move-object/from16 v13, p1

    move-object v0, v13

    check-cast v0, Ldkb;

    invoke-virtual {v0}, Ldkb;->e()Ldjt;

    .line 1110
    iget-object v14, v0, Ldkb;->b:Ldjt;

    invoke-virtual {v12}, Ldjp;->a()Ldmz;

    move-result-object v1

    .line 1111
    sget-object v3, Ldmz;->n:Ldmz;

    if-ne v1, v3, :cond_28

    .line 1112
    move-object/from16 v15, p2

    invoke-static {v15, v2, v10}, Ldll;->a([BILdhn;)I

    move-result v2

    iget-object v1, v12, Ldjp;->b:Ldkc;

    iget-object v1, v1, Ldkc;->a:Ldkg;

    iget v3, v10, Ldhn;->a:I

    .line 1113
    invoke-interface {v1, v3}, Ldkg;->a(I)Ldkf;

    move-result-object v1

    if-nez v1, :cond_27

    .line 1114
    iget-object v1, v0, Ldkd;->s:Ldmj;

    .line 1115
    sget-object v3, Ldmj;->a:Ldmj;

    if-ne v1, v3, :cond_26

    .line 1116
    invoke-static {}, Ldmj;->a()Ldmj;

    move-result-object v1

    iput-object v1, v0, Ldkd;->s:Ldmj;

    goto :goto_10

    .line 1117
    :cond_26
    nop

    .line 1116
    :goto_10
    iget v0, v10, Ldhn;->a:I

    .line 1117
    invoke-static {v11, v0, v1}, Ldlx;->a(IILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    move/from16 p3, v6

    move/from16 v6, p4

    goto/16 :goto_16

    :cond_27
    iget v0, v10, Ldhn;->a:I

    .line 1118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 p3, v6

    move-object/from16 v0, v17

    move/from16 v6, p4

    goto/16 :goto_12

    .line 1144
    :cond_28
    move-object/from16 v15, p2

    invoke-virtual {v12}, Ldjp;->a()Ldmz;

    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Ldmz;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move/from16 p3, v6

    move/from16 v6, p4

    move-object/from16 v0, v17

    goto/16 :goto_12

    .line 1126
    :pswitch_d
    invoke-static {v15, v2, v10}, Ldll;->b([BILdhn;)I

    move-result v2

    iget-wide v0, v10, Ldhn;->b:J

    invoke-static {v0, v1}, Ldie;->a(J)J

    move-result-wide v0

    .line 1127
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move/from16 p3, v6

    move-object/from16 v0, v17

    move/from16 v6, p4

    goto/16 :goto_12

    .line 1128
    :pswitch_e
    invoke-static {v15, v2, v10}, Ldll;->a([BILdhn;)I

    move-result v2

    iget v0, v10, Ldhn;->a:I

    invoke-static {v0}, Ldie;->f(I)I

    move-result v0

    .line 1129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 p3, v6

    move-object/from16 v0, v17

    move/from16 v6, p4

    goto/16 :goto_12

    .line 1052
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1151
    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1125
    :pswitch_10
    invoke-static {v15, v2, v10}, Ldll;->e([BILdhn;)I

    move-result v2

    iget-object v0, v10, Ldhn;->c:Ljava/lang/Object;

    move/from16 p3, v6

    move/from16 v6, p4

    goto/16 :goto_12

    .line 1120
    :pswitch_11
    sget-object v0, Ldls;->a:Ldls;

    iget-object v1, v12, Ldjp;->a:Ldlj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object v0

    .line 1121
    move/from16 v5, p4

    invoke-static {v0, v15, v2, v5, v10}, Ldll;->a(Ldlw;[BIILdhn;)I

    move-result v2

    iget-object v0, v10, Ldhn;->c:Ljava/lang/Object;

    move/from16 p3, v6

    move v6, v5

    goto/16 :goto_12

    .line 1122
    :pswitch_12
    move/from16 v5, p4

    sget-object v0, Ldls;->a:Ldls;

    iget-object v1, v12, Ldjp;->a:Ldlj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object v0

    shl-int/lit8 v1, v11, 0x3

    or-int/lit8 v4, v1, 0x4

    .line 1123
    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 p3, v6

    move v6, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Ldll;->a(Ldlw;[BIIILdhn;)I

    move-result v2

    iget-object v0, v10, Ldhn;->c:Ljava/lang/Object;

    goto/16 :goto_12

    .line 1124
    :pswitch_13
    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Ldll;->c([BILdhn;)I

    move-result v2

    iget-object v0, v10, Ldhn;->c:Ljava/lang/Object;

    goto/16 :goto_12

    .line 1130
    :pswitch_14
    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Ldll;->b([BILdhn;)I

    move-result v2

    iget-wide v0, v10, Ldhn;->b:J

    cmp-long v3, v0, v20

    if-eqz v3, :cond_29

    goto :goto_11

    .line 1131
    :cond_29
    const/16 v19, 0x0

    :goto_11
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    goto/16 :goto_12

    .line 1132
    :pswitch_15
    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2}, Ldll;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, v17

    goto :goto_12

    .line 1133
    :pswitch_16
    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2}, Ldll;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    add-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v17

    goto :goto_12

    .line 1134
    :pswitch_17
    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Ldll;->a([BILdhn;)I

    move-result v2

    iget v0, v10, Ldhn;->a:I

    .line 1135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    goto :goto_12

    .line 1136
    :pswitch_18
    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Ldll;->b([BILdhn;)I

    move-result v2

    iget-wide v0, v10, Ldhn;->b:J

    .line 1137
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    goto :goto_12

    .line 1138
    :pswitch_19
    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2}, Ldll;->d([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, v17

    goto :goto_12

    .line 1139
    :pswitch_1a
    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2}, Ldll;->c([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    add-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v17

    .line 1118
    :goto_12
    invoke-virtual {v12}, Ldjp;->b()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v12, Ldjp;->b:Ldkc;

    .line 1140
    invoke-virtual {v14, v1, v0}, Ldjt;->b(Ldkc;Ljava/lang/Object;)V

    goto :goto_14

    :cond_2a
    invoke-virtual {v12}, Ldjp;->a()Ldmz;

    move-result-object v1

    .line 1141
    invoke-virtual {v1}, Ldmz;->ordinal()I

    move-result v1

    const/16 v3, 0x9

    if-eq v1, v3, :cond_2b

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2b

    goto :goto_13

    :cond_2b
    iget-object v1, v12, Ldjp;->b:Ldkc;

    .line 1142
    invoke-virtual {v14, v1}, Ldjt;->a(Ldkc;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 1143
    invoke-static {v1, v0}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2c
    :goto_13
    iget-object v1, v12, Ldjp;->b:Ldkc;

    .line 1144
    invoke-virtual {v14, v1, v0}, Ldjt;->a(Ldkc;Ljava/lang/Object;)V

    .line 1108
    :goto_14
    move v0, v2

    goto :goto_16

    .line 1103
    :cond_2d
    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v11, v23

    move/from16 v6, p4

    goto :goto_15

    .line 1150
    :cond_2e
    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move-object/from16 v10, p6

    move/from16 p3, v6

    move/from16 v11, v23

    move/from16 v6, p4

    .line 1104
    :goto_15
    invoke-static/range {p1 .. p1}, Ldlm;->c(Ljava/lang/Object;)Ldmj;

    move-result-object v4

    .line 1105
    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Ldll;->a(I[BIILdmj;Ldhn;)I

    move-result v0

    .line 1108
    :goto_16
    move v1, v8

    move v2, v11

    move-object v14, v13

    move-object v12, v15

    move/from16 v5, v24

    move/from16 v3, v26

    move v13, v6

    move v11, v7

    move-object v15, v9

    move-object v9, v10

    move-object/from16 v10, v29

    move/from16 v6, p3

    goto/16 :goto_0

    .line 1151
    :cond_2f
    move/from16 v24, v5

    move/from16 v28, v6

    move-object/from16 v29, v10

    move v7, v11

    move v6, v13

    move-object v13, v14

    move-object v9, v15

    move/from16 v2, v28

    .line 1051
    :goto_17
    const v3, 0xfffff

    if-eq v2, v3, :cond_30

    int-to-long v2, v2

    .line 1145
    move-object/from16 v4, v29

    invoke-virtual {v4, v13, v2, v3, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_30
    iget v2, v9, Ldlm;->l:I

    move-object/from16 v3, v17

    :goto_18
    iget v4, v9, Ldlm;->m:I

    if-ge v2, v4, :cond_31

    iget-object v4, v9, Ldlm;->k:[I

    .line 1146
    aget v4, v4, v2

    .line 1147
    invoke-direct {v9, v13, v4, v3}, Ldlm;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldmj;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_31
    if-eqz v3, :cond_32

    .line 1148
    invoke-static {v13, v3}, Ldne;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    if-nez v7, :cond_34

    if-ne v0, v6, :cond_33

    goto :goto_19

    .line 1149
    :cond_33
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object v0

    throw v0

    :cond_34
    if-gt v0, v6, :cond_35

    if-ne v1, v7, :cond_35

    :goto_19
    return v0

    .line 1150
    :cond_35
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object v0

    goto :goto_1b

    :goto_1a
    throw v0

    :goto_1b
    goto :goto_1a

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_f
        :pswitch_15
        :pswitch_16
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ldlm;->g:Ldlj;

    check-cast v0, Ldkd;

    .line 897
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ldik;)V
    .locals 12

    iget-boolean v0, p0, Ldlm;->j:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Ldlm;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1510
    invoke-static {p1}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object v0

    .line 1511
    invoke-virtual {v0}, Ldjt;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1512
    invoke-virtual {v0}, Ldjt;->d()Ljava/util/Iterator;

    move-result-object v0

    .line 1513
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    .line 1714
    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 1513
    :goto_0
    iget-object v3, p0, Ldlm;->c:[I

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 1514
    invoke-direct {p0, v5}, Ldlm;->e(I)I

    move-result v6

    .line 1515
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    :goto_2
    if-eqz v2, :cond_2

    .line 1516
    invoke-static {v2}, Ldll;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_2

    .line 1517
    invoke-static {p2, v2}, Ldll;->a(Ldik;Ljava/util/Map$Entry;)V

    .line 1518
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_2

    :cond_2
    invoke-static {v6}, Ldlm;->g(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 1519
    :pswitch_0
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1520
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1521
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    .line 1522
    invoke-virtual {p2, v7, v6, v8}, Ldik;->b(ILjava/lang/Object;Ldlw;)V

    goto/16 :goto_3

    .line 1523
    :pswitch_1
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1524
    invoke-static {p1, v8, v9}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Ldik;->e(IJ)V

    goto/16 :goto_3

    .line 1525
    :pswitch_2
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1526
    invoke-static {p1, v8, v9}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldik;->f(II)V

    goto/16 :goto_3

    .line 1527
    :pswitch_3
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1528
    invoke-static {p1, v8, v9}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Ldik;->b(IJ)V

    goto/16 :goto_3

    .line 1529
    :pswitch_4
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1530
    invoke-static {p1, v8, v9}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldik;->a(II)V

    goto/16 :goto_3

    .line 1531
    :pswitch_5
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1532
    invoke-static {p1, v8, v9}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldik;->b(II)V

    goto/16 :goto_3

    .line 1533
    :pswitch_6
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1534
    invoke-static {p1, v8, v9}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldik;->e(II)V

    goto/16 :goto_3

    .line 1535
    :pswitch_7
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1536
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldib;

    .line 1537
    invoke-virtual {p2, v7, v6}, Ldik;->a(ILdib;)V

    goto/16 :goto_3

    .line 1538
    :pswitch_8
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1539
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1540
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    invoke-virtual {p2, v7, v6, v8}, Ldik;->a(ILjava/lang/Object;Ldlw;)V

    goto/16 :goto_3

    .line 1541
    :pswitch_9
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1542
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Ldlm;->a(ILjava/lang/Object;Ldik;)V

    goto/16 :goto_3

    .line 1543
    :pswitch_a
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1544
    invoke-static {p1, v8, v9}, Ldlm;->f(Ljava/lang/Object;J)Z

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldik;->a(IZ)V

    goto/16 :goto_3

    .line 1545
    :pswitch_b
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1546
    invoke-static {p1, v8, v9}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldik;->d(II)V

    goto/16 :goto_3

    .line 1547
    :pswitch_c
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1548
    invoke-static {p1, v8, v9}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Ldik;->d(IJ)V

    goto/16 :goto_3

    .line 1549
    :pswitch_d
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1550
    invoke-static {p1, v8, v9}, Ldlm;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldik;->c(II)V

    goto/16 :goto_3

    .line 1551
    :pswitch_e
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1552
    invoke-static {p1, v8, v9}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Ldik;->c(IJ)V

    goto/16 :goto_3

    .line 1553
    :pswitch_f
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1554
    invoke-static {p1, v8, v9}, Ldlm;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Ldik;->a(IJ)V

    goto/16 :goto_3

    .line 1555
    :pswitch_10
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1556
    invoke-static {p1, v8, v9}, Ldlm;->c(Ljava/lang/Object;J)F

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldik;->a(IF)V

    goto/16 :goto_3

    .line 1557
    :pswitch_11
    invoke-direct {p0, p1, v7, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1558
    invoke-static {p1, v8, v9}, Ldlm;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Ldik;->a(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1559
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p2, v7, v6, v5}, Ldlm;->a(Ldik;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 1560
    :pswitch_13
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1561
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1562
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    .line 1563
    invoke-static {v7, v6, p2, v8}, Ldlx;->b(ILjava/util/List;Ldik;Ldlw;)V

    goto/16 :goto_3

    .line 1564
    :pswitch_14
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1565
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1566
    invoke-static {v7, v6, p2, v9}, Ldlx;->e(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1567
    :pswitch_15
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1568
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1569
    invoke-static {v7, v6, p2, v9}, Ldlx;->j(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1570
    :pswitch_16
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1571
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1572
    invoke-static {v7, v6, p2, v9}, Ldlx;->g(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1573
    :pswitch_17
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1574
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1575
    invoke-static {v7, v6, p2, v9}, Ldlx;->l(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1576
    :pswitch_18
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1577
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1578
    invoke-static {v7, v6, p2, v9}, Ldlx;->m(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1579
    :pswitch_19
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1580
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1581
    invoke-static {v7, v6, p2, v9}, Ldlx;->i(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1582
    :pswitch_1a
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1583
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1584
    invoke-static {v7, v6, p2, v9}, Ldlx;->n(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1585
    :pswitch_1b
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1586
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1587
    invoke-static {v7, v6, p2, v9}, Ldlx;->k(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1588
    :pswitch_1c
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1589
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1590
    invoke-static {v7, v6, p2, v9}, Ldlx;->f(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1591
    :pswitch_1d
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1592
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1593
    invoke-static {v7, v6, p2, v9}, Ldlx;->h(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1594
    :pswitch_1e
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1595
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1596
    invoke-static {v7, v6, p2, v9}, Ldlx;->d(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1597
    :pswitch_1f
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1598
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1599
    invoke-static {v7, v6, p2, v9}, Ldlx;->c(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1600
    :pswitch_20
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1601
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1602
    invoke-static {v7, v6, p2, v9}, Ldlx;->b(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1603
    :pswitch_21
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v10

    .line 1604
    invoke-static {p1, v10, v11}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1605
    invoke-static {v7, v6, p2, v9}, Ldlx;->a(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1606
    :pswitch_22
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1607
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1608
    invoke-static {v7, v6, p2, v4}, Ldlx;->e(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1609
    :pswitch_23
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1610
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1611
    invoke-static {v7, v6, p2, v4}, Ldlx;->j(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1612
    :pswitch_24
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1613
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1614
    invoke-static {v7, v6, p2, v4}, Ldlx;->g(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1615
    :pswitch_25
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1616
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1617
    invoke-static {v7, v6, p2, v4}, Ldlx;->l(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1618
    :pswitch_26
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1619
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1620
    invoke-static {v7, v6, p2, v4}, Ldlx;->m(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1621
    :pswitch_27
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1622
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1623
    invoke-static {v7, v6, p2, v4}, Ldlx;->i(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1624
    :pswitch_28
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1625
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1626
    invoke-static {v7, v6, p2}, Ldlx;->b(ILjava/util/List;Ldik;)V

    goto/16 :goto_3

    .line 1627
    :pswitch_29
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1628
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1629
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    .line 1630
    invoke-static {v7, v6, p2, v8}, Ldlx;->a(ILjava/util/List;Ldik;Ldlw;)V

    goto/16 :goto_3

    .line 1631
    :pswitch_2a
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1632
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1633
    invoke-static {v7, v6, p2}, Ldlx;->a(ILjava/util/List;Ldik;)V

    goto/16 :goto_3

    .line 1634
    :pswitch_2b
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1635
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1636
    invoke-static {v7, v6, p2, v4}, Ldlx;->n(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1637
    :pswitch_2c
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1638
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1639
    invoke-static {v7, v6, p2, v4}, Ldlx;->k(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1640
    :pswitch_2d
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1641
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1642
    invoke-static {v7, v6, p2, v4}, Ldlx;->f(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1643
    :pswitch_2e
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1644
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1645
    invoke-static {v7, v6, p2, v4}, Ldlx;->h(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1646
    :pswitch_2f
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1647
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1648
    invoke-static {v7, v6, p2, v4}, Ldlx;->d(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1649
    :pswitch_30
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1650
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1651
    invoke-static {v7, v6, p2, v4}, Ldlx;->c(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1652
    :pswitch_31
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1653
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1654
    invoke-static {v7, v6, p2, v4}, Ldlx;->b(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1655
    :pswitch_32
    invoke-direct {p0, v5}, Ldlm;->d(I)I

    move-result v7

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1656
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1657
    invoke-static {v7, v6, p2, v4}, Ldlx;->a(ILjava/util/List;Ldik;Z)V

    goto/16 :goto_3

    .line 1658
    :pswitch_33
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1659
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1660
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    .line 1661
    invoke-virtual {p2, v7, v6, v8}, Ldik;->b(ILjava/lang/Object;Ldlw;)V

    goto/16 :goto_3

    .line 1662
    :pswitch_34
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1663
    invoke-static {p1, v8, v9}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1664
    invoke-virtual {p2, v7, v8, v9}, Ldik;->e(IJ)V

    goto/16 :goto_3

    .line 1665
    :pswitch_35
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1666
    invoke-static {p1, v8, v9}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1667
    invoke-virtual {p2, v7, v6}, Ldik;->f(II)V

    goto/16 :goto_3

    .line 1668
    :pswitch_36
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1669
    invoke-static {p1, v8, v9}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1670
    invoke-virtual {p2, v7, v8, v9}, Ldik;->b(IJ)V

    goto/16 :goto_3

    .line 1671
    :pswitch_37
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1672
    invoke-static {p1, v8, v9}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1673
    invoke-virtual {p2, v7, v6}, Ldik;->a(II)V

    goto/16 :goto_3

    .line 1674
    :pswitch_38
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1675
    invoke-static {p1, v8, v9}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1676
    invoke-virtual {p2, v7, v6}, Ldik;->b(II)V

    goto/16 :goto_3

    .line 1677
    :pswitch_39
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1678
    invoke-static {p1, v8, v9}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1679
    invoke-virtual {p2, v7, v6}, Ldik;->e(II)V

    goto/16 :goto_3

    .line 1680
    :pswitch_3a
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1681
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldib;

    .line 1682
    invoke-virtual {p2, v7, v6}, Ldik;->a(ILdib;)V

    goto/16 :goto_3

    .line 1683
    :pswitch_3b
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1684
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1685
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    invoke-virtual {p2, v7, v6, v8}, Ldik;->a(ILjava/lang/Object;Ldlw;)V

    goto/16 :goto_3

    .line 1686
    :pswitch_3c
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1687
    invoke-static {p1, v8, v9}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Ldlm;->a(ILjava/lang/Object;Ldik;)V

    goto/16 :goto_3

    .line 1688
    :pswitch_3d
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1689
    invoke-static {p1, v8, v9}, Ldms;->c(Ljava/lang/Object;J)Z

    move-result v6

    .line 1690
    invoke-virtual {p2, v7, v6}, Ldik;->a(IZ)V

    goto/16 :goto_3

    .line 1691
    :pswitch_3e
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1692
    invoke-static {p1, v8, v9}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1693
    invoke-virtual {p2, v7, v6}, Ldik;->d(II)V

    goto :goto_3

    .line 1694
    :pswitch_3f
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1695
    invoke-static {p1, v8, v9}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1696
    invoke-virtual {p2, v7, v8, v9}, Ldik;->d(IJ)V

    goto :goto_3

    .line 1697
    :pswitch_40
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1698
    invoke-static {p1, v8, v9}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1699
    invoke-virtual {p2, v7, v6}, Ldik;->c(II)V

    goto :goto_3

    .line 1700
    :pswitch_41
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1701
    invoke-static {p1, v8, v9}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1702
    invoke-virtual {p2, v7, v8, v9}, Ldik;->c(IJ)V

    goto :goto_3

    .line 1703
    :pswitch_42
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1704
    invoke-static {p1, v8, v9}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1705
    invoke-virtual {p2, v7, v8, v9}, Ldik;->a(IJ)V

    goto :goto_3

    .line 1706
    :pswitch_43
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1707
    invoke-static {p1, v8, v9}, Ldms;->d(Ljava/lang/Object;J)F

    move-result v6

    .line 1708
    invoke-virtual {p2, v7, v6}, Ldik;->a(IF)V

    goto :goto_3

    .line 1709
    :pswitch_44
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 1710
    invoke-static {p1, v8, v9}, Ldms;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 1711
    invoke-virtual {p2, v7, v8, v9}, Ldik;->a(ID)V

    .line 1518
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    .line 1711
    :cond_4
    nop

    :goto_4
    if-eqz v2, :cond_6

    .line 1712
    invoke-static {p2, v2}, Ldll;->a(Ldik;Ljava/util/Map$Entry;)V

    .line 1713
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_5
    move-object v2, v1

    goto :goto_4

    .line 1714
    :cond_6
    invoke-static {p1, p2}, Ldlm;->c(Ljava/lang/Object;Ldik;)V

    return-void

    .line 1715
    :cond_7
    invoke-direct {p0, p1, p2}, Ldlm;->b(Ljava/lang/Object;Ldik;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ldlv;Ldjr;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p3, :cond_20

    .line 562
    iget-object v1, p0, Ldlm;->o:Ldne;

    move-object v2, v0

    move-object v3, v2

    .line 563
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ldlv;->a()I

    move-result v4

    .line 564
    invoke-direct {p0, v4}, Ldlm;->j(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-gez v5, :cond_d

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_2

    iget p2, p0, Ldlm;->l:I

    :goto_1
    iget p3, p0, Ldlm;->m:I

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Ldlm;->k:[I

    .line 806
    aget p3, p3, p2

    .line 807
    invoke-direct {p0, p1, p3, v2}, Ldlm;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_1d

    .line 808
    :goto_2
    invoke-static {p1, v2}, Ldne;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    :try_start_1
    iget-boolean v5, p0, Ldlm;->h:Z

    if-nez v5, :cond_3

    move-object v4, v0

    goto :goto_3

    :cond_3
    iget-object v5, p0, Ldlm;->g:Ldlj;

    .line 565
    invoke-virtual {p3, v5, v4}, Ldjr;->a(Ldlj;I)Ldjp;

    move-result-object v4

    .line 808
    :goto_3
    if-eqz v4, :cond_a

    if-nez v3, :cond_4

    .line 568
    invoke-static {p1}, Ldll;->b(Ljava/lang/Object;)Ldjt;

    move-result-object v3

    :cond_4
    iget-object v5, v4, Ldjp;->b:Ldkc;

    iget v5, v5, Ldkc;->b:I

    invoke-virtual {v4}, Ldjp;->a()Ldmz;

    move-result-object v6

    .line 569
    sget-object v7, Ldmz;->n:Ldmz;

    if-ne v6, v7, :cond_6

    .line 570
    invoke-interface {p2}, Ldlv;->h()I

    move-result v6

    iget-object v7, v4, Ldjp;->b:Ldkc;

    iget-object v7, v7, Ldkc;->a:Ldkg;

    .line 571
    invoke-interface {v7, v6}, Ldkg;->a(I)Ldkf;

    move-result-object v7

    if-nez v7, :cond_5

    .line 572
    invoke-static {v5, v6, v2}, Ldlx;->a(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_6

    .line 573
    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_4

    .line 598
    :cond_6
    invoke-virtual {v4}, Ldjp;->a()Ldmz;

    move-result-object v5

    .line 574
    invoke-virtual {v5}, Ldmz;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move-object v5, v0

    goto/16 :goto_4

    .line 581
    :pswitch_0
    invoke-interface {p2}, Ldlv;->t()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_4

    .line 582
    :pswitch_1
    invoke-interface {p2}, Ldlv;->s()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_4

    .line 583
    :pswitch_2
    invoke-interface {p2}, Ldlv;->r()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_4

    .line 584
    :pswitch_3
    invoke-interface {p2}, Ldlv;->q()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_4

    .line 807
    :pswitch_4
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Shouldn\'t reach here."

    .line 809
    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 585
    :pswitch_5
    invoke-interface {p2}, Ldlv;->o()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_4

    .line 580
    :pswitch_6
    invoke-interface {p2}, Ldlv;->n()Ldib;

    move-result-object v5

    goto :goto_4

    .line 576
    :pswitch_7
    iget-object v5, v4, Ldjp;->a:Ldlj;

    .line 577
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 578
    invoke-interface {p2, v5, p3}, Ldlv;->a(Ljava/lang/Class;Ldjr;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    .line 574
    :pswitch_8
    iget-object v5, v4, Ldjp;->a:Ldlj;

    .line 575
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 576
    invoke-interface {p2, v5, p3}, Ldlv;->b(Ljava/lang/Class;Ldjr;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    .line 579
    :pswitch_9
    invoke-interface {p2}, Ldlv;->l()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 586
    :pswitch_a
    invoke-interface {p2}, Ldlv;->k()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_4

    .line 587
    :pswitch_b
    invoke-interface {p2}, Ldlv;->j()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    .line 588
    :pswitch_c
    invoke-interface {p2}, Ldlv;->i()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_4

    .line 589
    :pswitch_d
    invoke-interface {p2}, Ldlv;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    .line 590
    :pswitch_e
    invoke-interface {p2}, Ldlv;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_4

    .line 591
    :pswitch_f
    invoke-interface {p2}, Ldlv;->g()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_4

    .line 592
    :pswitch_10
    invoke-interface {p2}, Ldlv;->e()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_4

    .line 593
    :pswitch_11
    invoke-interface {p2}, Ldlv;->d()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 573
    :goto_4
    invoke-virtual {v4}, Ldjp;->b()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v4, v4, Ldjp;->b:Ldkc;

    .line 594
    invoke-virtual {v3, v4, v5}, Ldjt;->b(Ldkc;Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v4}, Ldjp;->a()Ldmz;

    move-result-object v6

    .line 595
    invoke-virtual {v6}, Ldmz;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    if-eq v6, v7, :cond_8

    const/16 v7, 0xa

    if-eq v6, v7, :cond_8

    goto :goto_5

    :cond_8
    iget-object v6, v4, Ldjp;->b:Ldkc;

    .line 596
    invoke-virtual {v3, v6}, Ldjt;->a(Ldkc;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 597
    invoke-static {v6, v5}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_9
    :goto_5
    iget-object v4, v4, Ldjp;->b:Ldkc;

    .line 598
    invoke-virtual {v3, v4, v5}, Ldjt;->a(Ldkc;Ljava/lang/Object;)V

    .line 572
    :goto_6
    goto/16 :goto_0

    .line 593
    :cond_a
    if-nez v2, :cond_b

    .line 566
    invoke-static {p1}, Ldne;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 567
    :cond_b
    :try_start_2
    invoke-virtual {v1, v2, p2}, Ldne;->a(Ljava/lang/Object;Ldlv;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_0

    iget p2, p0, Ldlm;->l:I

    :goto_7
    iget p3, p0, Ldlm;->m:I

    if-ge p2, p3, :cond_c

    iget-object p3, p0, Ldlm;->k:[I

    .line 806
    aget p3, p3, p2

    .line 807
    invoke-direct {p0, p1, p3, v2}, Ldlm;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_c
    if-eqz v2, :cond_1d

    .line 808
    goto/16 :goto_2

    .line 809
    :catchall_0
    move-exception p2

    goto/16 :goto_11

    .line 599
    :cond_d
    :try_start_3
    invoke-direct {p0, v5}, Ldlm;->e(I)I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {v6}, Ldlm;->g(I)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    if-nez v2, :cond_18

    .line 802
    invoke-static {}, Ldmj;->a()Ldmj;

    move-result-object v2

    goto/16 :goto_c

    .line 602
    :pswitch_12
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 603
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    invoke-interface {p2, v8, p3}, Ldlv;->b(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object v8

    .line 604
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 605
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_13
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 606
    invoke-interface {p2}, Ldlv;->t()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 607
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 608
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_14
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 609
    invoke-interface {p2}, Ldlv;->s()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 610
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 611
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_15
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 612
    invoke-interface {p2}, Ldlv;->r()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 613
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 614
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_16
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 615
    invoke-interface {p2}, Ldlv;->q()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 616
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 617
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    .line 618
    :pswitch_17
    invoke-interface {p2}, Ldlv;->p()I

    move-result v7

    .line 619
    invoke-direct {p0, v5}, Ldlm;->c(I)Ldkh;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 620
    invoke-interface {v8, v7}, Ldkh;->a(I)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_8

    .line 621
    :cond_e
    invoke-static {v4, v7, v2}, Ldlx;->a(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_e

    .line 620
    :cond_f
    :goto_8
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 622
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v8, v9, v6}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 623
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    .line 621
    :pswitch_18
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 624
    invoke-interface {p2}, Ldlv;->o()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 625
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 626
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_19
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 627
    invoke-interface {p2}, Ldlv;->n()Ldib;

    move-result-object v8

    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 628
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    .line 629
    :pswitch_1a
    invoke-direct {p0, p1, v4, v5}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v7

    .line 630
    invoke-static {p1, v7, v8}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 631
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    .line 632
    invoke-interface {p2, v8, p3}, Ldlv;->a(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v9

    .line 633
    invoke-static {v7, v8}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 634
    invoke-static {p1, v9, v10, v6}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    .line 639
    :cond_10
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 635
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v8

    .line 636
    invoke-interface {p2, v8, p3}, Ldlv;->a(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object v8

    .line 637
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 638
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    .line 639
    :goto_9
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    .line 640
    :pswitch_1b
    invoke-direct {p0, p1, v6, p2}, Ldlm;->a(Ljava/lang/Object;ILdlv;)V

    .line 641
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_1c
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 642
    invoke-interface {p2}, Ldlv;->k()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 643
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 644
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_1d
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 645
    invoke-interface {p2}, Ldlv;->j()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 646
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 647
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_1e
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 648
    invoke-interface {p2}, Ldlv;->i()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 649
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 650
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_1f
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 651
    invoke-interface {p2}, Ldlv;->h()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 652
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 653
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_20
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 654
    invoke-interface {p2}, Ldlv;->f()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 655
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 656
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_21
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 657
    invoke-interface {p2}, Ldlv;->g()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 658
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 659
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_22
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 660
    invoke-interface {p2}, Ldlv;->e()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 661
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 662
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_23
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 663
    invoke-interface {p2}, Ldlv;->d()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 664
    invoke-static {p1, v6, v7, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 665
    invoke-direct {p0, p1, v4, v5}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_e

    .line 666
    :pswitch_24
    invoke-direct {p0, v5}, Ldlm;->b(I)Ljava/lang/Object;

    move-result-object v4

    .line 667
    invoke-direct {p0, v5}, Ldlm;->e(I)I

    move-result v5

    invoke-static {v5}, Ldlm;->i(I)J

    move-result-wide v5

    .line 668
    invoke-static {p1, v5, v6}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_11

    .line 673
    invoke-static {}, Ldmg;->a()Ljava/lang/Object;

    move-result-object v7

    .line 674
    invoke-static {p1, v5, v6, v7}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    .line 669
    :cond_11
    invoke-static {v7}, Ldmg;->b(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 670
    invoke-static {}, Ldmg;->a()Ljava/lang/Object;

    move-result-object v8

    .line 671
    invoke-static {v8, v7}, Ldmg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {p1, v5, v6, v8}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v7, v8

    .line 675
    :cond_12
    :goto_a
    check-cast v7, Ldle;

    .line 676
    invoke-static {v4}, Ldmg;->a(Ljava/lang/Object;)Ldlc;

    move-result-object v4

    .line 677
    invoke-interface {p2, v7, v4, p3}, Ldlv;->a(Ljava/util/Map;Ldlc;Ldjr;)V

    goto/16 :goto_e

    .line 672
    :pswitch_25
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 678
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v4

    iget-object v5, p0, Ldlm;->n:Ldkx;

    .line 679
    invoke-virtual {v5, p1, v6, v7}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 680
    invoke-interface {p2, v5, v4, p3}, Ldlv;->b(Ljava/util/List;Ldlw;Ldjr;)V

    goto/16 :goto_e

    :pswitch_26
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 681
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 682
    invoke-interface {p2, v4}, Ldlv;->q(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_27
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 683
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 684
    invoke-interface {p2, v4}, Ldlv;->p(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_28
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 685
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 686
    invoke-interface {p2, v4}, Ldlv;->o(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_29
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 687
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 688
    invoke-interface {p2, v4}, Ldlv;->n(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2a
    iget-object v7, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 689
    invoke-virtual {v7, p1, v8, v9}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 690
    invoke-interface {p2, v6}, Ldlv;->m(Ljava/util/List;)V

    .line 691
    invoke-direct {p0, v5}, Ldlm;->c(I)Ldkh;

    move-result-object v5

    .line 692
    invoke-static {v4, v6, v5, v2}, Ldlx;->a(ILjava/util/List;Ldkh;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_e

    :pswitch_2b
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 693
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 694
    invoke-interface {p2, v4}, Ldlv;->l(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2c
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 695
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 696
    invoke-interface {p2, v4}, Ldlv;->h(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2d
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 697
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 698
    invoke-interface {p2, v4}, Ldlv;->g(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2e
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 699
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 700
    invoke-interface {p2, v4}, Ldlv;->f(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2f
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 701
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 702
    invoke-interface {p2, v4}, Ldlv;->e(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_30
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 703
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 704
    invoke-interface {p2, v4}, Ldlv;->c(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_31
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 705
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 706
    invoke-interface {p2, v4}, Ldlv;->d(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_32
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 707
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 708
    invoke-interface {p2, v4}, Ldlv;->b(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_33
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 709
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 710
    invoke-interface {p2, v4}, Ldlv;->a(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_34
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 711
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 712
    invoke-interface {p2, v4}, Ldlv;->q(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_35
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 713
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 714
    invoke-interface {p2, v4}, Ldlv;->p(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_36
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 715
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 716
    invoke-interface {p2, v4}, Ldlv;->o(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_37
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 717
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 718
    invoke-interface {p2, v4}, Ldlv;->n(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_38
    iget-object v7, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 719
    invoke-virtual {v7, p1, v8, v9}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 720
    invoke-interface {p2, v6}, Ldlv;->m(Ljava/util/List;)V

    .line 721
    invoke-direct {p0, v5}, Ldlm;->c(I)Ldkh;

    move-result-object v5

    .line 722
    invoke-static {v4, v6, v5, v2}, Ldlx;->a(ILjava/util/List;Ldkh;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_e

    :pswitch_39
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 723
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 724
    invoke-interface {p2, v4}, Ldlv;->l(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_3a
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 725
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 726
    invoke-interface {p2, v4}, Ldlv;->k(Ljava/util/List;)V

    goto/16 :goto_e

    .line 727
    :pswitch_3b
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v4

    iget-object v5, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 728
    invoke-virtual {v5, p1, v6, v7}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 729
    invoke-interface {p2, v5, v4, p3}, Ldlv;->a(Ljava/util/List;Ldlw;Ldjr;)V

    goto/16 :goto_e

    .line 808
    :pswitch_3c
    invoke-static {v6}, Ldlm;->h(I)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 600
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 601
    invoke-interface {p2, v4}, Ldlv;->j(Ljava/util/List;)V

    goto/16 :goto_e

    :cond_13
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 602
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, v4}, Ldlv;->i(Ljava/util/List;)V

    goto/16 :goto_e

    .line 729
    :pswitch_3d
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 730
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 731
    invoke-interface {p2, v4}, Ldlv;->h(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_3e
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 732
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 733
    invoke-interface {p2, v4}, Ldlv;->g(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_3f
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 734
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 735
    invoke-interface {p2, v4}, Ldlv;->f(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_40
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 736
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 737
    invoke-interface {p2, v4}, Ldlv;->e(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_41
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 738
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 739
    invoke-interface {p2, v4}, Ldlv;->c(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_42
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 740
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 741
    invoke-interface {p2, v4}, Ldlv;->d(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_43
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 742
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 743
    invoke-interface {p2, v4}, Ldlv;->b(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_44
    iget-object v4, p0, Ldlm;->n:Ldkx;

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v5

    .line 744
    invoke-virtual {v4, p1, v5, v6}, Ldkx;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 745
    invoke-interface {p2, v4}, Ldlv;->a(Ljava/util/List;)V

    goto/16 :goto_e

    .line 746
    :pswitch_45
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v7

    .line 747
    invoke-static {p1, v7, v8}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 748
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v5

    .line 749
    invoke-interface {p2, v5, p3}, Ldlv;->b(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 750
    invoke-static {v4, v5}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 751
    invoke-static {p1, v6, v7, v4}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_e

    :cond_14
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 752
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v4

    .line 753
    invoke-interface {p2, v4, p3}, Ldlv;->b(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object v4

    .line 754
    invoke-static {p1, v6, v7, v4}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 755
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_46
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 756
    invoke-interface {p2}, Ldlv;->t()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Ldms;->a(Ljava/lang/Object;JJ)V

    .line 757
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_47
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 758
    invoke-interface {p2}, Ldlv;->s()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldms;->a(Ljava/lang/Object;JI)V

    .line 759
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_48
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 760
    invoke-interface {p2}, Ldlv;->r()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Ldms;->a(Ljava/lang/Object;JJ)V

    .line 761
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_49
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 762
    invoke-interface {p2}, Ldlv;->q()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldms;->a(Ljava/lang/Object;JI)V

    .line 763
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_e

    .line 764
    :pswitch_4a
    invoke-interface {p2}, Ldlv;->p()I

    move-result v7

    .line 765
    invoke-direct {p0, v5}, Ldlm;->c(I)Ldkh;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 766
    invoke-interface {v8, v7}, Ldkh;->a(I)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_b

    .line 767
    :cond_15
    invoke-static {v4, v7, v2}, Ldlx;->a(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_e

    .line 766
    :cond_16
    :goto_b
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v8

    .line 768
    invoke-static {p1, v8, v9, v7}, Ldms;->a(Ljava/lang/Object;JI)V

    .line 769
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_e

    .line 767
    :pswitch_4b
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 770
    invoke-interface {p2}, Ldlv;->o()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldms;->a(Ljava/lang/Object;JI)V

    .line 771
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_4c
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 772
    invoke-interface {p2}, Ldlv;->n()Ldib;

    move-result-object v4

    invoke-static {p1, v6, v7, v4}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 773
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_e

    .line 774
    :pswitch_4d
    invoke-direct {p0, p1, v5}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v7

    .line 775
    invoke-static {p1, v7, v8}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 776
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v5

    .line 777
    invoke-interface {p2, v5, p3}, Ldlv;->a(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 778
    invoke-static {v4, v5}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 779
    invoke-static {p1, v6, v7, v4}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_e

    :cond_17
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 780
    invoke-direct {p0, v5}, Ldlm;->a(I)Ldlw;

    move-result-object v4

    .line 781
    invoke-interface {p2, v4, p3}, Ldlv;->a(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object v4

    .line 782
    invoke-static {p1, v6, v7, v4}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 783
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_e

    .line 784
    :pswitch_4e
    invoke-direct {p0, p1, v6, p2}, Ldlm;->a(Ljava/lang/Object;ILdlv;)V

    .line 785
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_4f
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 786
    invoke-interface {p2}, Ldlv;->k()Z

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldms;->a(Ljava/lang/Object;JZ)V

    .line 787
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_50
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 788
    invoke-interface {p2}, Ldlv;->j()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldms;->a(Ljava/lang/Object;JI)V

    .line 789
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_51
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 790
    invoke-interface {p2}, Ldlv;->i()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Ldms;->a(Ljava/lang/Object;JJ)V

    .line 791
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto :goto_e

    :pswitch_52
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 792
    invoke-interface {p2}, Ldlv;->h()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldms;->a(Ljava/lang/Object;JI)V

    .line 793
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto :goto_e

    :pswitch_53
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 794
    invoke-interface {p2}, Ldlv;->f()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Ldms;->a(Ljava/lang/Object;JJ)V

    .line 795
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto :goto_e

    :pswitch_54
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 796
    invoke-interface {p2}, Ldlv;->g()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Ldms;->a(Ljava/lang/Object;JJ)V

    .line 797
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto :goto_e

    :pswitch_55
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 798
    invoke-interface {p2}, Ldlv;->e()F

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldms;->a(Ljava/lang/Object;JF)V

    .line 799
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V

    goto :goto_e

    :pswitch_56
    invoke-static {v6}, Ldlm;->i(I)J

    move-result-wide v6

    .line 800
    invoke-interface {p2}, Ldlv;->d()D

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Ldms;->a(Ljava/lang/Object;JD)V

    .line 801
    invoke-direct {p0, p1, v5}, Ldlm;->b(Ljava/lang/Object;I)V
    :try_end_4
    .catch Ldkm; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_e

    .line 803
    :cond_18
    :goto_c
    :try_start_5
    invoke-virtual {v1, v2, p2}, Ldne;->a(Ljava/lang/Object;Ldlv;)Z

    move-result v4
    :try_end_5
    .catch Ldkm; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v4, :cond_1a

    iget p2, p0, Ldlm;->l:I

    :goto_d
    iget p3, p0, Ldlm;->m:I

    if-ge p2, p3, :cond_19

    iget-object p3, p0, Ldlm;->k:[I

    .line 806
    aget p3, p3, p2

    .line 807
    invoke-direct {p0, p1, p3, v2}, Ldlm;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_19
    if-eqz v2, :cond_1d

    .line 808
    goto/16 :goto_2

    :cond_1a
    nop

    :goto_e
    goto/16 :goto_0

    :catchall_1
    move-exception p2

    goto :goto_11

    :catch_0
    move-exception v4

    goto :goto_f

    .line 809
    :catch_1
    move-exception v4

    :goto_f
    if-nez v2, :cond_1b

    .line 804
    :try_start_6
    invoke-static {p1}, Ldne;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 805
    :cond_1b
    invoke-virtual {v1, v2, p2}, Ldne;->a(Ljava/lang/Object;Ldlv;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v4, :cond_0

    iget p2, p0, Ldlm;->l:I

    :goto_10
    iget p3, p0, Ldlm;->m:I

    if-ge p2, p3, :cond_1c

    iget-object p3, p0, Ldlm;->k:[I

    .line 806
    aget p3, p3, p2

    .line 807
    invoke-direct {p0, p1, p3, v2}, Ldlm;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_1c
    if-eqz v2, :cond_1d

    .line 808
    goto/16 :goto_2

    :cond_1d
    return-void

    .line 810
    :catchall_2
    move-exception p2

    goto :goto_11

    .line 801
    :catchall_3
    move-exception p2

    :goto_11
    iget p3, p0, Ldlm;->l:I

    :goto_12
    iget v0, p0, Ldlm;->m:I

    if-ge p3, v0, :cond_1e

    iget-object v0, p0, Ldlm;->k:[I

    .line 806
    aget v0, v0, p3

    .line 807
    invoke-direct {p0, p1, v0, v2}, Ldlm;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_12

    .line 808
    :cond_1e
    if-eqz v2, :cond_1f

    invoke-static {p1, v2}, Ldne;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 810
    :cond_1f
    throw p2

    .line 562
    :cond_20
    goto :goto_14

    :goto_13
    throw v0

    :goto_14
    goto :goto_13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;[BIILdhn;)V
    .locals 8

    iget-boolean v0, p0, Ldlm;->j:Z

    if-eqz v0, :cond_0

    .line 876
    invoke-direct/range {p0 .. p5}, Ldlm;->b(Ljava/lang/Object;[BIILdhn;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    .line 877
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Ldlm;->a(Ljava/lang/Object;[BIIILdhn;)I

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Ldlm;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 25
    invoke-direct {p0, v2}, Ldlm;->e(I)I

    move-result v3

    invoke-static {v3}, Ldlm;->i(I)J

    move-result-wide v4

    invoke-static {v3}, Ldlm;->g(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 26
    :pswitch_0
    invoke-direct {p0, v2}, Ldlm;->f(I)I

    move-result v3

    const v6, 0xfffff

    and-int/2addr v3, v6

    int-to-long v6, v3

    .line 27
    invoke-static {p1, v6, v7}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    .line 28
    invoke-static {p2, v6, v7}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 29
    invoke-static {p1, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 30
    invoke-static {v3, v4}, Ldlx;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 31
    :pswitch_1
    invoke-static {p1, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Ldlx;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 33
    :pswitch_2
    invoke-static {p1, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 34
    invoke-static {v3, v4}, Ldlx;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 32
    :goto_1
    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 35
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-static {p1, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 37
    invoke-static {v3, v4}, Ldlx;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 38
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-static {p1, v4, v5}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 40
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-static {p1, v4, v5}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 42
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-static {p1, v4, v5}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 44
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-static {p1, v4, v5}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 46
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-static {p1, v4, v5}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 48
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-static {p1, v4, v5}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 50
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-static {p1, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 52
    invoke-static {v3, v4}, Ldlx;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 53
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-static {p1, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 55
    invoke-static {v3, v4}, Ldlx;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 56
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-static {p1, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 58
    invoke-static {v3, v4}, Ldlx;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 59
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-static {p1, v4, v5}, Ldms;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v4, v5}, Ldms;->c(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 61
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-static {p1, v4, v5}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 63
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-static {p1, v4, v5}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 65
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-static {p1, v4, v5}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 67
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-static {p1, v4, v5}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto :goto_3

    .line 69
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-static {p1, v4, v5}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto :goto_3

    .line 71
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-static {p1, v4, v5}, Ldms;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 73
    invoke-static {p2, v4, v5}, Ldms;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 74
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Ldlm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    invoke-static {p1, v4, v5}, Ldms;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 76
    invoke-static {p2, v4, v5}, Ldms;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto :goto_3

    .line 30
    :cond_0
    :goto_2
    return v1

    .line 25
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 77
    :cond_2
    invoke-static {p1}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object v0

    .line 78
    invoke-static {p2}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Ldlm;->h:Z

    if-eqz v0, :cond_4

    .line 80
    invoke-static {p1}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object p1

    .line 81
    invoke-static {p2}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Ldjt;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Ldlm;->j:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, p1}, Ldlm;->g(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Ldlm;->f(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldlm;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 811
    invoke-direct {p0, v0}, Ldlm;->e(I)I

    move-result v1

    invoke-static {v1}, Ldlm;->i(I)J

    move-result-wide v2

    .line 812
    invoke-direct {p0, v0}, Ldlm;->d(I)I

    move-result v4

    invoke-static {v1}, Ldlm;->g(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 813
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Ldlm;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 814
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    invoke-static {p2, v2, v3}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 816
    invoke-direct {p0, p1, v4, v0}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 817
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Ldlm;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 818
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    invoke-static {p2, v2, v3}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 820
    invoke-direct {p0, p1, v4, v0}, Ldlm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 821
    :pswitch_4
    invoke-static {p1, p2, v2, v3}, Ldlx;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Ldlm;->n:Ldkx;

    .line 822
    invoke-virtual {v1, p1, p2, v2, v3}, Ldkx;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 823
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Ldlm;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 824
    :pswitch_7
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 825
    invoke-static {p2, v2, v3}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Ldms;->a(Ljava/lang/Object;JJ)V

    .line 826
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 827
    :pswitch_8
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    invoke-static {p2, v2, v3}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldms;->a(Ljava/lang/Object;JI)V

    .line 829
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 830
    :pswitch_9
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    invoke-static {p2, v2, v3}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Ldms;->a(Ljava/lang/Object;JJ)V

    .line 832
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 833
    :pswitch_a
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    invoke-static {p2, v2, v3}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldms;->a(Ljava/lang/Object;JI)V

    .line 835
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 836
    :pswitch_b
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    invoke-static {p2, v2, v3}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldms;->a(Ljava/lang/Object;JI)V

    .line 838
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 839
    :pswitch_c
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    invoke-static {p2, v2, v3}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldms;->a(Ljava/lang/Object;JI)V

    .line 841
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 842
    :pswitch_d
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    invoke-static {p2, v2, v3}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 844
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 845
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Ldlm;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 846
    :pswitch_f
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    invoke-static {p2, v2, v3}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 848
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 849
    :pswitch_10
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    invoke-static {p2, v2, v3}, Ldms;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldms;->a(Ljava/lang/Object;JZ)V

    .line 851
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 852
    :pswitch_11
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    invoke-static {p2, v2, v3}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldms;->a(Ljava/lang/Object;JI)V

    .line 854
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 855
    :pswitch_12
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    invoke-static {p2, v2, v3}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Ldms;->a(Ljava/lang/Object;JJ)V

    .line 857
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 858
    :pswitch_13
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    invoke-static {p2, v2, v3}, Ldms;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldms;->a(Ljava/lang/Object;JI)V

    .line 860
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 861
    :pswitch_14
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    invoke-static {p2, v2, v3}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Ldms;->a(Ljava/lang/Object;JJ)V

    .line 863
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 864
    :pswitch_15
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    invoke-static {p2, v2, v3}, Ldms;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Ldms;->a(Ljava/lang/Object;JJ)V

    .line 866
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 867
    :pswitch_16
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    invoke-static {p2, v2, v3}, Ldms;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldms;->a(Ljava/lang/Object;JF)V

    .line 869
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 870
    :pswitch_17
    invoke-direct {p0, p2, v0}, Ldlm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    invoke-static {p2, v2, v3}, Ldms;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Ldms;->a(Ljava/lang/Object;JD)V

    .line 872
    invoke-direct {p0, p1, v0}, Ldlm;->b(Ljava/lang/Object;I)V

    .line 812
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 873
    :cond_1
    invoke-static {p1, p2}, Ldlx;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Ldlm;->h:Z

    if-eqz v0, :cond_2

    .line 874
    invoke-static {p1, p2}, Ldlx;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 875
    :cond_2
    return-void

    .line 874
    :cond_3
    const/4 p1, 0x0

    .line 875
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Ldlm;->l:I

    :goto_0
    iget v1, p0, Ldlm;->m:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ldlm;->k:[I

    .line 554
    aget v1, v1, v0

    invoke-direct {p0, v1}, Ldlm;->e(I)I

    move-result v1

    invoke-static {v1}, Ldlm;->i(I)J

    move-result-wide v1

    .line 555
    invoke-static {p1, v1, v2}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 556
    move-object v4, v3

    check-cast v4, Ldle;

    invoke-virtual {v4}, Ldle;->b()V

    .line 557
    invoke-static {p1, v1, v2, v3}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldlm;->k:[I

    .line 558
    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Ldlm;->n:Ldkx;

    iget-object v3, p0, Ldlm;->k:[I

    .line 559
    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Ldkx;->b(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 560
    :cond_2
    invoke-static {p1}, Ldne;->c(Ljava/lang/Object;)V

    iget-boolean v0, p0, Ldlm;->h:Z

    if-eqz v0, :cond_3

    .line 561
    invoke-static {p1}, Ldll;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v2, v6, Ldlm;->l:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_c

    iget-object v2, v6, Ldlm;->k:[I

    .line 523
    aget v11, v2, v10

    .line 524
    invoke-direct {v6, v11}, Ldlm;->d(I)I

    move-result v12

    .line 525
    invoke-direct {v6, v11}, Ldlm;->e(I)I

    move-result v13

    iget-object v2, v6, Ldlm;->c:[I

    add-int/lit8 v4, v11, 0x2

    .line 526
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    sget-object v0, Ldlm;->b:Lsun/misc/Unsafe;

    int-to-long v1, v4

    .line 527
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    .line 547
    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    .line 527
    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Ldlm;->a(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 547
    :cond_2
    return v9

    .line 528
    :cond_3
    :goto_2
    invoke-static {v13}, Ldlm;->g(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x44

    if-eq v0, v1, :cond_7

    const/16 v1, 0x31

    if-eq v0, v1, :cond_8

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    .line 534
    :cond_4
    invoke-static {v13}, Ldlm;->i(I)J

    move-result-wide v0

    .line 535
    invoke-static {v7, v0, v1}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 536
    check-cast v0, Ldle;

    .line 537
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 538
    invoke-direct {v6, v11}, Ldlm;->b(I)Ljava/lang/Object;

    move-result-object v1

    .line 539
    invoke-static {v1}, Ldmg;->a(Ljava/lang/Object;)Ldlc;

    move-result-object v1

    iget-object v1, v1, Ldlc;->c:Ldmz;

    iget-object v1, v1, Ldmz;->s:Ldna;

    .line 540
    sget-object v2, Ldna;->i:Ldna;

    if-ne v1, v2, :cond_b

    .line 541
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6

    .line 542
    sget-object v1, Ldls;->a:Ldls;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object v1

    .line 543
    :cond_6
    invoke-interface {v1, v2}, Ldlw;->e(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v9

    .line 544
    :cond_7
    invoke-direct {v6, v7, v12, v11}, Ldlm;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 545
    invoke-direct {v6, v11}, Ldlm;->a(I)Ldlw;

    move-result-object v0

    invoke-static {v7, v13, v0}, Ldlm;->a(Ljava/lang/Object;ILdlw;)Z

    move-result v0

    if-nez v0, :cond_b

    return v9

    .line 528
    :cond_8
    invoke-static {v13}, Ldlm;->i(I)J

    move-result-wide v0

    .line 529
    invoke-static {v7, v0, v1}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 530
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 531
    invoke-direct {v6, v11}, Ldlm;->a(I)Ldlw;

    move-result-object v1

    const/4 v2, 0x0

    .line 532
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 533
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 534
    invoke-interface {v1, v3}, Ldlw;->e(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v9

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 546
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Ldlm;->a(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 547
    invoke-direct {v6, v11}, Ldlm;->a(I)Ldlw;

    move-result-object v0

    invoke-static {v7, v13, v0}, Ldlm;->a(Ljava/lang/Object;ILdlw;)Z

    move-result v0

    if-nez v0, :cond_b

    return v9

    .line 528
    :cond_b
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    .line 547
    :cond_c
    iget-boolean v0, v6, Ldlm;->h:Z

    if-eqz v0, :cond_d

    .line 548
    invoke-static/range {p1 .. p1}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object v0

    invoke-virtual {v0}, Ldjt;->e()Z

    move-result v0

    if-nez v0, :cond_d

    return v9

    :cond_d
    return v3
.end method
