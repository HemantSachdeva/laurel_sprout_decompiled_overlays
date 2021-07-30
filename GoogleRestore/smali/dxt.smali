.class public final Ldxt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldxn;

.field static final b:Lcxd;

.field public static final e:Lees;


# instance fields
.field public c:[Ljava/lang/Object;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lees;

    invoke-direct {v0}, Lees;-><init>()V

    sput-object v0, Ldxt;->e:Lees;

    new-instance v0, Ldxl;

    invoke-direct {v0}, Ldxl;-><init>()V

    sput-object v0, Ldxt;->a:Ldxn;

    .line 1
    sget-object v0, Lcxd;->e:Lcxd;

    move-object v1, v0

    check-cast v1, Lcxc;

    iget-object v2, v1, Lcxc;->c:Ljava/lang/Character;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcxc;->b:Lcwy;

    new-instance v1, Lcxa;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, v0, v2}, Lcxa;-><init>(Lcwy;Ljava/lang/Character;)V

    move-object v0, v1

    :cond_0
    sput-object v0, Ldxt;->b:Lcxd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldxt;->d:I

    iput-object p2, p0, Ldxt;->c:[Ljava/lang/Object;

    return-void
.end method

.method private final a(I[B)V
    .locals 1

    iget-object v0, p0, Ldxt;->c:[Ljava/lang/Object;

    add-int/2addr p1, p1

    .line 20
    aput-object p2, v0, p1

    return-void
.end method

.method private final d(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldxt;->c:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 36
    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ldxt;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ldxp;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ldxt;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget-object v2, p1, Ldxp;->b:[B

    .line 13
    invoke-virtual {p0, v0}, Ldxt;->a(I)[B

    move-result-object v3

    .line 14
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-direct {p0, v0}, Ldxt;->d(I)Ljava/lang/Object;

    move-result-object v0

    .line 16
    instance-of v2, v0, [B

    if-eqz v2, :cond_0

    .line 17
    check-cast v0, [B

    invoke-virtual {p1, v0}, Ldxp;->a([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    check-cast v0, Ldxq;

    throw v1

    .line 17
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 18
    :cond_2
    return-object v1
.end method

.method public final a(Ldxp;Ljava/lang/Object;)V
    .locals 2

    .line 21
    const-string v0, "key"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    const-string v0, "value"

    invoke-static {p2, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldxt;->b()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldxt;->b()I

    move-result v0

    invoke-virtual {p0}, Ldxt;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ldxt;->b()I

    move-result v0

    add-int/2addr v0, v0

    const/16 v1, 0x8

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ldxt;->c(I)V

    :cond_1
    iget v0, p0, Ldxt;->d:I

    iget-object v1, p1, Ldxp;->b:[B

    .line 24
    invoke-direct {p0, v0, v1}, Ldxt;->a(I[B)V

    iget v0, p0, Ldxt;->d:I

    .line 25
    invoke-virtual {p1, p2}, Ldxp;->a(Ljava/lang/Object;)[B

    move-result-object p1

    iget-object p2, p0, Ldxt;->c:[Ljava/lang/Object;

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 26
    aput-object p1, p2, v0

    iget p1, p0, Ldxt;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldxt;->d:I

    return-void
.end method

.method public final a(I)[B
    .locals 1

    iget-object v0, p0, Ldxt;->c:[Ljava/lang/Object;

    add-int/2addr p1, p1

    .line 19
    aget-object p1, v0, p1

    check-cast p1, [B

    return-object p1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Ldxt;->d:I

    add-int/2addr v0, v0

    return v0
.end method

.method public final b(Ldxp;)V
    .locals 5

    invoke-virtual {p0}, Ldxt;->c()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ldxt;->d:I

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Ldxp;->b:[B

    .line 3
    invoke-virtual {p0, v0}, Ldxt;->a(I)[B

    move-result-object v3

    .line 4
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Ldxt;->a(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ldxt;->a(I[B)V

    .line 6
    invoke-direct {p0, v0}, Ldxt;->d(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ldxt;->c:[Ljava/lang/Object;

    .line 7
    instance-of v3, v3, [[B

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ldxt;->a()I

    move-result v3

    .line 8
    invoke-virtual {p0, v3}, Ldxt;->c(I)V

    :cond_0
    iget-object v3, p0, Ldxt;->c:[Ljava/lang/Object;

    add-int v4, v1, v1

    add-int/lit8 v4, v4, 0x1

    .line 9
    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ldxt;->c:[Ljava/lang/Object;

    add-int v0, v1, v1

    invoke-virtual {p0}, Ldxt;->b()I

    move-result v2

    const/4 v3, 0x0

    .line 10
    invoke-static {p1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v1, p0, Ldxt;->d:I

    :cond_3
    return-void
.end method

.method public final b(I)[B
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Ldxt;->d(I)Ljava/lang/Object;

    move-result-object p1

    .line 38
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, [B

    return-object p1

    .line 40
    :cond_0
    check-cast p1, Ldxq;

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(I)V
    .locals 3

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ldxt;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldxt;->c:[Ljava/lang/Object;

    invoke-virtual {p0}, Ldxt;->b()I

    move-result v1

    .line 12
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput-object p1, p0, Ldxt;->c:[Ljava/lang/Object;

    return-void
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Ldxt;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "Metadata("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ldxt;->d:I

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 29
    invoke-virtual {p0, v1}, Ldxt;->a(I)[B

    move-result-object v3

    sget-object v4, Lcqp;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    const-string v3, "-bin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ldxt;->b:Lcxd;

    .line 32
    invoke-virtual {p0, v1}, Ldxt;->b(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcxd;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v1}, Ldxt;->b(I)[B

    move-result-object v3

    sget-object v4, Lcqp;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_2
    const/16 v1, 0x29

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
