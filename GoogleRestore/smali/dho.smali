.class final Ldho;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldlv;


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Ldho;->a:[B

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ldho;->b:I

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Ldho;->c:I

    return-void
.end method

.method private final A()J
    .locals 2

    .line 175
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ldho;->b(I)V

    .line 176
    invoke-direct {p0}, Ldho;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method private final B()I
    .locals 4

    iget v0, p0, Ldho;->b:I

    iget-object v1, p0, Ldho;->a:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Ldho;->b:I

    .line 174
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private final C()J
    .locals 9

    iget v0, p0, Ldho;->b:I

    iget-object v1, p0, Ldho;->a:[B

    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Ldho;->b:I

    .line 177
    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final a(Ldmz;Ljava/lang/Class;Ldjr;)Ljava/lang/Object;
    .locals 1

    .line 61
    sget-object v0, Ldmz;->a:Ldmz;

    invoke-virtual {p1}, Ldmz;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 79
    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :pswitch_1
    invoke-virtual {p0}, Ldho;->t()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_2
    invoke-virtual {p0}, Ldho;->s()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_3
    invoke-virtual {p0}, Ldho;->r()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_4
    invoke-virtual {p0}, Ldho;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 75
    :pswitch_5
    invoke-virtual {p0}, Ldho;->p()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_6
    invoke-virtual {p0}, Ldho;->o()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 77
    :pswitch_7
    invoke-virtual {p0}, Ldho;->n()Ldib;

    move-result-object p1

    return-object p1

    .line 69
    :pswitch_8
    invoke-virtual {p0, p2, p3}, Ldho;->a(Ljava/lang/Class;Ldjr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 64
    :pswitch_9
    invoke-virtual {p0}, Ldho;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 78
    :pswitch_a
    invoke-virtual {p0}, Ldho;->k()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 74
    :pswitch_b
    invoke-virtual {p0}, Ldho;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 73
    :pswitch_c
    invoke-virtual {p0}, Ldho;->i()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 71
    :pswitch_d
    invoke-virtual {p0}, Ldho;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_e
    invoke-virtual {p0}, Ldho;->f()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 70
    :pswitch_f
    invoke-virtual {p0}, Ldho;->g()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 72
    :pswitch_10
    invoke-virtual {p0}, Ldho;->e()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 76
    :pswitch_11
    invoke-virtual {p0}, Ldho;->d()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

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
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final a(I)V
    .locals 1

    .line 339
    invoke-direct {p0, p1}, Ldho;->b(I)V

    iget v0, p0, Ldho;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Ldho;->b:I

    return-void
.end method

.method private final b(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Ldho;->c:I

    iget v1, p0, Ldho;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 336
    return-void

    :cond_0
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object p1

    throw p1
.end method

.method private final c(Ldlw;Ldjr;)Ljava/lang/Object;
    .locals 3

    .line 191
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    .line 192
    invoke-direct {p0, v0}, Ldho;->b(I)V

    iget v1, p0, Ldho;->c:I

    iget v2, p0, Ldho;->b:I

    add-int/2addr v2, v0

    iput v2, p0, Ldho;->c:I

    .line 193
    :try_start_0
    invoke-interface {p1}, Ldlw;->a()Ljava/lang/Object;

    move-result-object v0

    .line 194
    invoke-interface {p1, v0, p0, p2}, Ldlw;->a(Ljava/lang/Object;Ldlv;Ldjr;)V

    .line 195
    invoke-interface {p1, v0}, Ldlw;->d(Ljava/lang/Object;)V

    iget p1, p0, Ldho;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_0

    .line 197
    iput v1, p0, Ldho;->c:I

    return-object v0

    .line 196
    :cond_0
    :try_start_1
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v1, p0, Ldho;->c:I

    .line 197
    throw p1
.end method

.method private final c(I)V
    .locals 1

    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 338
    return-void

    :cond_0
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1
.end method

.method private final d(Ldlw;Ldjr;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ldho;->e:I

    iget v1, p0, Ldho;->d:I

    invoke-static {v1}, Ldnb;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ldnb;->a(II)I

    move-result v1

    iput v1, p0, Ldho;->e:I

    .line 128
    :try_start_0
    invoke-interface {p1}, Ldlw;->a()Ljava/lang/Object;

    move-result-object v1

    .line 129
    invoke-interface {p1, v1, p0, p2}, Ldlw;->a(Ljava/lang/Object;Ldlv;Ldjr;)V

    .line 130
    invoke-interface {p1, v1}, Ldlw;->d(Ljava/lang/Object;)V

    iget p1, p0, Ldho;->d:I

    iget p2, p0, Ldho;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 132
    iput v0, p0, Ldho;->e:I

    return-object v1

    .line 131
    :cond_0
    :try_start_1
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Ldho;->e:I

    .line 132
    throw p1
.end method

.method private final d(I)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Ldho;->b(I)V

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    .line 352
    return-void

    :cond_0
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object p1

    throw p1
.end method

.method private final e(I)V
    .locals 0

    .line 349
    invoke-direct {p0, p1}, Ldho;->b(I)V

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    .line 350
    return-void

    :cond_0
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object p1

    throw p1
.end method

.method private final f(I)V
    .locals 1

    iget v0, p0, Ldho;->b:I

    if-ne v0, p1, :cond_0

    .line 337
    return-void

    :cond_0
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object p1

    throw p1
.end method

.method private final v()Z
    .locals 2

    iget v0, p0, Ldho;->b:I

    iget v1, p0, Ldho;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final w()I
    .locals 5

    iget v0, p0, Ldho;->b:I

    iget v1, p0, Ldho;->c:I

    if-eq v1, v0, :cond_9

    .line 312
    iget-object v2, p0, Ldho;->a:[B

    add-int/lit8 v3, v0, 0x1

    .line 313
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Ldho;->b:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1

    .line 314
    invoke-direct {p0}, Ldho;->x()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 315
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 316
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    move v1, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 317
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 318
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_7

    add-int/lit8 v1, v3, 0x1

    .line 319
    aget-byte v3, v2, v3

    if-gez v3, :cond_8

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_8

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_5

    goto :goto_0

    .line 320
    :cond_5
    invoke-static {}, Ldkn;->c()Ldkn;

    move-result-object v0

    throw v0

    .line 319
    :cond_6
    move v1, v3

    goto :goto_0

    .line 320
    :cond_7
    move v1, v3

    .line 315
    :cond_8
    :goto_0
    iput v1, p0, Ldho;->b:I

    return v0

    .line 312
    :cond_9
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v0

    throw v0
.end method

.method private final x()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 334
    invoke-direct {p0}, Ldho;->y()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    .line 335
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Ldkn;->c()Ldkn;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final y()B
    .locals 3

    iget v0, p0, Ldho;->b:I

    iget v1, p0, Ldho;->c:I

    if-eq v0, v1, :cond_0

    .line 21
    iget-object v1, p0, Ldho;->a:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ldho;->b:I

    .line 22
    aget-byte v0, v1, v0

    return v0

    .line 21
    :cond_0
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v0

    throw v0
.end method

.method private final z()I
    .locals 1

    .line 172
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ldho;->b(I)V

    .line 173
    invoke-direct {p0}, Ldho;->B()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    iput v0, p0, Ldho;->d:I

    iget v2, p0, Ldho;->e:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Ldnb;->b(I)I

    move-result v0

    return v0
.end method

.method public final a(Ldlw;Ldjr;)Ljava/lang/Object;
    .locals 1

    .line 200
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 201
    invoke-direct {p0, p1, p2}, Ldho;->c(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Class;Ldjr;)Ljava/lang/Object;
    .locals 1

    .line 198
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 199
    sget-object v0, Ldls;->a:Ldls;

    invoke-virtual {v0, p1}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ldho;->c(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 4

    .line 266
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 267
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 268
    :cond_0
    invoke-direct {p0, v0}, Ldho;->b(I)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldho;->a:[B

    iget v1, p0, Ldho;->b:I

    add-int v2, v1, v0

    .line 269
    invoke-static {p1, v1, v2}, Ldmy;->a([BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    invoke-static {}, Ldkn;->i()Ldkn;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Ldho;->a:[B

    iget v2, p0, Ldho;->b:I

    .line 270
    sget-object v3, Ldkl;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Ldho;->b:I

    return-object p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    .line 33
    instance-of v0, p1, Ldjo;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 34
    move-object v0, p1

    check-cast v0, Ldjo;

    iget p1, p0, Ldho;->d:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 35
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    .line 36
    invoke-direct {p0, p1}, Ldho;->d(I)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Ldho;->b:I

    if-ge p1, v1, :cond_4

    .line 37
    invoke-direct {p0}, Ldho;->C()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldjo;->a(D)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 38
    :cond_1
    invoke-virtual {p0}, Ldho;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldjo;->a(D)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Ldho;->b:I

    .line 39
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Ldho;->b:I

    return-void

    .line 37
    :cond_3
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    .line 41
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    .line 42
    invoke-direct {p0, v0}, Ldho;->d(I)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_4

    .line 43
    invoke-direct {p0}, Ldho;->C()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_4
    return-void

    .line 46
    :cond_5
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 44
    :cond_6
    invoke-virtual {p0}, Ldho;->d()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Ldho;->b:I

    .line 45
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Ldho;->b:I

    return-void
.end method

.method public final a(Ljava/util/List;Ldlw;Ldjr;)V
    .locals 3

    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 202
    iget v0, p0, Ldho;->d:I

    .line 203
    :cond_0
    invoke-direct {p0, p2, p3}, Ldho;->c(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Ldho;->b:I

    .line 204
    invoke-direct {p0}, Ldho;->w()I

    move-result v2

    if-eq v2, v0, :cond_0

    iput v1, p0, Ldho;->b:I

    return-void

    .line 202
    :cond_2
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 3

    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 274
    instance-of v0, p1, Ldku;

    if-nez v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    if-nez p2, :cond_3

    .line 277
    move-object v0, p1

    check-cast v0, Ldku;

    .line 278
    :cond_1
    invoke-virtual {p0}, Ldho;->n()Ldib;

    move-result-object p1

    invoke-interface {v0, p1}, Ldku;->a(Ldib;)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Ldho;->b:I

    .line 279
    invoke-direct {p0}, Ldho;->w()I

    move-result p2

    iget v1, p0, Ldho;->d:I

    if-eq p2, v1, :cond_1

    iput p1, p0, Ldho;->b:I

    return-void

    .line 275
    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Ldho;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget v0, p0, Ldho;->b:I

    .line 276
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_3

    iput v0, p0, Ldho;->b:I

    return-void

    .line 273
    :cond_5
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final a(Ljava/util/Map;Ldlc;Ldjr;)V
    .locals 7

    .line 178
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 179
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    .line 180
    invoke-direct {p0, v1}, Ldho;->b(I)V

    iget v2, p0, Ldho;->c:I

    iget v3, p0, Ldho;->b:I

    add-int/2addr v3, v1

    iput v3, p0, Ldho;->c:I

    :try_start_0
    iget-object v1, p2, Ldlc;->b:Ljava/lang/Object;

    iget-object v3, p2, Ldlc;->d:Ljava/lang/Object;

    .line 181
    :goto_0
    invoke-virtual {p0}, Ldho;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    .line 188
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v2, p0, Ldho;->c:I

    return-void

    :cond_0
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_3

    if-eq v4, v0, :cond_2

    .line 185
    :try_start_1
    invoke-virtual {p0}, Ldho;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 189
    :cond_1
    new-instance v4, Ldkn;

    .line 186
    invoke-direct {v4, v6}, Ldkn;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_2
    iget-object v4, p2, Ldlc;->c:Ldmz;

    iget-object v5, p2, Ldlc;->d:Ljava/lang/Object;

    .line 182
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 183
    invoke-direct {p0, v4, v5, p3}, Ldho;->a(Ldmz;Ljava/lang/Class;Ldjr;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v4, p2, Ldlc;->a:Ldmz;

    .line 184
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Ldho;->a(Ldmz;Ljava/lang/Class;Ldjr;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ldkm; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :goto_1
    goto :goto_2

    .line 190
    :catch_0
    move-exception v4

    .line 187
    :try_start_2
    invoke-virtual {p0}, Ldho;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 186
    nop

    .line 185
    :goto_2
    goto :goto_0

    .line 187
    :cond_4
    new-instance p1, Ldkn;

    .line 189
    invoke-direct {p1, v6}, Ldkn;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :catchall_0
    move-exception p1

    iput v2, p0, Ldho;->c:I

    .line 190
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Ldho;->d:I

    return v0
.end method

.method public final b(Ldlw;Ldjr;)Ljava/lang/Object;
    .locals 1

    .line 135
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 136
    invoke-direct {p0, p1, p2}, Ldho;->d(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Class;Ldjr;)Ljava/lang/Object;
    .locals 1

    .line 133
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 134
    sget-object v0, Ldls;->a:Ldls;

    invoke-virtual {v0, p1}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ldho;->d(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;)V
    .locals 3

    .line 114
    instance-of v0, p1, Ldjv;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 115
    check-cast p1, Ldjv;

    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 116
    :cond_0
    invoke-virtual {p0}, Ldho;->e()F

    move-result v0

    invoke-virtual {p1, v0}, Ldjv;->a(F)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Ldho;->b:I

    .line 117
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Ldho;->b:I

    return-void

    .line 121
    :cond_2
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 118
    :cond_3
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    .line 119
    invoke-direct {p0, v0}, Ldho;->e(I)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_9

    .line 120
    invoke-direct {p0}, Ldho;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Ldjv;->a(F)V

    goto :goto_0

    :cond_4
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_7

    .line 122
    :cond_5
    invoke-virtual {p0}, Ldho;->e()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget v0, p0, Ldho;->b:I

    .line 123
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_5

    iput v0, p0, Ldho;->b:I

    return-void

    .line 127
    :cond_7
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 124
    :cond_8
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    .line 125
    invoke-direct {p0, v0}, Ldho;->e(I)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_9

    .line 126
    invoke-direct {p0}, Ldho;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_9
    return-void
.end method

.method public final b(Ljava/util/List;Ldlw;Ldjr;)V
    .locals 3

    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 137
    iget v0, p0, Ldho;->d:I

    .line 138
    :cond_0
    invoke-direct {p0, p2, p3}, Ldho;->d(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Ldho;->b:I

    .line 139
    invoke-direct {p0}, Ldho;->w()I

    move-result v2

    if-eq v2, v0, :cond_0

    iput v1, p0, Ldho;->b:I

    return-void

    .line 137
    :cond_2
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final c(Ljava/util/List;)V
    .locals 4

    .line 298
    instance-of v0, p1, Ldky;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 299
    move-object v0, p1

    check-cast v0, Ldky;

    iget p1, p0, Ldho;->d:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 300
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Ldho;->b:I

    if-ge p1, v1, :cond_0

    .line 301
    invoke-virtual {p0}, Ldho;->u()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldky;->a(J)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-direct {p0, v1}, Ldho;->f(I)V

    return-void

    .line 305
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 303
    :cond_2
    invoke-virtual {p0}, Ldho;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldky;->a(J)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Ldho;->b:I

    .line 304
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Ldho;->b:I

    return-void

    .line 302
    :cond_4
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 306
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_5

    .line 307
    invoke-virtual {p0}, Ldho;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    :cond_5
    invoke-direct {p0, v1}, Ldho;->f(I)V

    return-void

    .line 311
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 309
    :cond_7
    invoke-virtual {p0}, Ldho;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Ldho;->b:I

    .line 310
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Ldho;->b:I

    return-void
.end method

.method public final c()Z
    .locals 7

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget v0, p0, Ldho;->d:I

    iget v2, p0, Ldho;->e:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    const/4 v3, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 344
    nop

    .line 345
    invoke-direct {p0, v3}, Ldho;->a(I)V

    return v2

    .line 348
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object v0

    throw v0

    .line 341
    :cond_2
    iget v0, p0, Ldho;->e:I

    iget v1, p0, Ldho;->d:I

    invoke-static {v1}, Ldnb;->b(I)I

    move-result v1

    invoke-static {v1, v3}, Ldnb;->a(II)I

    move-result v1

    iput v1, p0, Ldho;->e:I

    .line 343
    :cond_3
    invoke-virtual {p0}, Ldho;->a()I

    move-result v1

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_4

    invoke-virtual {p0}, Ldho;->c()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    iget v1, p0, Ldho;->d:I

    iget v3, p0, Ldho;->e:I

    if-ne v1, v3, :cond_5

    .line 344
    iput v0, p0, Ldho;->e:I

    return v2

    :cond_5
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object v0

    throw v0

    .line 346
    :cond_6
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    invoke-direct {p0, v0}, Ldho;->a(I)V

    return v2

    .line 348
    :cond_7
    const/16 v0, 0x8

    .line 347
    invoke-direct {p0, v0}, Ldho;->a(I)V

    return v2

    .line 0
    :cond_8
    iget v0, p0, Ldho;->c:I

    iget v3, p0, Ldho;->b:I

    sub-int/2addr v0, v3

    const/16 v4, 0xa

    if-lt v0, v4, :cond_a

    iget-object v0, p0, Ldho;->a:[B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_a

    add-int/lit8 v6, v3, 0x1

    .line 340
    aget-byte v3, v0, v3

    if-ltz v3, :cond_9

    iput v6, p0, Ldho;->b:I

    goto :goto_2

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_0

    :cond_a
    nop

    :goto_1
    if-ge v1, v4, :cond_c

    .line 341
    invoke-direct {p0}, Ldho;->y()B

    move-result v0

    if-gez v0, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    :cond_b
    :goto_2
    return v2

    .line 342
    :cond_c
    invoke-static {}, Ldkn;->c()Ldkn;

    move-result-object v0

    throw v0

    .line 0
    :cond_d
    :goto_3
    return v1
.end method

.method public final d()D
    .locals 2

    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 32
    invoke-direct {p0}, Ldho;->A()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Ljava/util/List;)V
    .locals 4

    .line 158
    instance-of v0, p1, Ldky;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 159
    move-object v0, p1

    check-cast v0, Ldky;

    iget p1, p0, Ldho;->d:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 160
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Ldho;->b:I

    if-ge p1, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Ldho;->u()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldky;->a(J)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-direct {p0, v1}, Ldho;->f(I)V

    return-void

    .line 165
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 163
    :cond_2
    invoke-virtual {p0}, Ldho;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldky;->a(J)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Ldho;->b:I

    .line 164
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Ldho;->b:I

    return-void

    .line 162
    :cond_4
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 166
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_5

    .line 167
    invoke-virtual {p0}, Ldho;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    :cond_5
    invoke-direct {p0, v1}, Ldho;->f(I)V

    return-void

    .line 171
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 169
    :cond_7
    invoke-virtual {p0}, Ldho;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Ldho;->b:I

    .line 170
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Ldho;->b:I

    return-void
.end method

.method public final e()F
    .locals 1

    .line 112
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 113
    invoke-direct {p0}, Ldho;->z()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final e(Ljava/util/List;)V
    .locals 3

    .line 142
    instance-of v0, p1, Ldke;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 143
    move-object v0, p1

    check-cast v0, Ldke;

    iget p1, p0, Ldho;->d:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 144
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Ldho;->b:I

    if-ge p1, v1, :cond_0

    .line 145
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0, v1}, Ldho;->f(I)V

    return-void

    .line 149
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 147
    :cond_2
    invoke-virtual {p0}, Ldho;->h()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Ldho;->b:I

    .line 148
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Ldho;->b:I

    return-void

    .line 146
    :cond_4
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 150
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_5

    .line 151
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    :cond_5
    invoke-direct {p0, v1}, Ldho;->f(I)V

    return-void

    .line 155
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 153
    :cond_7
    invoke-virtual {p0}, Ldho;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Ldho;->b:I

    .line 154
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Ldho;->b:I

    return-void
.end method

.method public final f()J
    .locals 2

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 297
    invoke-virtual {p0}, Ldho;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Ljava/util/List;)V
    .locals 4

    .line 98
    instance-of v0, p1, Ldky;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 99
    move-object v0, p1

    check-cast v0, Ldky;

    iget p1, p0, Ldho;->d:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 100
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    .line 101
    invoke-direct {p0, p1}, Ldho;->d(I)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Ldho;->b:I

    if-ge p1, v1, :cond_4

    .line 102
    invoke-direct {p0}, Ldho;->C()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldky;->a(J)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 103
    :cond_1
    invoke-virtual {p0}, Ldho;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldky;->a(J)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Ldho;->b:I

    .line 104
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Ldho;->b:I

    return-void

    .line 102
    :cond_3
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    .line 106
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    .line 107
    invoke-direct {p0, v0}, Ldho;->d(I)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_4

    .line 108
    invoke-direct {p0}, Ldho;->C()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_4
    return-void

    .line 111
    :cond_5
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 109
    :cond_6
    invoke-virtual {p0}, Ldho;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Ldho;->b:I

    .line 110
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Ldho;->b:I

    return-void
.end method

.method public final g()J
    .locals 2

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 157
    invoke-virtual {p0}, Ldho;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Ljava/util/List;)V
    .locals 3

    .line 82
    instance-of v0, p1, Ldke;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 83
    check-cast p1, Ldke;

    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 84
    :cond_0
    invoke-virtual {p0}, Ldho;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Ldke;->c(I)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Ldho;->b:I

    .line 85
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Ldho;->b:I

    return-void

    .line 89
    :cond_2
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 86
    :cond_3
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    .line 87
    invoke-direct {p0, v0}, Ldho;->e(I)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_9

    .line 88
    invoke-direct {p0}, Ldho;->B()I

    move-result v0

    invoke-virtual {p1, v0}, Ldke;->c(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_7

    .line 90
    :cond_5
    invoke-virtual {p0}, Ldho;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget v0, p0, Ldho;->b:I

    .line 91
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_5

    iput v0, p0, Ldho;->b:I

    return-void

    .line 95
    :cond_7
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 92
    :cond_8
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    .line 93
    invoke-direct {p0, v0}, Ldho;->e(I)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_9

    .line 94
    invoke-direct {p0}, Ldho;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_9
    return-void
.end method

.method public final h()I
    .locals 1

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 141
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    return v0
.end method

.method public final h(Ljava/util/List;)V
    .locals 4

    .line 7
    instance-of v0, p1, Ldhq;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    .line 8
    move-object v0, p1

    check-cast v0, Ldhq;

    iget p1, p0, Ldho;->d:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v3, :cond_2

    .line 9
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    iget v3, p0, Ldho;->b:I

    add-int/2addr v3, p1

    :goto_0
    iget p1, p0, Ldho;->b:I

    if-ge p1, v3, :cond_1

    .line 10
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Ldhq;->a(Z)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, v3}, Ldho;->f(I)V

    return-void

    .line 14
    :cond_2
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 12
    :cond_3
    invoke-virtual {p0}, Ldho;->k()Z

    move-result p1

    invoke-virtual {v0, p1}, Ldhq;->a(Z)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget p1, p0, Ldho;->b:I

    .line 13
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_3

    iput p1, p0, Ldho;->b:I

    return-void

    .line 11
    :cond_5
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    .line 15
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    iget v3, p0, Ldho;->b:I

    add-int/2addr v3, v0

    :goto_2
    iget v0, p0, Ldho;->b:I

    if-ge v0, v3, :cond_7

    .line 16
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_7
    invoke-direct {p0, v3}, Ldho;->f(I)V

    return-void

    .line 20
    :cond_8
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 18
    :cond_9
    invoke-virtual {p0}, Ldho;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget v0, p0, Ldho;->b:I

    .line 19
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_9

    iput v0, p0, Ldho;->b:I

    return-void
.end method

.method public final i()J
    .locals 2

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 97
    invoke-direct {p0}, Ldho;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(Ljava/util/List;)V
    .locals 1

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldho;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final j()I
    .locals 1

    .line 80
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 81
    invoke-direct {p0}, Ldho;->z()I

    move-result v0

    return v0
.end method

.method public final j(Ljava/util/List;)V
    .locals 1

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ldho;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 3

    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 28
    :cond_0
    invoke-virtual {p0}, Ldho;->n()Ldib;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Ldho;->b:I

    .line 29
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_0

    .line 30
    iput v0, p0, Ldho;->b:I

    return-void

    :cond_2
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 6
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldho;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l(Ljava/util/List;)V
    .locals 3

    .line 284
    instance-of v0, p1, Ldke;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 285
    move-object v0, p1

    check-cast v0, Ldke;

    iget p1, p0, Ldho;->d:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 286
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Ldho;->b:I

    if-ge p1, v1, :cond_4

    .line 287
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 288
    :cond_1
    invoke-virtual {p0}, Ldho;->o()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Ldho;->b:I

    .line 289
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Ldho;->b:I

    return-void

    .line 287
    :cond_3
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    .line 291
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_4

    .line 292
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    :cond_4
    return-void

    .line 295
    :cond_5
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 293
    :cond_6
    invoke-virtual {p0}, Ldho;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Ldho;->b:I

    .line 294
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Ldho;->b:I

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldho;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ljava/util/List;)V
    .locals 3

    .line 49
    instance-of v0, p1, Ldke;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 50
    move-object v0, p1

    check-cast v0, Ldke;

    iget p1, p0, Ldho;->d:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 51
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Ldho;->b:I

    if-ge p1, v1, :cond_4

    .line 52
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 53
    :cond_1
    invoke-virtual {p0}, Ldho;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Ldho;->b:I

    .line 54
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Ldho;->b:I

    return-void

    .line 52
    :cond_3
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    .line 56
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_4

    .line 57
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :cond_4
    return-void

    .line 60
    :cond_5
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 58
    :cond_6
    invoke-virtual {p0}, Ldho;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Ldho;->b:I

    .line 59
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Ldho;->b:I

    return-void
.end method

.method public final n()Ldib;
    .locals 3

    .line 23
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 24
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Ldib;->b:Ldib;

    return-object v0

    .line 26
    :cond_0
    invoke-direct {p0, v0}, Ldho;->b(I)V

    iget-object v1, p0, Ldho;->a:[B

    iget v2, p0, Ldho;->b:I

    .line 27
    invoke-static {v1, v2, v0}, Ldib;->b([BII)Ldib;

    move-result-object v1

    iget v2, p0, Ldho;->b:I

    add-int/2addr v2, v0

    iput v2, p0, Ldho;->b:I

    return-object v1
.end method

.method public final n(Ljava/util/List;)V
    .locals 3

    .line 207
    instance-of v0, p1, Ldke;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 208
    check-cast p1, Ldke;

    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 209
    :cond_0
    invoke-virtual {p0}, Ldho;->q()I

    move-result v0

    invoke-virtual {p1, v0}, Ldke;->c(I)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Ldho;->b:I

    .line 210
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Ldho;->b:I

    return-void

    .line 214
    :cond_2
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 211
    :cond_3
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    .line 212
    invoke-direct {p0, v0}, Ldho;->e(I)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_9

    .line 213
    invoke-direct {p0}, Ldho;->B()I

    move-result v0

    invoke-virtual {p1, v0}, Ldke;->c(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_7

    .line 215
    :cond_5
    invoke-virtual {p0}, Ldho;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget v0, p0, Ldho;->b:I

    .line 216
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_5

    iput v0, p0, Ldho;->b:I

    return-void

    .line 220
    :cond_7
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 217
    :cond_8
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    .line 218
    invoke-direct {p0, v0}, Ldho;->e(I)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_9

    .line 219
    invoke-direct {p0}, Ldho;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_9
    return-void
.end method

.method public final o()I
    .locals 1

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 283
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    return v0
.end method

.method public final o(Ljava/util/List;)V
    .locals 4

    .line 223
    instance-of v0, p1, Ldky;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 224
    move-object v0, p1

    check-cast v0, Ldky;

    iget p1, p0, Ldho;->d:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 225
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    .line 226
    invoke-direct {p0, p1}, Ldho;->d(I)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Ldho;->b:I

    if-ge p1, v1, :cond_4

    .line 227
    invoke-direct {p0}, Ldho;->C()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldky;->a(J)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 228
    :cond_1
    invoke-virtual {p0}, Ldho;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldky;->a(J)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Ldho;->b:I

    .line 229
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Ldho;->b:I

    return-void

    .line 227
    :cond_3
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    .line 231
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    .line 232
    invoke-direct {p0, v0}, Ldho;->d(I)V

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_4

    .line 233
    invoke-direct {p0}, Ldho;->C()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :cond_4
    return-void

    .line 236
    :cond_5
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 234
    :cond_6
    invoke-virtual {p0}, Ldho;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Ldho;->b:I

    .line 235
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Ldho;->b:I

    return-void
.end method

.method public final p()I
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 48
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    return v0
.end method

.method public final p(Ljava/util/List;)V
    .locals 3

    .line 239
    instance-of v0, p1, Ldke;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 240
    move-object v0, p1

    check-cast v0, Ldke;

    iget p1, p0, Ldho;->d:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 241
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Ldho;->b:I

    if-ge p1, v1, :cond_4

    .line 242
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    invoke-static {p1}, Ldie;->f(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 243
    :cond_1
    invoke-virtual {p0}, Ldho;->s()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Ldho;->b:I

    .line 244
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Ldho;->b:I

    return-void

    .line 242
    :cond_3
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    .line 246
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_4

    .line 247
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    invoke-static {v0}, Ldie;->f(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_4
    return-void

    .line 250
    :cond_5
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 248
    :cond_6
    invoke-virtual {p0}, Ldho;->s()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Ldho;->b:I

    .line 249
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Ldho;->b:I

    return-void
.end method

.method public final q()I
    .locals 1

    .line 205
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 206
    invoke-direct {p0}, Ldho;->z()I

    move-result v0

    return v0
.end method

.method public final q(Ljava/util/List;)V
    .locals 4

    .line 253
    instance-of v0, p1, Ldky;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 254
    move-object v0, p1

    check-cast v0, Ldky;

    iget p1, p0, Ldho;->d:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 255
    invoke-direct {p0}, Ldho;->w()I

    move-result p1

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Ldho;->b:I

    if-ge p1, v1, :cond_4

    .line 256
    invoke-virtual {p0}, Ldho;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ldie;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldky;->a(J)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 257
    :cond_1
    invoke-virtual {p0}, Ldho;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldky;->a(J)V

    invoke-direct {p0}, Ldho;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Ldho;->b:I

    .line 258
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Ldho;->b:I

    return-void

    .line 256
    :cond_3
    iget v0, p0, Ldho;->d:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    .line 260
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    iget v1, p0, Ldho;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Ldho;->b:I

    if-ge v0, v1, :cond_4

    .line 261
    invoke-virtual {p0}, Ldho;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ldie;->a(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    :cond_4
    return-void

    .line 264
    :cond_5
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 262
    :cond_6
    invoke-virtual {p0}, Ldho;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldho;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Ldho;->b:I

    .line 263
    invoke-direct {p0}, Ldho;->w()I

    move-result v1

    iget v2, p0, Ldho;->d:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Ldho;->b:I

    return-void
.end method

.method public final r()J
    .locals 2

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 222
    invoke-direct {p0}, Ldho;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()I
    .locals 1

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 238
    invoke-direct {p0}, Ldho;->w()I

    move-result v0

    invoke-static {v0}, Ldie;->f(I)I

    move-result v0

    return v0
.end method

.method public final t()J
    .locals 2

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldho;->c(I)V

    .line 252
    invoke-virtual {p0}, Ldho;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldie;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final u()J
    .locals 11

    iget v0, p0, Ldho;->b:I

    iget v1, p0, Ldho;->c:I

    if-eq v1, v0, :cond_b

    .line 321
    iget-object v2, p0, Ldho;->a:[B

    add-int/lit8 v3, v0, 0x1

    .line 322
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Ldho;->b:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1

    .line 323
    invoke-direct {p0}, Ldho;->x()J

    move-result-wide v0

    return-wide v0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 324
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    int-to-long v2, v0

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 325
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 326
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    int-to-long v2, v0

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    int-to-long v4, v0

    .line 327
    aget-byte v0, v2, v1

    int-to-long v0, v0

    const/16 v6, 0x1c

    shl-long/2addr v0, v6

    xor-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_5

    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v0, v4

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v6, v3, 0x1

    .line 328
    aget-byte v3, v2, v3

    int-to-long v7, v3

    const/16 v3, 0x23

    shl-long/2addr v7, v3

    xor-long/2addr v0, v7

    cmp-long v3, v0, v4

    if-gez v3, :cond_6

    const-wide v2, -0x7f01fc080L

    xor-long/2addr v2, v0

    move v1, v6

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v6, 0x1

    .line 329
    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_7

    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v0, v4

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto :goto_0

    :cond_7
    add-int/lit8 v6, v3, 0x1

    .line 330
    aget-byte v3, v2, v3

    int-to-long v7, v3

    const/16 v3, 0x31

    shl-long/2addr v7, v3

    xor-long/2addr v0, v7

    cmp-long v3, v0, v4

    if-gez v3, :cond_8

    const-wide v2, -0x1fc07f01fc080L

    xor-long/2addr v2, v0

    move v1, v6

    goto :goto_0

    :cond_8
    add-int/lit8 v3, v6, 0x1

    .line 331
    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-gez v6, :cond_a

    add-int/lit8 v6, v3, 0x1

    .line 332
    aget-byte v2, v2, v3

    int-to-long v2, v2

    cmp-long v7, v2, v4

    if-ltz v7, :cond_9

    move-wide v2, v0

    move v1, v6

    goto :goto_0

    .line 333
    :cond_9
    invoke-static {}, Ldkn;->c()Ldkn;

    move-result-object v0

    throw v0

    :cond_a
    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    .line 324
    :goto_0
    iput v1, p0, Ldho;->b:I

    return-wide v2

    .line 321
    :cond_b
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object v0

    throw v0
.end method
