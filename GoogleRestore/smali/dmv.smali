.class final Ldmv;
.super Ldmu;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldmu;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;[BII)I
    .locals 7

    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p4, p3

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v0, :cond_0

    add-int v3, v1, p3

    if-ge v3, p4, :cond_0

    .line 21
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_0

    int-to-byte v2, v4

    .line 22
    aput-byte v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    add-int/2addr p3, v0

    return p3

    :cond_1
    add-int/2addr p3, v1

    :goto_1
    if-ge v1, v0, :cond_b

    .line 23
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_2

    if-ge p3, p4, :cond_2

    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    .line 35
    aput-byte v3, p2, p3

    move p3, v4

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x800

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_3

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 33
    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 34
    aput-byte v3, p2, v4

    goto :goto_2

    :cond_3
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_4

    if-le v3, v4, :cond_5

    :cond_4
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_5

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 30
    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 31
    aput-byte v5, p2, v4

    add-int/lit8 v4, p3, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 32
    aput-byte v3, p2, p3

    move p3, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_8

    add-int/lit8 v4, v1, 0x1

    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 25
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 26
    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 27
    aput-byte v5, p2, v3

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 28
    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 29
    aput-byte v1, p2, v3

    move v1, v4

    .line 35
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 24
    :cond_6
    move v1, v4

    goto :goto_3

    .line 38
    :cond_7
    nop

    .line 24
    :goto_3
    new-instance p1, Ldmw;

    add-int/lit8 v1, v1, -0x1

    .line 36
    invoke-direct {p1, v1, v0}, Ldmw;-><init>(II)V

    throw p1

    .line 29
    :cond_8
    if-lt v3, v5, :cond_a

    if-gt v3, v4, :cond_a

    add-int/lit8 p2, v1, 0x1

    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_9

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    new-instance p1, Ldmw;

    .line 39
    invoke-direct {p1, v1, v0}, Ldmw;-><init>(II)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p4, 0x25

    .line 38
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Failed writing "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p4, " at index "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_b
    return p3
.end method

