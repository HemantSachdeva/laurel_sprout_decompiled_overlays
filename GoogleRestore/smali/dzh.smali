.class public final Ldzh;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 6
    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a([I)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 7
    aput v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a([I[II[I)V
    .locals 3

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 37
    aget v1, p0, v0

    add-int v2, p2, v0

    aget v2, p1, v2

    xor-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a([I[I[I[I)V
    .locals 7

    array-length v0, p0

    add-int/lit8 v1, v0, -0x10

    .line 1
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {p0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    ushr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-lez v1, :cond_0

    .line 2
    invoke-static {p1, p0, v4, p2}, Ldzh;->a([I[II[I)V

    .line 3
    invoke-static {p2, p1}, Lesh;->a([I[I)V

    .line 4
    invoke-static {p1, v2, p3, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, v0, v4

    sub-int v5, v6, v5

    add-int/2addr v4, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    array-length p1, p3

    .line 5
    invoke-static {p3, v2, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a([[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 8
    aget-object v1, p0, v0

    invoke-static {v1}, Ldzh;->a([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a([B[BI)[B
    .locals 12

    new-instance v0, Lesd;

    .line 9
    new-instance v1, Lesg;

    invoke-direct {v1}, Lesg;-><init>()V

    invoke-direct {v0, v1}, Lesd;-><init>(Lesb;)V

    iput-object p0, v0, Lesd;->a:[B

    iput-object p1, v0, Lesd;->b:[B

    const/4 p0, 0x1

    iput p0, v0, Lesd;->c:I

    mul-int/lit8 p2, p2, 0x8

    const/4 p1, 0x3

    shr-int/2addr p2, p1

    add-int/lit8 v1, p2, 0x1f

    shr-int/lit8 v1, v1, 0x5

    const/4 v2, 0x4

    new-array v3, v2, [B

    mul-int/lit8 v4, v1, 0x20

    new-array v5, v4, [B

    iget-object v6, v0, Lesd;->a:[B

    .line 10
    array-length v7, v6

    new-array v8, v7, [B

    .line 11
    const/4 v9, 0x0

    invoke-static {v6, v9, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v0, Lesd;->d:Lesc;

    check-cast v6, Lesi;

    iget-object v10, v6, Lesi;->a:Lesb;

    .line 12
    invoke-interface {v10}, Lesb;->a()V

    const/16 v10, 0x40

    if-le v7, v10, :cond_0

    iget-object v11, v6, Lesi;->a:Lesb;

    .line 13
    invoke-interface {v11, v8, v9, v7}, Lesb;->a([BII)V

    iget-object v7, v6, Lesi;->a:Lesb;

    iget-object v8, v6, Lesi;->d:[B

    .line 14
    invoke-interface {v7, v8, v9}, Lesb;->a([BI)V

    const/16 v7, 0x20

    goto :goto_0

    .line 35
    :cond_0
    iget-object v11, v6, Lesi;->d:[B

    .line 15
    invoke-static {v8, v9, v11, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    :goto_0
    iget-object v8, v6, Lesi;->d:[B

    array-length v11, v8

    if-ge v7, v11, :cond_1

    .line 16
    aput-byte v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, v6, Lesi;->e:[B

    .line 17
    invoke-static {v8, v9, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v6, Lesi;->d:[B

    const/16 v8, 0x36

    .line 18
    invoke-static {v7, v8}, Lesi;->a([BB)V

    iget-object v7, v6, Lesi;->e:[B

    const/16 v8, 0x5c

    .line 19
    invoke-static {v7, v8}, Lesi;->a([BB)V

    iget-object v7, v6, Lesi;->a:Lesb;

    .line 20
    invoke-interface {v7}, Lesj;->c()Lesj;

    move-result-object v7

    iput-object v7, v6, Lesi;->c:Lesj;

    iget-object v7, v6, Lesi;->c:Lesj;

    .line 21
    check-cast v7, Lesb;

    iget-object v8, v6, Lesi;->e:[B

    invoke-interface {v7, v8, v9, v10}, Lesb;->a([BII)V

    iget-object v7, v6, Lesi;->a:Lesb;

    iget-object v8, v6, Lesi;->d:[B

    array-length v10, v8

    .line 22
    invoke-interface {v7, v8, v9, v10}, Lesb;->a([BII)V

    iget-object v7, v6, Lesi;->a:Lesb;

    .line 23
    invoke-interface {v7}, Lesj;->c()Lesj;

    move-result-object v7

    iput-object v7, v6, Lesi;->b:Lesj;

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_1
    if-gt v6, v1, :cond_5

    const/4 v8, 0x3

    .line 24
    :goto_2
    aget-byte v10, v3, v8

    add-int/2addr v10, p0

    int-to-byte v10, v10

    aput-byte v10, v3, v8

    if-nez v10, :cond_2

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_2
    iget-object v8, v0, Lesd;->b:[B

    iget v10, v0, Lesd;->c:I

    if-eqz v10, :cond_4

    .line 33
    if-eqz v8, :cond_3

    iget-object v10, v0, Lesd;->d:Lesc;

    array-length v11, v8

    .line 25
    invoke-interface {v10, v8, v11}, Lesc;->a([BI)V

    :cond_3
    iget-object v8, v0, Lesd;->d:Lesc;

    .line 26
    invoke-interface {v8, v3, v2}, Lesc;->a([BI)V

    iget-object v8, v0, Lesd;->d:Lesc;

    iget-object v10, v0, Lesd;->e:[B

    .line 27
    invoke-interface {v8, v10}, Lesc;->a([B)V

    iget-object v8, v0, Lesd;->e:[B

    .line 28
    array-length v10, v8

    invoke-static {v8, v9, v5, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    add-int/lit8 v7, v7, 0x20

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 24
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string p1, "iteration count must be at least 1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_5
    new-array p0, p2, [B

    if-ge v4, p2, :cond_6

    .line 34
    invoke-static {v5, v9, p0, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 36
    :cond_6
    nop

    .line 35
    invoke-static {v5, v9, p0, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :goto_3
    new-array p1, p2, [B

    .line 36
    invoke-static {p0, v9, p1, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
