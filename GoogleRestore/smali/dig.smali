.class final Ldig;
.super Ldij;
.source "PG"


# instance fields
.field final a:[B

.field final b:I

.field c:I

.field d:I

.field private final g:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Ldij;-><init>()V

    if-ltz p2, :cond_1

    .line 24
    const/16 v0, 0x14

    .line 25
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Ldig;->a:[B

    .line 26
    array-length p2, p2

    iput p2, p0, Ldig;->b:I

    if-eqz p1, :cond_0

    .line 27
    iput-object p1, p0, Ldig;->g:Ljava/io/OutputStream;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 27
    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 0
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string p2, "bufferSize must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final u(I)V
    .locals 2

    iget v0, p0, Ldig;->b:I

    iget v1, p0, Ldig;->c:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 29
    invoke-virtual {p0}, Ldig;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 23
    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(B)V
    .locals 3

    iget-object v0, p0, Ldig;->a:[B

    iget v1, p0, Ldig;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldig;->c:I

    .line 1
    aput-byte p1, v0, v1

    iget p1, p0, Ldig;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldig;->d:I

    return-void
.end method

.method final a(I)V
    .locals 6

    sget-boolean v0, Ldij;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ldig;->c:I

    int-to-long v0, v0

    :goto_0
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_0

    iget-object v2, p0, Ldig;->a:[B

    iget v3, p0, Ldig;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ldig;->c:I

    int-to-long v3, v3

    int-to-byte p1, p1

    .line 18
    invoke-static {v2, v3, v4, p1}, Ldms;->a([BJB)V

    iget p1, p0, Ldig;->c:I

    iget v2, p0, Ldig;->d:I

    int-to-long v3, p1

    sub-long/2addr v3, v0

    long-to-int p1, v3

    add-int/2addr v2, p1

    iput v2, p0, Ldig;->d:I

    return-void

    :cond_0
    iget-object v2, p0, Ldig;->a:[B

    iget v3, p0, Ldig;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ldig;->c:I

    int-to-long v3, v3

    and-int/lit8 v5, p1, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 17
    invoke-static {v2, v3, v4, v5}, Ldms;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget-object v0, p0, Ldig;->a:[B

    iget v1, p0, Ldig;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldig;->c:I

    int-to-byte p1, p1

    .line 16
    aput-byte p1, v0, v1

    iget p1, p0, Ldig;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldig;->d:I

    return-void

    :cond_2
    iget-object v0, p0, Ldig;->a:[B

    iget v1, p0, Ldig;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldig;->c:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 15
    aput-byte v2, v0, v1

    iget v0, p0, Ldig;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldig;->d:I

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method final a(II)V
    .locals 0

    invoke-static {p1, p2}, Ldnb;->a(II)I

    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Ldig;->a(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    .line 102
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Ldig;->u(I)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldig;->a(II)V

    .line 104
    invoke-virtual {p0, p2, p3}, Ldig;->a(J)V

    return-void
.end method

.method public final a(ILdib;)V
    .locals 1

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ldig;->b(II)V

    .line 43
    invoke-virtual {p0, p2}, Ldig;->a(Ldib;)V

    return-void
.end method

.method public final a(ILdlj;)V
    .locals 3

    .line 70
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ldig;->b(II)V

    .line 71
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Ldig;->d(II)V

    .line 72
    invoke-virtual {p0, v1, v2}, Ldig;->b(II)V

    .line 73
    invoke-virtual {p0, p2}, Ldig;->a(Ldlj;)V

    .line 74
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Ldig;->b(II)V

    return-void
.end method

.method public final a(ILdlj;Ldlw;)V
    .locals 2

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ldig;->b(II)V

    .line 64
    move-object p1, p2

    check-cast p1, Ldhi;

    invoke-virtual {p1}, Ldhi;->U()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 65
    invoke-interface {p3, p1}, Ldlw;->b(Ljava/lang/Object;)I

    move-result v0

    .line 66
    invoke-virtual {p1, v0}, Ldhi;->a(I)V

    goto :goto_0

    .line 67
    :cond_0
    nop

    .line 64
    :goto_0
    invoke-virtual {p0, v0}, Ldig;->d(I)V

    iget-object p1, p0, Ldig;->f:Ldik;

    .line 67
    invoke-interface {p3, p2, p1}, Ldlw;->a(Ljava/lang/Object;Ldik;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .line 79
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ldig;->b(II)V

    .line 80
    invoke-virtual {p0, p2}, Ldig;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .line 37
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ldig;->u(I)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldig;->a(II)V

    .line 39
    invoke-virtual {p0, p2}, Ldig;->a(B)V

    return-void
.end method

.method final a(J)V
    .locals 11

    sget-boolean v0, Ldij;->e:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    iget v0, p0, Ldig;->c:I

    int-to-long v6, v0

    :goto_0
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ldig;->a:[B

    iget v1, p0, Ldig;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldig;->c:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 22
    invoke-static {v0, v1, v2, p1}, Ldms;->a([BJB)V

    iget p1, p0, Ldig;->c:I

    iget p2, p0, Ldig;->d:I

    int-to-long v0, p1

    sub-long/2addr v0, v6

    long-to-int p1, v0

    add-int/2addr p2, p1

    iput p2, p0, Ldig;->d:I

    return-void

    :cond_0
    iget-object v0, p0, Ldig;->a:[B

    iget v8, p0, Ldig;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ldig;->c:I

    int-to-long v8, v8

    long-to-int v10, p1

    and-int/lit8 v10, v10, 0x7f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    .line 21
    invoke-static {v0, v8, v9, v10}, Ldms;->a([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    nop

    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Ldig;->a:[B

    iget v1, p0, Ldig;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldig;->c:I

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 20
    aput-byte p1, v0, v1

    iget p1, p0, Ldig;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldig;->d:I

    return-void

    :cond_2
    iget-object v0, p0, Ldig;->a:[B

    iget v6, p0, Ldig;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ldig;->c:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 19
    aput-byte v7, v0, v6

    iget v0, p0, Ldig;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldig;->d:I

    ushr-long/2addr p1, v1

    goto :goto_1
.end method

.method public final a(Ldib;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Ldib;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Ldig;->d(I)V

    .line 45
    invoke-virtual {p1, p0}, Ldib;->a(Ldhr;)V

    return-void
.end method

.method public final a(Ldlj;)V
    .locals 1

    .line 68
    invoke-interface {p1}, Ldlj;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Ldig;->d(I)V

    .line 69
    invoke-interface {p1, p0}, Ldlj;->a(Ldij;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 81
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ldig;->j(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Ldig;->b:I

    if-le v2, v3, :cond_0

    .line 91
    new-array v1, v0, [B

    .line 92
    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Ldmy;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 93
    invoke-virtual {p0, v0}, Ldig;->d(I)V

    .line 94
    invoke-virtual {p0, v1, v2, v0}, Ldig;->b([BII)V

    return-void

    :cond_0
    iget v0, p0, Ldig;->c:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    .line 82
    invoke-virtual {p0}, Ldig;->b()V

    .line 83
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ldig;->j(I)I

    move-result v0

    iget v2, p0, Ldig;->c:I
    :try_end_0
    .catch Ldmw; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Ldig;->c:I

    iget-object v3, p0, Ldig;->a:[B

    iget v4, p0, Ldig;->b:I

    sub-int/2addr v4, v1

    .line 87
    invoke-static {p1, v3, v1, v4}, Ldmy;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Ldig;->c:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 88
    invoke-virtual {p0, v3}, Ldig;->a(I)V

    iput v1, p0, Ldig;->c:I

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {p1}, Ldmy;->a(Ljava/lang/CharSequence;)I

    move-result v3

    .line 85
    invoke-virtual {p0, v3}, Ldig;->a(I)V

    iget-object v0, p0, Ldig;->a:[B

    iget v1, p0, Ldig;->c:I

    .line 86
    invoke-static {p1, v0, v1, v3}, Ldmy;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Ldig;->c:I

    .line 88
    :goto_0
    iget v0, p0, Ldig;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Ldig;->d:I
    :try_end_1
    .catch Ldmw; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_2
    new-instance v1, Ldii;

    .line 89
    invoke-direct {v1, v0}, Ldii;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 95
    :catch_1
    move-exception v0

    iget v1, p0, Ldig;->d:I

    iget v3, p0, Ldig;->c:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Ldig;->d:I

    iput v2, p0, Ldig;->c:I

    .line 90
    throw v0
    :try_end_2
    .catch Ldmw; {:try_start_2 .. :try_end_2} :catch_2

    .line 86
    :catch_2
    move-exception v0

    .line 95
    invoke-virtual {p0, p1, v0}, Ldij;->a(Ljava/lang/String;Ldmw;)V

    return-void
.end method

.method public final a([BI)V
    .locals 1

    .line 40
    invoke-virtual {p0, p2}, Ldig;->d(I)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ldig;->b([BII)V

    return-void
.end method

.method public final a([BII)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Ldig;->b([BII)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Ldig;->g:Ljava/io/OutputStream;

    iget-object v1, p0, Ldig;->a:[B

    iget v2, p0, Ldig;->c:I

    .line 28
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Ldig;->c:I

    return-void
.end method

.method public final b(B)V
    .locals 2

    iget v0, p0, Ldig;->c:I

    iget v1, p0, Ldig;->b:I

    if-ne v0, v1, :cond_0

    .line 30
    invoke-virtual {p0}, Ldig;->b()V

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Ldig;->a(B)V

    return-void
.end method

.method final b(I)V
    .locals 4

    iget-object v0, p0, Ldig;->a:[B

    iget v1, p0, Ldig;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldig;->c:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    .line 2
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ldig;->c:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 3
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldig;->c:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ldig;->c:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v0, v2

    iget p1, p0, Ldig;->d:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Ldig;->d:I

    return-void
.end method

.method public final b(II)V
    .locals 0

    invoke-static {p1, p2}, Ldnb;->a(II)I

    move-result p1

    .line 96
    invoke-virtual {p0, p1}, Ldig;->d(I)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1

    .line 51
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Ldig;->u(I)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ldig;->a(II)V

    .line 53
    invoke-virtual {p0, p2, p3}, Ldig;->b(J)V

    return-void
.end method

.method public final b(ILdib;)V
    .locals 3

    .line 75
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ldig;->b(II)V

    .line 76
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Ldig;->d(II)V

    .line 77
    invoke-virtual {p0, v1, p2}, Ldig;->a(ILdib;)V

    .line 78
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Ldig;->b(II)V

    return-void
.end method

.method final b(J)V
    .locals 8

    iget-object v0, p0, Ldig;->a:[B

    iget v1, p0, Ldig;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldig;->c:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 6
    aput-byte v5, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ldig;->c:I

    const/16 v5, 0x8

    shr-long v6, p1, v5

    and-long/2addr v6, v3

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 7
    aput-byte v6, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldig;->c:I

    const/16 v6, 0x10

    shr-long v6, p1, v6

    and-long/2addr v6, v3

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 8
    aput-byte v6, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ldig;->c:I

    const/16 v6, 0x18

    shr-long v6, p1, v6

    and-long/2addr v3, v6

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 9
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldig;->c:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 10
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ldig;->c:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 11
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldig;->c:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 12
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ldig;->c:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    .line 13
    aput-byte p1, v0, v2

    iget p1, p0, Ldig;->d:I

    add-int/2addr p1, v5

    iput p1, p0, Ldig;->d:I

    return-void
.end method

.method public final b([BII)V
    .locals 3

    iget v0, p0, Ldig;->b:I

    iget v1, p0, Ldig;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Ldig;->a:[B

    .line 32
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ldig;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Ldig;->c:I

    iget p1, p0, Ldig;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Ldig;->d:I

    return-void

    :cond_0
    iget-object v2, p0, Ldig;->a:[B

    .line 33
    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Ldig;->b:I

    iput v1, p0, Ldig;->c:I

    iget v1, p0, Ldig;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Ldig;->d:I

    .line 34
    invoke-virtual {p0}, Ldig;->b()V

    iget v0, p0, Ldig;->b:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Ldig;->a:[B

    const/4 v1, 0x0

    .line 35
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Ldig;->c:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldig;->g:Ljava/io/OutputStream;

    .line 36
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 35
    :goto_0
    iget p1, p0, Ldig;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Ldig;->d:I

    return-void
.end method

.method public final c(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Ldig;->d(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 61
    invoke-virtual {p0, v0, v1}, Ldig;->c(J)V

    return-void
.end method

.method public final c(II)V
    .locals 1

    .line 56
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Ldig;->u(I)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldig;->a(II)V

    if-ltz p2, :cond_0

    .line 58
    invoke-virtual {p0, p2}, Ldig;->a(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    .line 59
    invoke-virtual {p0, p1, p2}, Ldig;->a(J)V

    return-void
.end method

.method public final c(J)V
    .locals 1

    .line 105
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ldig;->u(I)V

    .line 106
    invoke-virtual {p0, p1, p2}, Ldig;->a(J)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 100
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ldig;->u(I)V

    .line 101
    invoke-virtual {p0, p1}, Ldig;->a(I)V

    return-void
.end method

.method public final d(II)V
    .locals 1

    .line 97
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Ldig;->u(I)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldig;->a(II)V

    .line 99
    invoke-virtual {p0, p2}, Ldig;->a(I)V

    return-void
.end method

.method public final d(J)V
    .locals 1

    .line 54
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ldig;->u(I)V

    .line 55
    invoke-virtual {p0, p1, p2}, Ldig;->b(J)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 49
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ldig;->u(I)V

    .line 50
    invoke-virtual {p0, p1}, Ldig;->b(I)V

    return-void
.end method

.method public final e(II)V
    .locals 1

    .line 46
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Ldig;->u(I)V

    .line 47
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Ldig;->a(II)V

    .line 48
    invoke-virtual {p0, p2}, Ldig;->b(I)V

    return-void
.end method
