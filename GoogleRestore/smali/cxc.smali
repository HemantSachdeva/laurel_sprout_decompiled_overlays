.class public Lcxc;
.super Lcxd;
.source "PG"


# instance fields
.field public final b:Lcwy;

.field public final c:Ljava/lang/Character;

.field public transient d:Lcxd;


# direct methods
.method public constructor <init>(Lcwy;Ljava/lang/Character;)V
    .locals 3

    invoke-direct {p0}, Lcxd;-><init>()V

    .line 1
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcxc;->b:Lcwy;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget-object p1, p1, Lcwy;->g:[B

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget-byte p1, p1, v1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    nop

    .line 3
    :goto_0
    nop

    .line 4
    const-string p1, "Padding character %s was already in alphabet"

    invoke-static {v0, p1, p2}, Lcrj;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcxc;->c:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    new-instance v0, Lcwy;

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcwy;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcxc;-><init>(Lcwy;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    iget-object v0, p0, Lcxc;->b:Lcwy;

    .line 36
    iget v1, v0, Lcwy;->e:I

    iget v0, v0, Lcwy;->f:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v0, v2}, Ldda;->a(IILjava/math/RoundingMode;)I

    move-result p1

    mul-int v1, v1, p1

    return v1
.end method

.method public a([BLjava/lang/CharSequence;)I
    .locals 13

    .line 6
    invoke-virtual {p0, p2}, Lcxd;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lcxc;->b:Lcwy;

    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcwy;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcxc;->b:Lcwy;

    .line 9
    iget v8, v7, Lcwy;->e:I

    if-ge v5, v8, :cond_1

    .line 10
    iget v7, v7, Lcwy;->d:I

    shl-long/2addr v3, v7

    add-int v7, v1, v5

    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int/lit8 v7, v6, 0x1

    iget-object v8, p0, Lcxc;->b:Lcwy;

    add-int/2addr v6, v1

    .line 12
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v8, v6}, Lcwy;->a(C)I

    move-result v6

    int-to-long v8, v6

    or-long/2addr v3, v8

    move v6, v7

    goto :goto_2

    :cond_0
    nop

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 13
    :cond_1
    iget v5, v7, Lcwy;->f:I

    mul-int/lit8 v8, v5, 0x8

    iget v7, v7, Lcwy;->d:I

    mul-int v6, v6, v7

    sub-int/2addr v8, v6

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x8

    :goto_3
    if-lt v5, v8, :cond_2

    add-int/lit8 v6, v2, 0x1

    ushr-long v9, v3, v5

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 14
    aput-byte v7, p1, v2

    add-int/lit8 v5, v5, -0x8

    move v2, v6

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcxc;->b:Lcwy;

    .line 8
    iget v3, v3, Lcwy;->e:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 15
    :cond_3
    return v2

    .line 8
    :cond_4
    new-instance p1, Lcxb;

    .line 15
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid input length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcxb;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 43
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcxc;->c:Ljava/lang/Character;

    if-nez v0, :cond_0

    return-object p1

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 45
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 46
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 47
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Appendable;[BI)V
    .locals 3

    .line 26
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lcrj;->a(III)V

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v0, p0, Lcxc;->b:Lcwy;

    .line 27
    iget v0, v0, Lcwy;->f:I

    sub-int v2, p3, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcxc;->a(Ljava/lang/Appendable;[BII)V

    iget-object v0, p0, Lcxc;->b:Lcwy;

    .line 28
    iget v0, v0, Lcwy;->f:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Ljava/lang/Appendable;[BII)V
    .locals 7

    add-int v0, p3, p4

    .line 16
    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcrj;->a(III)V

    iget-object v0, p0, Lcxc;->b:Lcwy;

    .line 17
    iget v0, v0, Lcwy;->f:I

    const/4 v1, 0x0

    if-gt p4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Lcrj;->a(Z)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v0, p4, :cond_1

    add-int v5, p3, v0

    .line 18
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v2, v5

    shl-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p4, 0x1

    mul-int/lit8 p2, p2, 0x8

    iget-object p3, p0, Lcxc;->b:Lcwy;

    .line 19
    iget p3, p3, Lcwy;->d:I

    sub-int/2addr p2, p3

    :goto_2
    mul-int/lit8 p3, p4, 0x8

    if-ge v1, p3, :cond_2

    iget-object p3, p0, Lcxc;->b:Lcwy;

    sub-int v0, p2, v1

    ushr-long v5, v2, v0

    long-to-int v0, v5

    .line 20
    iget v5, p3, Lcwy;->c:I

    and-int/2addr v0, v5

    .line 21
    invoke-virtual {p3, v0}, Lcwy;->a(I)C

    move-result p3

    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object p3, p0, Lcxc;->b:Lcwy;

    .line 22
    iget p3, p3, Lcwy;->d:I

    add-int/2addr v1, p3

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcxc;->c:Ljava/lang/Character;

    if-eqz p2, :cond_3

    :goto_3
    iget-object p2, p0, Lcxc;->b:Lcwy;

    .line 23
    iget p2, p2, Lcwy;->f:I

    mul-int/lit8 p2, p2, 0x8

    if-ge v1, p2, :cond_3

    iget-object p2, p0, Lcxc;->c:Ljava/lang/Character;

    .line 24
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object p2, p0, Lcxc;->b:Lcwy;

    .line 25
    iget p2, p2, Lcwy;->d:I

    add-int/2addr v1, p2

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final b(I)I
    .locals 4

    iget-object v0, p0, Lcxc;->b:Lcwy;

    .line 35
    iget v0, v0, Lcwy;->d:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 29
    instance-of v0, p1, Lcxc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 30
    check-cast p1, Lcxc;

    iget-object v0, p0, Lcxc;->b:Lcwy;

    .line 31
    iget-object v2, p1, Lcxc;->b:Lcwy;

    invoke-virtual {v0, v2}, Lcwy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxc;->c:Ljava/lang/Character;

    iget-object p1, p1, Lcxc;->c:Ljava/lang/Character;

    .line 32
    invoke-static {v0, p1}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcxc;->b:Lcwy;

    .line 33
    invoke-virtual {v0}, Lcwy;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcxc;->c:Ljava/lang/Character;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcxc;->b:Lcwy;

    iget-object v1, v1, Lcwy;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcxc;->b:Lcwy;

    .line 39
    iget v1, v1, Lcwy;->d:I

    const/16 v2, 0x8

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcxc;->c:Ljava/lang/Character;

    if-nez v1, :cond_0

    .line 40
    const-string v1, ".omitPadding()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 42
    :cond_0
    nop

    .line 41
    const-string v1, ".withPadChar(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcxc;->c:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
