.class public final Lesg;
.super Lesf;
.source "PG"


# static fields
.field static final d:[I


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private final m:[I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lesg;->d:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lesf;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lesg;->m:[I

    .line 2
    invoke-virtual {p0}, Lesf;->a()V

    return-void
.end method

.method public constructor <init>(Lesg;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lesf;-><init>(Lesf;)V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lesg;->m:[I

    .line 4
    invoke-direct {p0, p1}, Lesg;->a(Lesg;)V

    return-void
.end method

.method private static final a(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xd

    shl-int/lit8 v2, p0, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x16

    shl-int/lit8 p0, p0, 0xa

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method private static final a(III)I
    .locals 0

    and-int/2addr p1, p0

    xor-int/lit8 p0, p0, -0x1

    and-int/2addr p0, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method private final a(Lesg;)V
    .locals 4

    .line 6
    invoke-super {p0, p1}, Lesf;->a(Lesf;)V

    iget v0, p1, Lesg;->e:I

    iput v0, p0, Lesg;->e:I

    iget v0, p1, Lesg;->f:I

    iput v0, p0, Lesg;->f:I

    iget v0, p1, Lesg;->g:I

    iput v0, p0, Lesg;->g:I

    iget v0, p1, Lesg;->h:I

    iput v0, p0, Lesg;->h:I

    iget v0, p1, Lesg;->i:I

    iput v0, p0, Lesg;->i:I

    iget v0, p1, Lesg;->j:I

    iput v0, p0, Lesg;->j:I

    iget v0, p1, Lesg;->k:I

    iput v0, p0, Lesg;->k:I

    iget v0, p1, Lesg;->l:I

    iput v0, p0, Lesg;->l:I

    iget-object v0, p1, Lesg;->m:[I

    iget-object v1, p0, Lesg;->m:[I

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lesg;->n:I

    iput p1, p0, Lesg;->n:I

    return-void
.end method

.method private static final b(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x6

    shl-int/lit8 v1, p0, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xb

    shl-int/lit8 v2, p0, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x19

    shl-int/lit8 p0, p0, 0x7

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method private static final b(III)I
    .locals 1

    and-int v0, p0, p1

    and-int/2addr p0, p2

    xor-int/2addr p0, v0

    and-int/2addr p1, p2

    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lesf;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lesf;->b:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lesf;->a:[B

    .line 39
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 40
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x6a09e667

    iput v1, p0, Lesg;->e:I

    const v1, -0x4498517b

    iput v1, p0, Lesg;->f:I

    const v1, 0x3c6ef372

    iput v1, p0, Lesg;->g:I

    const v1, -0x5ab00ac6

    iput v1, p0, Lesg;->h:I

    const v1, 0x510e527f

    iput v1, p0, Lesg;->i:I

    const v1, -0x64fa9774

    iput v1, p0, Lesg;->j:I

    const v1, 0x1f83d9ab

    iput v1, p0, Lesg;->k:I

    const v1, 0x5be0cd19

    iput v1, p0, Lesg;->l:I

    iput v0, p0, Lesg;->n:I

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lesg;->m:[I

    .line 41
    array-length v3, v2

    if-eq v1, v3, :cond_1

    .line 42
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lesj;)V
    .locals 0

    .line 43
    check-cast p1, Lesg;

    .line 44
    invoke-direct {p0, p1}, Lesg;->a(Lesg;)V

    return-void
.end method

.method public final a([BI)V
    .locals 6

    iget-wide v0, p0, Lesf;->c:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    .line 8
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lesf;->a(B)V

    :goto_0
    iget v2, p0, Lesf;->b:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2}, Lesf;->a(B)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lesg;->n:I

    const/16 v3, 0xe

    if-le v2, v3, :cond_1

    .line 10
    invoke-virtual {p0}, Lesg;->b()V

    :cond_1
    iget-object v2, p0, Lesg;->m:[I

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v5, v4

    .line 11
    aput v5, v2, v3

    const/16 v3, 0xf

    long-to-int v1, v0

    .line 12
    aput v1, v2, v3

    .line 13
    invoke-virtual {p0}, Lesf;->b()V

    iget v0, p0, Lesg;->e:I

    .line 14
    invoke-static {v0, p1, p2}, Ldzi;->a(I[BI)V

    iget v0, p0, Lesg;->f:I

    add-int/lit8 v1, p2, 0x4

    .line 15
    invoke-static {v0, p1, v1}, Ldzi;->a(I[BI)V

    iget v0, p0, Lesg;->g:I

    add-int/lit8 v1, p2, 0x8

    .line 16
    invoke-static {v0, p1, v1}, Ldzi;->a(I[BI)V

    iget v0, p0, Lesg;->h:I

    add-int/lit8 v1, p2, 0xc

    .line 17
    invoke-static {v0, p1, v1}, Ldzi;->a(I[BI)V

    iget v0, p0, Lesg;->i:I

    add-int/lit8 v1, p2, 0x10

    .line 18
    invoke-static {v0, p1, v1}, Ldzi;->a(I[BI)V

    iget v0, p0, Lesg;->j:I

    add-int/lit8 v1, p2, 0x14

    .line 19
    invoke-static {v0, p1, v1}, Ldzi;->a(I[BI)V

    iget v0, p0, Lesg;->k:I

    add-int/lit8 v1, p2, 0x18

    .line 20
    invoke-static {v0, p1, v1}, Ldzi;->a(I[BI)V

    iget v0, p0, Lesg;->l:I

    add-int/lit8 p2, p2, 0x1c

    .line 21
    invoke-static {v0, p1, p2}, Ldzi;->a(I[BI)V

    .line 22
    invoke-virtual {p0}, Lesf;->a()V

    return-void
.end method

.method protected final b()V
    .locals 15

    const/16 v0, 0x10

    const/16 v1, 0x10

    :goto_0
    const/16 v2, 0x3f

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lesg;->m:[I

    add-int/lit8 v3, v1, -0x2

    .line 23
    aget v3, v2, v3

    add-int/lit8 v4, v1, -0x7

    aget v4, v2, v4

    add-int/lit8 v5, v1, -0xf

    aget v5, v2, v5

    ushr-int/lit8 v6, v3, 0x11

    shl-int/lit8 v7, v3, 0xf

    or-int/2addr v6, v7

    ushr-int/lit8 v7, v3, 0x13

    shl-int/lit8 v8, v3, 0xd

    or-int/2addr v7, v8

    xor-int/2addr v6, v7

    ushr-int/lit8 v3, v3, 0xa

    xor-int/2addr v3, v6

    add-int/2addr v3, v4

    ushr-int/lit8 v4, v5, 0x7

    shl-int/lit8 v6, v5, 0x19

    or-int/2addr v4, v6

    ushr-int/lit8 v6, v5, 0x12

    shl-int/lit8 v7, v5, 0xe

    or-int/2addr v6, v7

    xor-int/2addr v4, v6

    ushr-int/lit8 v5, v5, 0x3

    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x10

    aget v4, v2, v4

    add-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lesg;->e:I

    iget v2, p0, Lesg;->f:I

    iget v3, p0, Lesg;->g:I

    iget v4, p0, Lesg;->h:I

    iget v5, p0, Lesg;->i:I

    iget v6, p0, Lesg;->j:I

    iget v7, p0, Lesg;->k:I

    iget v8, p0, Lesg;->l:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    const/16 v12, 0x8

    if-ge v10, v12, :cond_1

    invoke-static {v5}, Lesg;->b(I)I

    move-result v12

    invoke-static {v5, v6, v7}, Lesg;->a(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lesg;->d:[I

    .line 24
    aget v14, v13, v11

    add-int/2addr v12, v14

    iget-object v14, p0, Lesg;->m:[I

    aget v14, v14, v11

    add-int/2addr v12, v14

    add-int/2addr v8, v12

    add-int/2addr v4, v8

    invoke-static {v1}, Lesg;->a(I)I

    move-result v12

    invoke-static {v1, v2, v3}, Lesg;->b(III)I

    move-result v14

    add-int/2addr v12, v14

    add-int/2addr v8, v12

    add-int/lit8 v11, v11, 0x1

    invoke-static {v4}, Lesg;->b(I)I

    move-result v12

    invoke-static {v4, v5, v6}, Lesg;->a(III)I

    move-result v14

    add-int/2addr v12, v14

    .line 25
    aget v14, v13, v11

    add-int/2addr v12, v14

    iget-object v14, p0, Lesg;->m:[I

    aget v14, v14, v11

    add-int/2addr v12, v14

    add-int/2addr v7, v12

    add-int/2addr v3, v7

    invoke-static {v8}, Lesg;->a(I)I

    move-result v12

    invoke-static {v8, v1, v2}, Lesg;->b(III)I

    move-result v14

    add-int/2addr v12, v14

    add-int/2addr v7, v12

    add-int/lit8 v11, v11, 0x1

    invoke-static {v3}, Lesg;->b(I)I

    move-result v12

    invoke-static {v3, v4, v5}, Lesg;->a(III)I

    move-result v14

    add-int/2addr v12, v14

    .line 26
    aget v14, v13, v11

    add-int/2addr v12, v14

    iget-object v14, p0, Lesg;->m:[I

    aget v14, v14, v11

    add-int/2addr v12, v14

    add-int/2addr v6, v12

    add-int/2addr v2, v6

    invoke-static {v7}, Lesg;->a(I)I

    move-result v12

    invoke-static {v7, v8, v1}, Lesg;->b(III)I

    move-result v14

    add-int/2addr v12, v14

    add-int/2addr v6, v12

    add-int/lit8 v11, v11, 0x1

    invoke-static {v2}, Lesg;->b(I)I

    move-result v12

    invoke-static {v2, v3, v4}, Lesg;->a(III)I

    move-result v14

    add-int/2addr v12, v14

    .line 27
    aget v14, v13, v11

    add-int/2addr v12, v14

    iget-object v14, p0, Lesg;->m:[I

    aget v14, v14, v11

    add-int/2addr v12, v14

    add-int/2addr v5, v12

    add-int/2addr v1, v5

    invoke-static {v6}, Lesg;->a(I)I

    move-result v12

    invoke-static {v6, v7, v8}, Lesg;->b(III)I

    move-result v14

    add-int/2addr v12, v14

    add-int/2addr v5, v12

    add-int/lit8 v11, v11, 0x1

    invoke-static {v1}, Lesg;->b(I)I

    move-result v12

    invoke-static {v1, v2, v3}, Lesg;->a(III)I

    move-result v14

    add-int/2addr v12, v14

    .line 28
    aget v14, v13, v11

    add-int/2addr v12, v14

    iget-object v14, p0, Lesg;->m:[I

    aget v14, v14, v11

    add-int/2addr v12, v14

    add-int/2addr v4, v12

    add-int/2addr v8, v4

    invoke-static {v5}, Lesg;->a(I)I

    move-result v12

    invoke-static {v5, v6, v7}, Lesg;->b(III)I

    move-result v14

    add-int/2addr v12, v14

    add-int/2addr v4, v12

    add-int/lit8 v11, v11, 0x1

    invoke-static {v8}, Lesg;->b(I)I

    move-result v12

    invoke-static {v8, v1, v2}, Lesg;->a(III)I

    move-result v14

    add-int/2addr v12, v14

    .line 29
    aget v14, v13, v11

    add-int/2addr v12, v14

    iget-object v14, p0, Lesg;->m:[I

    aget v14, v14, v11

    add-int/2addr v12, v14

    add-int/2addr v3, v12

    add-int/2addr v7, v3

    invoke-static {v4}, Lesg;->a(I)I

    move-result v12

    invoke-static {v4, v5, v6}, Lesg;->b(III)I

    move-result v14

    add-int/2addr v12, v14

    add-int/2addr v3, v12

    add-int/lit8 v11, v11, 0x1

    invoke-static {v7}, Lesg;->b(I)I

    move-result v12

    invoke-static {v7, v8, v1}, Lesg;->a(III)I

    move-result v14

    add-int/2addr v12, v14

    .line 30
    aget v14, v13, v11

    add-int/2addr v12, v14

    iget-object v14, p0, Lesg;->m:[I

    aget v14, v14, v11

    add-int/2addr v12, v14

    add-int/2addr v2, v12

    add-int/2addr v6, v2

    invoke-static {v3}, Lesg;->a(I)I

    move-result v12

    invoke-static {v3, v4, v5}, Lesg;->b(III)I

    move-result v14

    add-int/2addr v12, v14

    add-int/2addr v2, v12

    add-int/lit8 v11, v11, 0x1

    invoke-static {v6}, Lesg;->b(I)I

    move-result v12

    invoke-static {v6, v7, v8}, Lesg;->a(III)I

    move-result v14

    add-int/2addr v12, v14

    .line 31
    aget v13, v13, v11

    add-int/2addr v12, v13

    iget-object v13, p0, Lesg;->m:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    add-int/2addr v5, v1

    invoke-static {v2}, Lesg;->a(I)I

    move-result v12

    invoke-static {v2, v3, v4}, Lesg;->b(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_1
    iget v10, p0, Lesg;->e:I

    add-int/2addr v10, v1

    iput v10, p0, Lesg;->e:I

    iget v1, p0, Lesg;->f:I

    add-int/2addr v1, v2

    iput v1, p0, Lesg;->f:I

    iget v1, p0, Lesg;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Lesg;->g:I

    iget v1, p0, Lesg;->h:I

    add-int/2addr v1, v4

    iput v1, p0, Lesg;->h:I

    iget v1, p0, Lesg;->i:I

    add-int/2addr v1, v5

    iput v1, p0, Lesg;->i:I

    iget v1, p0, Lesg;->j:I

    add-int/2addr v1, v6

    iput v1, p0, Lesg;->j:I

    iget v1, p0, Lesg;->k:I

    add-int/2addr v1, v7

    iput v1, p0, Lesg;->k:I

    iget v1, p0, Lesg;->l:I

    add-int/2addr v1, v8

    iput v1, p0, Lesg;->l:I

    iput v9, p0, Lesg;->n:I

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lesg;->m:[I

    .line 32
    aput v9, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected final b([BI)V
    .locals 5

    .line 33
    aget-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 34
    aget-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 35
    aget-byte v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 36
    aget-byte p1, p1, p2

    iget-object p2, p0, Lesg;->m:[I

    iget v3, p0, Lesg;->n:I

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0x10

    shl-int/2addr v1, v4

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 37
    aput p1, p2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lesg;->n:I

    if-ne v3, v4, :cond_0

    .line 38
    invoke-virtual {p0}, Lesg;->b()V

    :cond_0
    return-void
.end method

.method public final c()Lesj;
    .locals 1

    new-instance v0, Lesg;

    .line 5
    invoke-direct {v0, p0}, Lesg;-><init>(Lesg;)V

    return-object v0
.end method