.method public final b([BII)Ljava/lang/String;
    .locals 10

    .line 1
    array-length v0, p1

    or-int v1, p2, p3

    sub-int v2, v0, p2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_b

    .line 2
    add-int v0, p2, p3

    .line 3
    new-array p3, p3, [C

    const/4 v1, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 4
    aget-byte v3, p1, p2

    invoke-static {v3}, Ldmt;->a(B)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 5
    invoke-static {v3, p3, v1}, Ldmt;->a(B[CI)V

    move v1, v4

    goto :goto_0

    :cond_1
    nop

    .line 4
    :goto_1
    if-ge p2, v0, :cond_a

    add-int/lit8 v3, p2, 0x1

    .line 6
    aget-byte p2, p1, p2

    invoke-static {p2}, Ldmt;->a(B)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, v1, 0x1

    .line 13
    invoke-static {p2, p3, v1}, Ldmt;->a(B[CI)V

    move p2, v3

    move v1, v4

    :goto_2
    if-ge p2, v0, :cond_3

    .line 14
    aget-byte v3, p1, p2

    invoke-static {v3}, Ldmt;->a(B)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 15
    invoke-static {v3, p3, v1}, Ldmt;->a(B[CI)V

    move v1, v4

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    invoke-static {p2}, Ldmt;->b(B)Z

    move-result v4

    if-eqz v4, :cond_6

    if-ge v3, v0, :cond_5

    .line 18
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, 0x1

    .line 11
    aget-byte v3, p1, v3

    .line 12
    invoke-static {p2, v3, p3, v1}, Ldmt;->a(BB[CI)V

    move p2, v4

    move v1, v5

    goto :goto_1

    .line 18
    :cond_5
    invoke-static {}, Ldkn;->i()Ldkn;

    move-result-object p1

    throw p1

    .line 12
    :cond_6
    invoke-static {p2}, Ldmt;->c(B)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_7

    .line 16
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v1, 0x1

    .line 7
    aget-byte v3, p1, v3

    aget-byte v4, p1, v4

    .line 8
    invoke-static {p2, v3, v4, p3, v1}, Ldmt;->a(BBB[CI)V

    move p2, v5

    move v1, v6

    goto :goto_1

    .line 16
    :cond_7
    invoke-static {}, Ldkn;->i()Ldkn;

    move-result-object p1

    throw p1

    .line 8
    :cond_8
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_9

    .line 17
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v9, v5, 0x1

    .line 9
    aget-byte v6, p1, v3

    aget-byte v7, p1, v4

    aget-byte v8, p1, v5

    .line 10
    move v3, p2

    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, p3

    move v8, v1

    invoke-static/range {v3 .. v8}, Ldmt;->a(BBBB[CI)V

    add-int/lit8 v1, v1, 0x2

    move p2, v9

    goto :goto_1

    .line 17
    :cond_9
    invoke-static {}, Ldkn;->i()Ldkn;

    move-result-object p1

    throw p1

    .line 10
    :cond_a
    new-instance p1, Ljava/lang/String;

    .line 19
    invoke-direct {p1, p3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1
    :cond_b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final c([BII)I
    .locals 7

    :goto_0
    if-ge p2, p3, :cond_0

    .line 40
    aget-byte v0, p1, p2

    if-ltz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-lt p2, p3, :cond_1

    :goto_1
    goto/16 :goto_3

    :cond_1
    :goto_2
    if-lt p2, p3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p2, 0x1

    .line 41
    aget-byte p2, p1, p2

    if-gez p2, :cond_d

    const/16 v3, -0x20

    const/16 v4, -0x41

    if-ge p2, v3, :cond_5

    if-ge v2, p3, :cond_4

    const/16 v3, -0x3e

    if-lt p2, v3, :cond_3

    add-int/lit8 p2, v2, 0x1

    .line 42
    aget-byte v2, p1, v2

    if-le v2, v4, :cond_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_3

    .line 41
    :cond_4
    move v0, p2

    goto :goto_3

    .line 42
    :cond_5
    const/16 v5, -0x10

    if-ge p2, v5, :cond_a

    add-int/lit8 v5, p3, -0x1

    if-lt v2, v5, :cond_6

    .line 45
    invoke-static {p1, v2, p3}, Ldmy;->b([BII)I

    move-result v0

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v2, 0x1

    .line 43
    aget-byte v2, p1, v2

    if-gt v2, v4, :cond_9

    const/16 v6, -0x60

    if-ne p2, v3, :cond_7

    if-lt v2, v6, :cond_9

    :cond_7
    const/16 v3, -0x13

    if-ne p2, v3, :cond_8

    if-ge v2, v6, :cond_9

    :cond_8
    add-int/lit8 p2, v5, 0x1

    aget-byte v2, p1, v5

    if-le v2, v4, :cond_1

    :cond_9
    const/4 v0, -0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v3, p3, -0x2

    if-lt v2, v3, :cond_b

    .line 46
    invoke-static {p1, v2, p3}, Ldmy;->b([BII)I

    move-result v0

    goto :goto_3

    :cond_b
    add-int/lit8 v3, v2, 0x1

    .line 44
    aget-byte v2, p1, v2

    if-gt v2, v4, :cond_c

    shl-int/lit8 p2, p2, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr p2, v2

    shr-int/lit8 p2, p2, 0x1e

    if-nez p2, :cond_c

    add-int/lit8 p2, v3, 0x1

    aget-byte v2, p1, v3

    if-gt v2, v4, :cond_c

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    if-le p2, v4, :cond_d

    :cond_c
    const/4 v0, -0x1

    .line 40
    :goto_3
    return v0

    .line 44
    :cond_d
    move p2, v2

    goto :goto_2
.end method
