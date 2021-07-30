.class final Ldng;
.super Ldjr;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldjr;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final a(Ldlj;I)Ldjp;
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    .line 54
    :sswitch_0
    nop

    .line 2
    const-string v0, "dpx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "dpl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_2
    const-string v0, "djl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_3
    const-string v0, "djk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "djj"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "diw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "dis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_8
    const-string v0, "dim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_9
    const-string v0, "dil"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 54
    return-object v0

    .line 82
    :pswitch_0
    const p1, 0x44f252f

    if-eq p2, p1, :cond_1

    return-object v0

    .line 3
    :cond_1
    sget-object p1, Lcoh;->a:Ldjp;

    return-object p1

    :pswitch_1
    if-eq p2, v1, :cond_2

    return-object v0

    .line 4
    :cond_2
    sget-object p1, Leku;->b:Ldjp;

    return-object p1

    :pswitch_2
    const/16 p1, 0x343c

    if-eq p2, p1, :cond_3

    return-object v0

    .line 5
    :cond_3
    sget-object p1, Ldpy;->b:Ldjp;

    return-object p1

    :pswitch_3
    const p1, 0x3f6bdb

    if-eq p2, p1, :cond_5

    const p1, 0x3f3fd17

    if-eq p2, p1, :cond_4

    return-object v0

    .line 6
    :cond_4
    sget-object p1, Ldrd;->b:Ldjp;

    return-object p1

    .line 7
    :cond_5
    sget-object p1, Lcxv;->b:Ldjp;

    return-object p1

    :pswitch_4
    sparse-switch p2, :sswitch_data_1

    return-object v0

    .line 8
    :sswitch_a
    sget-object p1, Ldnl;->o:Ldjp;

    return-object p1

    .line 9
    :sswitch_b
    sget-object p1, Lcoy;->a:Ldjp;

    return-object p1

    .line 10
    :sswitch_c
    sget-object p1, Lcoa;->a:Ldjp;

    return-object p1

    .line 11
    :sswitch_d
    sget-object p1, Lcoh;->b:Ldjp;

    return-object p1

    :pswitch_5
    sparse-switch p2, :sswitch_data_2

    return-object v0

    .line 12
    :sswitch_e
    sget-object p1, Ldnl;->k:Ldjp;

    return-object p1

    .line 13
    :sswitch_f
    sget-object p1, Ldnl;->j:Ldjp;

    return-object p1

    .line 14
    :sswitch_10
    sget-object p1, Ldnl;->i:Ldjp;

    return-object p1

    .line 15
    :sswitch_11
    sget-object p1, Ldnl;->h:Ldjp;

    return-object p1

    .line 16
    :sswitch_12
    sget-object p1, Lcoh;->f:Ldjp;

    return-object p1

    .line 17
    :sswitch_13
    sget-object p1, Ldor;->a:Ldjp;

    return-object p1

    :pswitch_6
    sparse-switch p2, :sswitch_data_3

    return-object v0

    .line 18
    :sswitch_14
    sget-object p1, Ldnl;->f:Ldjp;

    return-object p1

    .line 19
    :sswitch_15
    sget-object p1, Ldnl;->e:Ldjp;

    return-object p1

    .line 20
    :sswitch_16
    sget-object p1, Ldnl;->d:Ldjp;

    return-object p1

    .line 21
    :sswitch_17
    sget-object p1, Lcoh;->e:Ldjp;

    return-object p1

    .line 22
    :sswitch_18
    sget-object p1, Ldpy;->a:Ldjp;

    return-object p1

    :pswitch_7
    sparse-switch p2, :sswitch_data_4

    return-object v0

    .line 23
    :sswitch_19
    sget-object p1, Ldpk;->a:Ldjp;

    return-object p1

    .line 24
    :sswitch_1a
    sget-object p1, Ldnl;->n:Ldjp;

    return-object p1

    .line 25
    :sswitch_1b
    sget-object p1, Ldnl;->m:Ldjp;

    return-object p1

    .line 26
    :sswitch_1c
    sget-object p1, Ldnl;->l:Ldjp;

    return-object p1

    .line 27
    :sswitch_1d
    sget-object p1, Lcpb;->k:Ldjp;

    return-object p1

    .line 28
    :sswitch_1e
    sget-object p1, Ldhc;->a:Ldjp;

    return-object p1

    .line 29
    :sswitch_1f
    sget-object p1, Ldpe;->m:Ldjp;

    return-object p1

    .line 30
    :sswitch_20
    sget-object p1, Ldpe;->l:Ldjp;

    return-object p1

    .line 31
    :sswitch_21
    sget-object p1, Ldpw;->n:Ldjp;

    return-object p1

    .line 32
    :sswitch_22
    sget-object p1, Ldpw;->m:Ldjp;

    return-object p1

    .line 33
    :sswitch_23
    sget-object p1, Lcpb;->j:Ldjp;

    return-object p1

    .line 34
    :sswitch_24
    sget-object p1, Lcpb;->i:Ldjp;

    return-object p1

    :pswitch_8
    sparse-switch p2, :sswitch_data_5

    return-object v0

    .line 35
    :sswitch_25
    sget-object p1, Ldnl;->c:Ldjp;

    return-object p1

    .line 36
    :sswitch_26
    sget-object p1, Lcpr;->d:Ldjp;

    return-object p1

    .line 37
    :sswitch_27
    sget-object p1, Ldnl;->b:Ldjp;

    return-object p1

    .line 38
    :sswitch_28
    sget-object p1, Ldnl;->a:Ldjp;

    return-object p1

    .line 39
    :sswitch_29
    sget-object p1, Lcpr;->c:Ldjp;

    return-object p1

    .line 40
    :sswitch_2a
    sget-object p1, Lcpb;->g:Ldjp;

    return-object p1

    .line 41
    :sswitch_2b
    sget-object p1, Lcoh;->c:Ldjp;

    return-object p1

    .line 42
    :sswitch_2c
    sget-object p1, Ldpe;->i:Ldjp;

    return-object p1

    .line 43
    :sswitch_2d
    sget-object p1, Ldpe;->k:Ldjp;

    return-object p1

    .line 44
    :sswitch_2e
    sget-object p1, Ldpe;->j:Ldjp;

    return-object p1

    .line 45
    :sswitch_2f
    sget-object p1, Ldpe;->h:Ldjp;

    return-object p1

    .line 46
    :sswitch_30
    sget-object p1, Ldpe;->g:Ldjp;

    return-object p1

    .line 47
    :sswitch_31
    sget-object p1, Ldpk;->b:Ldjp;

    return-object p1

    .line 48
    :sswitch_32
    sget-object p1, Ldpw;->l:Ldjp;

    return-object p1

    .line 49
    :sswitch_33
    sget-object p1, Ldpw;->h:Ldjp;

    return-object p1

    .line 50
    :sswitch_34
    sget-object p1, Ldpw;->i:Ldjp;

    return-object p1

    .line 51
    :sswitch_35
    sget-object p1, Ldpw;->j:Ldjp;

    return-object p1

    .line 52
    :sswitch_36
    sget-object p1, Ldpw;->k:Ldjp;

    return-object p1

    .line 53
    :sswitch_37
    sget-object p1, Lcpb;->h:Ldjp;

    return-object p1

    .line 54
    :sswitch_38
    sget-object p1, Lcpb;->f:Ldjp;

    return-object p1

    .line 2
    :pswitch_9
    sparse-switch p2, :sswitch_data_6

    return-object v0

    .line 55
    :sswitch_39
    sget-object p1, Ldnl;->g:Ldjp;

    return-object p1

    .line 56
    :sswitch_3a
    sget-object p1, Lcpr;->b:Ldjp;

    return-object p1

    .line 57
    :sswitch_3b
    sget-object p1, Lcpr;->a:Ldjp;

    return-object p1

    .line 58
    :sswitch_3c
    sget-object p1, Lcoc;->a:Ldjp;

    return-object p1

    .line 59
    :sswitch_3d
    sget-object p1, Ldod;->b:Ldjp;

    return-object p1

    .line 60
    :sswitch_3e
    sget-object p1, Lcoh;->d:Ldjp;

    return-object p1

    .line 61
    :sswitch_3f
    sget-object p1, Ldpe;->c:Ldjp;

    return-object p1

    .line 62
    :sswitch_40
    sget-object p1, Ldnq;->a:Ldjp;

    return-object p1

    .line 63
    :sswitch_41
    sget-object p1, Ldnq;->b:Ldjp;

    return-object p1

    .line 64
    :sswitch_42
    sget-object p1, Ldpw;->g:Ldjp;

    return-object p1

    .line 65
    :sswitch_43
    sget-object p1, Ldpw;->f:Ldjp;

    return-object p1

    .line 66
    :sswitch_44
    sget-object p1, Ldpe;->b:Ldjp;

    return-object p1

    .line 67
    :sswitch_45
    sget-object p1, Ldpe;->f:Ldjp;

    return-object p1

    .line 68
    :sswitch_46
    sget-object p1, Ldpe;->e:Ldjp;

    return-object p1

    .line 69
    :sswitch_47
    sget-object p1, Ldpe;->d:Ldjp;

    return-object p1

    .line 70
    :sswitch_48
    sget-object p1, Ldpe;->a:Ldjp;

    return-object p1

    .line 71
    :sswitch_49
    sget-object p1, Lacs;->b:Ldjp;

    return-object p1

    .line 72
    :sswitch_4a
    sget-object p1, Lacs;->a:Ldjp;

    return-object p1

    .line 73
    :sswitch_4b
    sget-object p1, Ldpw;->e:Ldjp;

    return-object p1

    .line 74
    :sswitch_4c
    sget-object p1, Ldpw;->c:Ldjp;

    return-object p1

    .line 75
    :sswitch_4d
    sget-object p1, Ldpw;->a:Ldjp;

    return-object p1

    .line 76
    :sswitch_4e
    sget-object p1, Ldpw;->b:Ldjp;

    return-object p1

    .line 77
    :sswitch_4f
    sget-object p1, Ldpw;->d:Ldjp;

    return-object p1

    .line 78
    :sswitch_50
    sget-object p1, Lcpb;->e:Ldjp;

    return-object p1

    .line 79
    :sswitch_51
    sget-object p1, Lcpb;->d:Ldjp;

    return-object p1

    .line 80
    :sswitch_52
    sget-object p1, Lcpb;->c:Ldjp;

    return-object p1

    .line 81
    :sswitch_53
    sget-object p1, Lcpb;->b:Ldjp;

    return-object p1

    .line 82
    :sswitch_54
    sget-object p1, Lcpb;->a:Ldjp;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x18487 -> :sswitch_9
        0x18488 -> :sswitch_8
        0x1848e -> :sswitch_7
        0x18491 -> :sswitch_6
        0x18492 -> :sswitch_5
        0x184a4 -> :sswitch_4
        0x184a5 -> :sswitch_3
        0x184a6 -> :sswitch_2
        0x18560 -> :sswitch_1
        0x1856c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    :sswitch_data_1
    .sparse-switch
        0x44f252f -> :sswitch_d
        0x44f2530 -> :sswitch_c
        0x85ef9f7 -> :sswitch_b
        0xc941193 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x3e735ed -> :sswitch_13
        0x44f252f -> :sswitch_12
        0x9b2a53d -> :sswitch_11
        0x9be9b45 -> :sswitch_10
        0xa25fce3 -> :sswitch_f
        0xaacc9e8 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x343b -> :sswitch_18
        0x44f252f -> :sswitch_17
        0x8e7f5cb -> :sswitch_16
        0x9bf3703 -> :sswitch_15
        0xb57ad11 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x4525 -> :sswitch_24
        0x4526 -> :sswitch_23
        0x14988a0 -> :sswitch_22
        0x1ba68d3 -> :sswitch_21
        0x2994d08 -> :sswitch_20
        0x44006fa -> :sswitch_1f
        0x61ee2d6 -> :sswitch_1e
        0x7b48786 -> :sswitch_1d
        0x9443625 -> :sswitch_1c
        0x95f5f42 -> :sswitch_1b
        0xac4791c -> :sswitch_1a
        0x11399aa9 -> :sswitch_19
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x4525 -> :sswitch_38
        0x4526 -> :sswitch_37
        0x1478fa8 -> :sswitch_36
        0x14988a0 -> :sswitch_35
        0x149f2b5 -> :sswitch_34
        0x14b532c -> :sswitch_33
        0x196b0b2 -> :sswitch_32
        0x23a6e05 -> :sswitch_31
        0x273e3ca -> :sswitch_30
        0x27a055f -> :sswitch_2f
        0x27cf7ff -> :sswitch_2e
        0x27f7ee3 -> :sswitch_2d
        0x426ba71 -> :sswitch_2c
        0x44f252f -> :sswitch_2b
        0x4a6f6a4 -> :sswitch_2a
        0x7fe2610 -> :sswitch_29
        0x8cc7be4 -> :sswitch_28
        0x8e7f25b -> :sswitch_27
        0xb11a73c -> :sswitch_26
        0xb5790b2 -> :sswitch_25
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0x4526 -> :sswitch_54
        0x4527 -> :sswitch_53
        0x4528 -> :sswitch_52
        0x4529 -> :sswitch_51
        0x452a -> :sswitch_50
        0x14988a0 -> :sswitch_4f
        0x149f2b5 -> :sswitch_4e
        0x14b532c -> :sswitch_4d
        0x165f72e -> :sswitch_4c
        0x196b0b2 -> :sswitch_4b
        0x1ad63a5 -> :sswitch_4a
        0x1ad63a6 -> :sswitch_49
        0x2638204 -> :sswitch_48
        0x263c784 -> :sswitch_47
        0x265bb7b -> :sswitch_46
        0x265c484 -> :sswitch_45
        0x2667c90 -> :sswitch_44
        0x3335d57 -> :sswitch_43
        0x363ca4f -> :sswitch_42
        0x3aae322 -> :sswitch_41
        0x3aaedb7 -> :sswitch_40
        0x426ba71 -> :sswitch_3f
        0x44f252f -> :sswitch_3e
        0x51b6a14 -> :sswitch_3d
        0x722c231 -> :sswitch_3c
        0x7fe2610 -> :sswitch_3b
        0x86eb599 -> :sswitch_3a
        0xab608c2 -> :sswitch_39
    .end sparse-switch
.end method
