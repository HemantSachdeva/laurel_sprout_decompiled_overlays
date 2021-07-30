.class public final Ldll;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I[BIILdhn;)I
    .locals 2

    invoke-static {p0}, Ldnb;->b(I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 70
    invoke-static {p0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    .line 72
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 76
    :cond_0
    invoke-static {}, Ldkn;->d()Ldkn;

    move-result-object p0

    throw p0

    .line 70
    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 71
    invoke-static {p1, p2, p4}, Ldll;->a([BILdhn;)I

    move-result p2

    iget v0, p4, Ldhn;->a:I

    if-ne v0, p0, :cond_2

    goto :goto_1

    .line 72
    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Ldll;->a(I[BIILdhn;)I

    move-result p2

    goto :goto_0

    :cond_3
    nop

    .line 71
    :goto_1
    if-gt p2, p3, :cond_4

    if-ne v0, p0, :cond_4

    .line 73
    return p2

    :cond_4
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object p0

    throw p0

    .line 74
    :cond_5
    invoke-static {p1, p2, p4}, Ldll;->a([BILdhn;)I

    move-result p0

    iget p1, p4, Ldhn;->a:I

    add-int/2addr p0, p1

    return p0

    :cond_6
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 75
    :cond_7
    invoke-static {p1, p2, p4}, Ldll;->b([BILdhn;)I

    move-result p0

    return p0

    .line 70
    :cond_8
    invoke-static {}, Ldkn;->d()Ldkn;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static a(I[BIILdkk;Ldhn;)I
    .locals 2

    .line 61
    check-cast p4, Ldke;

    .line 62
    invoke-static {p1, p2, p5}, Ldll;->a([BILdhn;)I

    move-result p2

    iget v0, p5, Ldhn;->a:I

    .line 63
    invoke-virtual {p4, v0}, Ldke;->c(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    .line 64
    invoke-static {p1, p2, p5}, Ldll;->a([BILdhn;)I

    move-result v0

    iget v1, p5, Ldhn;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    invoke-static {p1, v0, p5}, Ldll;->a([BILdhn;)I

    move-result p2

    iget v0, p5, Ldhn;->a:I

    .line 66
    invoke-virtual {p4, v0}, Ldke;->c(I)V

    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    return p2
.end method

.method static a(I[BIILdmj;Ldhn;)I
    .locals 9

    invoke-static {p0}, Ldnb;->b(I)I

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    invoke-static {p0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    .line 38
    invoke-static {p1, p2}, Ldll;->a([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Ldmj;->a(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 53
    :cond_0
    invoke-static {}, Ldkn;->d()Ldkn;

    move-result-object p0

    throw p0

    .line 37
    :cond_1
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    .line 39
    invoke-static {}, Ldmj;->a()Ldmj;

    move-result-object v7

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 40
    invoke-static {p1, p2, p5}, Ldll;->a([BILdhn;)I

    move-result v3

    iget p2, p5, Ldhn;->a:I

    if-ne p2, v0, :cond_2

    move v1, p2

    move p2, v3

    goto :goto_1

    .line 41
    :cond_2
    move v1, p2

    move-object v2, p1

    move v4, p3

    move-object v5, v7

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Ldll;->a(I[BIILdmj;Ldhn;)I

    move-result v1

    move v8, v1

    move v1, p2

    move p2, v8

    goto :goto_0

    :cond_3
    nop

    .line 40
    :goto_1
    if-gt p2, p3, :cond_4

    if-ne v1, v0, :cond_4

    .line 43
    invoke-virtual {p4, p0, v7}, Ldmj;->a(ILjava/lang/Object;)V

    return p2

    .line 42
    :cond_4
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object p0

    throw p0

    .line 44
    :cond_5
    invoke-static {p1, p2, p5}, Ldll;->a([BILdhn;)I

    move-result p2

    iget p3, p5, Ldhn;->a:I

    if-ltz p3, :cond_8

    .line 46
    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    .line 47
    if-nez p3, :cond_6

    .line 48
    sget-object p1, Ldib;->b:Ldib;

    invoke-virtual {p4, p0, p1}, Ldmj;->a(ILjava/lang/Object;)V

    goto :goto_2

    .line 49
    :cond_6
    invoke-static {p1, p2, p3}, Ldib;->a([BII)Ldib;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Ldmj;->a(ILjava/lang/Object;)V

    .line 48
    :goto_2
    add-int/2addr p2, p3

    return p2

    .line 47
    :cond_7
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object p0

    throw p0

    .line 45
    :cond_8
    invoke-static {}, Ldkn;->b()Ldkn;

    move-result-object p0

    throw p0

    .line 50
    :cond_9
    invoke-static {p1, p2}, Ldll;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Ldmj;->a(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 51
    :cond_a
    invoke-static {p1, p2, p5}, Ldll;->b([BILdhn;)I

    move-result p1

    iget-wide p2, p5, Ldhn;->b:J

    .line 52
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Ldmj;->a(ILjava/lang/Object;)V

    return p1

    .line 37
    :cond_b
    invoke-static {}, Ldkn;->d()Ldkn;

    move-result-object p0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method static a(I[BILdhn;)I
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    .line 54
    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Ldhn;->a:I

    return v0

    :cond_0
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 55
    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Ldhn;->a:I

    return p2

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    .line 56
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Ldhn;->a:I

    return v0

    :cond_2
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 57
    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Ldhn;->a:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 58
    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_0

    :cond_4
    iput p0, p3, Ldhn;->a:I

    return v0
.end method

.method static a(Ldlw;I[BIILdkk;Ldhn;)I
    .locals 2

    .line 21
    invoke-static {p0, p2, p3, p4, p6}, Ldll;->a(Ldlw;[BIILdhn;)I

    move-result p3

    iget-object v0, p6, Ldhn;->c:Ljava/lang/Object;

    .line 22
    invoke-interface {p5, v0}, Ldkk;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    .line 23
    invoke-static {p2, p3, p6}, Ldll;->a([BILdhn;)I

    move-result v0

    iget v1, p6, Ldhn;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Ldll;->a(Ldlw;[BIILdhn;)I

    move-result p3

    iget-object v0, p6, Ldhn;->c:Ljava/lang/Object;

    .line 25
    invoke-interface {p5, v0}, Ldkk;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return p3
.end method

.method static a(Ldlw;[BIIILdhn;)I
    .locals 8

    .line 11
    check-cast p0, Ldlm;

    .line 12
    invoke-virtual {p0}, Ldlm;->a()Ljava/lang/Object;

    move-result-object v7

    .line 13
    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Ldlm;->a(Ljava/lang/Object;[BIIILdhn;)I

    move-result p1

    .line 14
    invoke-virtual {p0, v7}, Ldlm;->d(Ljava/lang/Object;)V

    iput-object v7, p5, Ldhn;->c:Ljava/lang/Object;

    return p1
.end method

.method static a(Ldlw;[BIILdhn;)I
    .locals 6

    add-int/lit8 v0, p2, 0x1

    .line 15
    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    .line 16
    invoke-static {p2, p1, v0, p4}, Ldll;->a(I[BILdhn;)I

    move-result v0

    iget p2, p4, Ldhn;->a:I

    move v3, v0

    goto :goto_0

    .line 20
    :cond_0
    move v3, v0

    .line 16
    :goto_0
    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    .line 18
    invoke-interface {p0}, Ldlw;->a()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    .line 19
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Ldlw;->a(Ljava/lang/Object;[BIILdhn;)V

    .line 20
    invoke-interface {p0, p3}, Ldlw;->d(Ljava/lang/Object;)V

    iput-object p3, p4, Ldhn;->c:Ljava/lang/Object;

    return p2

    .line 17
    :cond_1
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljava/util/Map$Entry;)I
    .locals 0

    .line 77
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldkc;

    iget p0, p0, Ldkc;->b:I

    return p0
.end method

.method static a([BI)I
    .locals 2

    .line 8
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static a([BILdhn;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 59
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Ldhn;->a:I

    return v0

    .line 60
    :cond_0
    invoke-static {p1, p0, v0, p2}, Ldll;->a(I[BILdhn;)I

    move-result p0

    return p0
.end method

.method static a([BILdkk;Ldhn;)I
    .locals 2

    .line 26
    check-cast p2, Ldke;

    .line 27
    invoke-static {p0, p1, p3}, Ldll;->a([BILdhn;)I

    move-result p1

    iget v0, p3, Ldhn;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 28
    invoke-static {p0, p1, p3}, Ldll;->a([BILdhn;)I

    move-result p1

    iget v1, p3, Ldhn;->a:I

    .line 29
    invoke-virtual {p2, v1}, Ldke;->c(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 30
    return p1

    :cond_1
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static a(Ljava/lang/Object;)Ldjt;
    .locals 0

    .line 78
    check-cast p0, Ldkb;

    iget-object p0, p0, Ldkb;->b:Ldjt;

    return-object p0
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "END_DOCUMENT"

    return-object p0

    :pswitch_0
    const-string p0, "NULL"

    return-object p0

    :pswitch_1
    const-string p0, "BOOLEAN"

    return-object p0

    :pswitch_2
    const-string p0, "NUMBER"

    return-object p0

    :pswitch_3
    const-string p0, "STRING"

    return-object p0

    :pswitch_4
    const-string p0, "NAME"

    return-object p0

    :pswitch_5
    const-string p0, "END_OBJECT"

    return-object p0

    :pswitch_6
    const-string p0, "BEGIN_OBJECT"

    return-object p0

    :pswitch_7
    const-string p0, "END_ARRAY"

    return-object p0

    :pswitch_8
    const-string p0, "BEGIN_ARRAY"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 152
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 153
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ldik;Ljava/util/Map$Entry;)V
    .locals 4

    .line 83
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkc;

    iget-boolean v1, v0, Ldkc;->d:Z

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Ldmz;->a:Ldmz;

    iget-object v1, v0, Ldkc;->c:Ldmz;

    invoke-virtual {v1}, Ldmz;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 108
    :pswitch_0
    iget v0, v0, Ldkc;->b:I

    .line 109
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 110
    invoke-static {v0, p1, p0, v2}, Ldlx;->e(ILjava/util/List;Ldik;Z)V

    return-void

    .line 106
    :pswitch_1
    iget v0, v0, Ldkc;->b:I

    .line 107
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 108
    invoke-static {v0, p1, p0, v2}, Ldlx;->j(ILjava/util/List;Ldik;Z)V

    return-void

    .line 104
    :pswitch_2
    iget v0, v0, Ldkc;->b:I

    .line 105
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 106
    invoke-static {v0, p1, p0, v2}, Ldlx;->g(ILjava/util/List;Ldik;Z)V

    return-void

    .line 102
    :pswitch_3
    iget v0, v0, Ldkc;->b:I

    .line 103
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 104
    invoke-static {v0, p1, p0, v2}, Ldlx;->l(ILjava/util/List;Ldik;Z)V

    return-void

    .line 110
    :pswitch_4
    iget v0, v0, Ldkc;->b:I

    .line 111
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 112
    invoke-static {v0, p1, p0, v2}, Ldlx;->h(ILjava/util/List;Ldik;Z)V

    return-void

    .line 100
    :pswitch_5
    iget v0, v0, Ldkc;->b:I

    .line 101
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 102
    invoke-static {v0, p1, p0, v2}, Ldlx;->i(ILjava/util/List;Ldik;Z)V

    return-void

    .line 112
    :pswitch_6
    iget v0, v0, Ldkc;->b:I

    .line 113
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 114
    invoke-static {v0, p1, p0}, Ldlx;->b(ILjava/util/List;Ldik;)V

    return-void

    .line 117
    :pswitch_7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 118
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget v0, v0, Ldkc;->b:I

    .line 119
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 120
    sget-object v3, Ldls;->a:Ldls;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object v1

    .line 121
    invoke-static {v0, p1, p0, v1}, Ldlx;->a(ILjava/util/List;Ldik;Ldlw;)V

    return-void

    .line 122
    :pswitch_8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 123
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget v0, v0, Ldkc;->b:I

    .line 124
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 125
    sget-object v3, Ldls;->a:Ldls;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object v1

    .line 126
    invoke-static {v0, p1, p0, v1}, Ldlx;->b(ILjava/util/List;Ldik;Ldlw;)V

    return-void

    .line 114
    :pswitch_9
    iget v0, v0, Ldkc;->b:I

    .line 115
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 116
    invoke-static {v0, p1, p0}, Ldlx;->a(ILjava/util/List;Ldik;)V

    return-void

    .line 98
    :pswitch_a
    iget v0, v0, Ldkc;->b:I

    .line 99
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 100
    invoke-static {v0, p1, p0, v2}, Ldlx;->n(ILjava/util/List;Ldik;Z)V

    return-void

    .line 96
    :pswitch_b
    iget v0, v0, Ldkc;->b:I

    .line 97
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 98
    invoke-static {v0, p1, p0, v2}, Ldlx;->k(ILjava/util/List;Ldik;Z)V

    return-void

    .line 94
    :pswitch_c
    iget v0, v0, Ldkc;->b:I

    .line 95
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 96
    invoke-static {v0, p1, p0, v2}, Ldlx;->f(ILjava/util/List;Ldik;Z)V

    return-void

    .line 92
    :pswitch_d
    iget v0, v0, Ldkc;->b:I

    .line 93
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 94
    invoke-static {v0, p1, p0, v2}, Ldlx;->h(ILjava/util/List;Ldik;Z)V

    return-void

    .line 90
    :pswitch_e
    iget v0, v0, Ldkc;->b:I

    .line 91
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 92
    invoke-static {v0, p1, p0, v2}, Ldlx;->d(ILjava/util/List;Ldik;Z)V

    return-void

    .line 88
    :pswitch_f
    iget v0, v0, Ldkc;->b:I

    .line 89
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 90
    invoke-static {v0, p1, p0, v2}, Ldlx;->c(ILjava/util/List;Ldik;Z)V

    return-void

    .line 86
    :pswitch_10
    iget v0, v0, Ldkc;->b:I

    .line 87
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 88
    invoke-static {v0, p1, p0, v2}, Ldlx;->b(ILjava/util/List;Ldik;Z)V

    return-void

    .line 84
    :pswitch_11
    iget v0, v0, Ldkc;->b:I

    .line 85
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 86
    invoke-static {v0, p1, p0, v2}, Ldlx;->a(ILjava/util/List;Ldik;Z)V

    return-void

    .line 127
    :cond_0
    sget-object v1, Ldmz;->a:Ldmz;

    iget-object v1, v0, Ldkc;->c:Ldmz;

    invoke-virtual {v1}, Ldmz;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 139
    :pswitch_12
    iget v0, v0, Ldkc;->b:I

    .line 140
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Ldik;->e(IJ)V

    return-void

    .line 138
    :pswitch_13
    iget v0, v0, Ldkc;->b:I

    .line 139
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ldik;->f(II)V

    return-void

    .line 137
    :pswitch_14
    iget v0, v0, Ldkc;->b:I

    .line 138
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Ldik;->b(IJ)V

    return-void

    .line 136
    :pswitch_15
    iget v0, v0, Ldkc;->b:I

    .line 137
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ldik;->a(II)V

    return-void

    .line 140
    :pswitch_16
    iget v0, v0, Ldkc;->b:I

    .line 141
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ldik;->c(II)V

    return-void

    .line 135
    :pswitch_17
    iget v0, v0, Ldkc;->b:I

    .line 136
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ldik;->e(II)V

    return-void

    .line 141
    :pswitch_18
    iget v0, v0, Ldkc;->b:I

    .line 142
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldib;

    invoke-virtual {p0, v0, p1}, Ldik;->a(ILdib;)V

    return-void

    .line 146
    :pswitch_19
    iget v0, v0, Ldkc;->b:I

    .line 147
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 148
    sget-object v2, Ldls;->a:Ldls;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object p1

    .line 149
    invoke-virtual {p0, v0, v1, p1}, Ldik;->a(ILjava/lang/Object;Ldlw;)V

    return-void

    .line 143
    :pswitch_1a
    iget v0, v0, Ldkc;->b:I

    .line 144
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 145
    sget-object v2, Ldls;->a:Ldls;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object p1

    .line 146
    invoke-virtual {p0, v0, v1, p1}, Ldik;->b(ILjava/lang/Object;Ldlw;)V

    return-void

    .line 142
    :pswitch_1b
    iget v0, v0, Ldkc;->b:I

    .line 143
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ldik;->a(ILjava/lang/String;)V

    return-void

    .line 134
    :pswitch_1c
    iget v0, v0, Ldkc;->b:I

    .line 135
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Ldik;->a(IZ)V

    return-void

    .line 133
    :pswitch_1d
    iget v0, v0, Ldkc;->b:I

    .line 134
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ldik;->d(II)V

    return-void

    .line 132
    :pswitch_1e
    iget v0, v0, Ldkc;->b:I

    .line 133
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Ldik;->d(IJ)V

    return-void

    .line 131
    :pswitch_1f
    iget v0, v0, Ldkc;->b:I

    .line 132
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ldik;->c(II)V

    return-void

    .line 130
    :pswitch_20
    iget v0, v0, Ldkc;->b:I

    .line 131
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Ldik;->c(IJ)V

    return-void

    .line 129
    :pswitch_21
    iget v0, v0, Ldkc;->b:I

    .line 130
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Ldik;->a(IJ)V

    return-void

    .line 128
    :pswitch_22
    iget v0, v0, Ldkc;->b:I

    .line 129
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Ldik;->a(IF)V

    return-void

    .line 127
    :pswitch_23
    iget v0, v0, Ldkc;->b:I

    .line 128
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Ldik;->a(ID)V

    return-void

    .line 84
    :cond_1
    :goto_0
    return-void

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

.method public static a(Ldlj;Ljava/lang/StringBuilder;I)V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    .line 188
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    .line 189
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/TreeSet;

    .line 190
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v7, "get"

    if-ge v6, v4, :cond_1

    aget-object v8, v3, v6

    .line 192
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_0

    .line 194
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 196
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 198
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 214
    :cond_3
    move-object v4, v3

    .line 198
    :goto_2
    nop

    .line 199
    const-string v6, "List"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    .line 200
    const-string v8, "OrBuilderList"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 201
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 202
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 245
    :cond_4
    new-instance v8, Ljava/lang/String;

    .line 203
    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 204
    :goto_3
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    if-eqz v8, :cond_5

    .line 205
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/util/List;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 243
    invoke-static {v6}, Ldll;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 244
    invoke-static {v8, p0, v4}, Ldkd;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 245
    invoke-static {p1, p2, v3, v4}, Ldll;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 203
    :cond_5
    nop

    .line 206
    const-string v6, "Map"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 207
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 208
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 242
    :cond_6
    new-instance v8, Ljava/lang/String;

    .line 209
    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 210
    :goto_4
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_7

    .line 211
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    const-class v10, Ljava/util/Map;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-class v8, Ljava/lang/Deprecated;

    .line 212
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 213
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 240
    invoke-static {v6}, Ldll;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    .line 241
    invoke-static {v3, p0, v6}, Ldkd;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 242
    invoke-static {p1, p2, v4, v3}, Ldll;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 214
    :cond_7
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "set"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 216
    :cond_8
    new-instance v3, Ljava/lang/String;

    .line 214
    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    .line 215
    const-string v3, "Bytes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 216
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 218
    :cond_9
    new-instance v3, Ljava/lang/String;

    .line 216
    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 217
    :goto_6
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_a
    nop

    .line 218
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 219
    :cond_b
    new-instance v6, Ljava/lang/String;

    .line 218
    invoke-direct {v6, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 219
    :goto_7
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 220
    :cond_c
    new-instance v6, Ljava/lang/String;

    .line 219
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    .line 220
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "has"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 238
    :cond_d
    new-instance v4, Ljava/lang/String;

    .line 220
    invoke-direct {v4, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_2

    new-array v8, v5, [Ljava/lang/Object;

    .line 221
    invoke-static {v6, p0, v8}, Ldkd;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_15

    .line 222
    instance-of v4, v6, Ljava/lang/Boolean;

    if-eqz v4, :cond_e

    .line 223
    move-object v4, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_b

    .line 224
    :cond_e
    instance-of v4, v6, Ljava/lang/Integer;

    if-eqz v4, :cond_f

    .line 225
    move-object v4, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_b

    .line 226
    :cond_f
    instance-of v4, v6, Ljava/lang/Float;

    if-eqz v4, :cond_10

    .line 227
    move-object v4, v6

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_2

    goto :goto_b

    .line 228
    :cond_10
    instance-of v4, v6, Ljava/lang/Double;

    if-eqz v4, :cond_11

    .line 229
    move-object v4, v6

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v4, v8, v10

    if-eqz v4, :cond_2

    goto :goto_b

    .line 230
    :cond_11
    instance-of v4, v6, Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 231
    const-string v4, ""

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_a

    .line 232
    :cond_12
    instance-of v4, v6, Ldib;

    if-eqz v4, :cond_13

    .line 233
    sget-object v4, Ldib;->b:Ldib;

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 231
    :goto_a
    if-nez v4, :cond_2

    goto :goto_b

    .line 234
    :cond_13
    instance-of v4, v6, Ldlj;

    if-eqz v4, :cond_14

    .line 235
    move-object v4, v6

    check-cast v4, Ldlj;

    invoke-interface {v4}, Ldlj;->i()Ldlj;

    move-result-object v4

    if-eq v6, v4, :cond_2

    goto :goto_b

    .line 236
    :cond_14
    instance-of v4, v6, Ljava/lang/Enum;

    if-eqz v4, :cond_16

    .line 237
    move-object v4, v6

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_b

    :cond_15
    new-array v8, v5, [Ljava/lang/Object;

    .line 238
    invoke-static {v4, p0, v8}, Ldkd;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 239
    :cond_16
    :goto_b
    invoke-static {v3}, Ldll;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, v3, v6}, Ldll;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 246
    :cond_17
    instance-of v0, p0, Ldkb;

    if-eqz v0, :cond_18

    .line 247
    move-object v0, p0

    check-cast v0, Ldkb;

    iget-object v0, v0, Ldkb;->b:Ldjt;

    .line 248
    invoke-virtual {v0}, Ldjt;->d()Ljava/util/Iterator;

    move-result-object v0

    .line 249
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 251
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldkc;

    iget v2, v2, Ldkc;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, p2, v2, v1}, Ldll;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    :cond_18
    check-cast p0, Ldkd;

    .line 252
    iget-object p0, p0, Ldkd;->s:Ldmj;

    if-eqz p0, :cond_19

    :goto_d
    iget v0, p0, Ldmj;->b:I

    if-ge v5, v0, :cond_19

    iget-object v0, p0, Ldmj;->c:[I

    .line 253
    aget v0, v0, v5

    invoke-static {v0}, Ldnb;->b(I)I

    move-result v0

    .line 254
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldmj;->d:[Ljava/lang/Object;

    aget-object v1, v1, v5

    invoke-static {p1, p2, v0, v1}, Ldll;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_19
    return-void
.end method

.method public static a(Ldlv;Ljava/lang/Object;Ldjr;Ldjt;)V
    .locals 1

    check-cast p1, Ldjp;

    iget-object v0, p1, Ldjp;->a:Ldlj;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Ldlv;->a(Ljava/lang/Class;Ldjr;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Ldjp;->b:Ldkc;

    .line 82
    invoke-virtual {p3, p1, p0}, Ldjt;->a(Ldkc;Ljava/lang/Object;)V

    return-void
.end method

.method static final a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 157
    instance-of v0, p3, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 158
    check-cast p3, Ljava/util/List;

    .line 159
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 160
    invoke-static {p0, p1, p2, v0}, Ldll;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 161
    :cond_1
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 162
    check-cast p3, Ljava/util/Map;

    .line 163
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    invoke-static {p0, p1, p2, v0}, Ldll;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0xa

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x20

    if-ge v1, p1, :cond_4

    .line 166
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 167
    :cond_4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    instance-of p2, p3, Ljava/lang/String;

    const/16 v1, 0x22

    const-string v3, ": \""

    if-eqz p2, :cond_5

    .line 169
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Ljava/lang/String;

    .line 170
    invoke-static {p3}, Ldib;->a(Ljava/lang/String;)Ldib;

    move-result-object p1

    invoke-static {p1}, Ldmg;->a(Ldib;)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 171
    :cond_5
    instance-of p2, p3, Ldib;

    if-eqz p2, :cond_6

    .line 172
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Ldib;

    invoke-static {p3}, Ldmg;->a(Ldib;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 173
    :cond_6
    instance-of p2, p3, Ldkd;

    const-string v1, "}"

    const-string v3, "\n"

    const-string v4, " {"

    if-eqz p2, :cond_8

    .line 174
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    check-cast p3, Ldkd;

    add-int/lit8 p2, p1, 0x2

    invoke-static {p3, p0, p2}, Ldll;->a(Ldlj;Ljava/lang/StringBuilder;I)V

    .line 176
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-ge v0, p1, :cond_7

    .line 177
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    nop

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 179
    :cond_8
    instance-of p2, p3, Ljava/util/Map$Entry;

    if-eqz p2, :cond_a

    .line 180
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    check-cast p3, Ljava/util/Map$Entry;

    add-int/lit8 p2, p1, 0x2

    .line 182
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "key"

    invoke-static {p0, p2, v5, v4}, Ldll;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 183
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    const-string v4, "value"

    invoke-static {p0, p2, v4, p3}, Ldll;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-ge v0, p1, :cond_9

    .line 185
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    nop

    .line 186
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_a
    nop

    .line 187
    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static b([BILdhn;)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 67
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 68
    aget-byte v0, p0, v0

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x7

    :goto_0
    if-gez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 69
    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    :cond_0
    iput-wide v1, p2, Ldhn;->b:J

    return p1

    :cond_1
    iput-wide v1, p2, Ldhn;->b:J

    return v0
.end method

.method static b([BI)J
    .locals 7

    .line 9
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static b(Ljava/lang/Object;)Ldjt;
    .locals 0

    .line 79
    check-cast p0, Ldkb;

    invoke-virtual {p0}, Ldkb;->e()Ldjt;

    move-result-object p0

    return-object p0
.end method

.method static c([BI)D
    .locals 0

    .line 7
    invoke-static {p0, p1}, Ldll;->b([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static c([BILdhn;)I
    .locals 3

    .line 31
    invoke-static {p0, p1, p2}, Ldll;->a([BILdhn;)I

    move-result p1

    iget v0, p2, Ldhn;->a:I

    if-ltz v0, :cond_1

    .line 32
    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Ldhn;->c:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 33
    sget-object v2, Ldkl;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Ldhn;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 32
    :cond_1
    invoke-static {}, Ldkn;->b()Ldkn;

    move-result-object p0

    throw p0
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 0

    .line 80
    invoke-static {p0}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object p0

    invoke-virtual {p0}, Ldjt;->b()V

    return-void
.end method

.method static d([BI)F
    .locals 0

    .line 10
    invoke-static {p0, p1}, Ldll;->a([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method static d([BILdhn;)I
    .locals 1

    .line 34
    invoke-static {p0, p1, p2}, Ldll;->a([BILdhn;)I

    move-result p1

    iget v0, p2, Ldhn;->a:I

    if-ltz v0, :cond_1

    .line 35
    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Ldhn;->c:Ljava/lang/Object;

    return p1

    .line 36
    :cond_0
    invoke-static {p0, p1, v0}, Ldmy;->c([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Ldhn;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 35
    :cond_1
    invoke-static {}, Ldkn;->b()Ldkn;

    move-result-object p0

    throw p0
.end method

.method static e([BILdhn;)I
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Ldll;->a([BILdhn;)I

    move-result p1

    iget v0, p2, Ldhn;->a:I

    if-ltz v0, :cond_2

    .line 3
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    .line 4
    if-nez v0, :cond_0

    .line 5
    sget-object p0, Ldib;->b:Ldib;

    iput-object p0, p2, Ldhn;->c:Ljava/lang/Object;

    return p1

    .line 6
    :cond_0
    invoke-static {p0, p1, v0}, Ldib;->a([BII)Ldib;

    move-result-object p0

    iput-object p0, p2, Ldhn;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 4
    :cond_1
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object p0

    throw p0

    .line 2
    :cond_2
    invoke-static {}, Ldkn;->b()Ldkn;

    move-result-object p0

    throw p0
.end method
