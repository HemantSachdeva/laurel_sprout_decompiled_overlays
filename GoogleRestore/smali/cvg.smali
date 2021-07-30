.class public final Lcvg;
.super Lcwg;
.source "PG"

# interfaces
.implements Lcwc;


# static fields
.field public static final a:Ljava/util/Locale;


# instance fields
.field public final b:[Ljava/lang/Object;

.field public final c:Ljava/lang/StringBuilder;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sput-object v0, Lcvg;->a:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(Lcvj;[Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcwg;-><init>(Lcvj;)V

    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcvg;->c:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    iput p1, p0, Lcvg;->d:I

    .line 4
    const-string p1, "log arguments"

    invoke-static {p2, p1}, Ldav;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcvg;->b:[Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_9

    .line 56
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 58
    :cond_0
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 59
    move-object v0, p0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 60
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 61
    move-object v0, p0

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 62
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 63
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 64
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 65
    move-object v0, p0

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 66
    :cond_4
    instance-of v0, p0, [S

    if-eqz v0, :cond_5

    .line 67
    move-object v0, p0

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 68
    :cond_5
    instance-of v0, p0, [F

    if-eqz v0, :cond_6

    .line 69
    move-object v0, p0

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 70
    :cond_6
    instance-of v0, p0, [D

    if-eqz v0, :cond_7

    .line 71
    move-object v0, p0

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 72
    :cond_7
    instance-of v0, p0, [Z

    if-eqz v0, :cond_8

    .line 73
    move-object v0, p0

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 74
    :cond_8
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_9
    const-string p0, "null"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object p0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-static {p0, v0}, Lcvg;->a(Ljava/lang/Object;Ljava/lang/RuntimeException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/RuntimeException;)Ljava/lang/String;
    .locals 4

    .line 52
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 54
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcuy;Lcvy;Ldav;)V
    .locals 9

    .line 25
    invoke-interface {p0}, Lcuy;->j()Lcvc;

    move-result-object p2

    .line 26
    sget-object v0, Lcuc;->a:Lcuq;

    invoke-virtual {p2, v0}, Lcvc;->b(Lcuq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 27
    :goto_0
    invoke-virtual {p2}, Lcvc;->a()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 28
    invoke-virtual {p2, v2}, Lcvc;->a(I)Lcuq;

    move-result-object v3

    .line 29
    invoke-static {v3}, Lcvg;->a(Lcuq;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 30
    :goto_1
    invoke-interface {p0}, Lcuy;->f()Lcvj;

    move-result-object v3

    if-nez v3, :cond_3

    .line 42
    invoke-interface {p0}, Lcuy;->h()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcvg;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 51
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lcuy;->j()Lcvc;

    move-result-object p2

    invoke-static {v1, p2}, Lcvg;->a(Ljava/lang/StringBuilder;Lcvc;)V

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    new-instance v3, Lcvg;

    .line 31
    invoke-interface {p0}, Lcuy;->f()Lcvj;

    move-result-object v5

    invoke-interface {p0}, Lcuy;->g()[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcvg;-><init>(Lcvj;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcwg;->a()Lcwh;

    move-result-object v5

    .line 32
    invoke-virtual {v5, v3}, Lcwh;->a(Lcwg;)V

    iget v5, v3, Lcwg;->e:I

    add-int/lit8 v6, v5, 0x1

    and-int/2addr v6, v5

    const/4 v7, -0x1

    if-nez v6, :cond_b

    iget v6, v3, Lcwg;->f:I

    const/16 v8, 0x1f

    if-le v6, v8, :cond_4

    if-ne v5, v7, :cond_b

    .line 36
    :cond_4
    invoke-virtual {v3}, Lcwg;->a()Lcwh;

    move-result-object v1

    iget-object v5, v3, Lcvg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcwg;->b()Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Lcvg;->d:I

    invoke-virtual {v3}, Lcwg;->b()Ljava/lang/String;

    move-result-object v8

    .line 37
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Lcwh;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    iget-object v1, v3, Lcvg;->c:Ljava/lang/StringBuilder;

    .line 38
    invoke-interface {p0}, Lcuy;->g()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    iget v3, v3, Lcwg;->f:I

    add-int/2addr v3, v4

    if-le v5, v3, :cond_5

    .line 39
    const-string v3, " [ERROR: UNUSED LOG ARGUMENTS]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-nez v2, :cond_6

    .line 40
    invoke-static {v1, p2}, Lcvg;->a(Ljava/lang/StringBuilder;Lcvc;)V

    .line 41
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 46
    :goto_2
    invoke-interface {p0}, Lcuy;->c()Ljava/util/logging/Level;

    move-result-object p0

    iget-object p1, p1, Lcvy;->a:Ljava/lang/String;

    .line 47
    invoke-static {p0}, Lcvs;->a(Ljava/util/logging/Level;)I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_9

    const/4 v1, 0x4

    if-eq p0, v1, :cond_8

    const/4 v1, 0x5

    if-eq p0, v1, :cond_7

    .line 48
    invoke-static {p1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 49
    :cond_7
    invoke-static {p1, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 50
    :cond_8
    invoke-static {p1, p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 48
    :cond_9
    return-void

    .line 51
    :cond_a
    invoke-static {p1, p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 32
    :cond_b
    xor-int/lit8 p0, v5, -0x1

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    new-array p1, v4, [Ljava/lang/Object;

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "unreferenced arguments [first missing index=%d]"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcwi;

    .line 35
    invoke-direct {p1, p0}, Lcwi;-><init>(Ljava/lang/String;)V

    .line 36
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private static a(Ljava/lang/StringBuilder;JZ)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 15
    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq v0, p3, :cond_1

    const-string p3, "0123456789abcdef"

    goto :goto_0

    .line 17
    :cond_1
    const-string p3, "0123456789ABCDEF"

    .line 15
    :goto_0
    nop

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    and-int/lit8 v0, v0, -0x4

    :goto_1
    if-ltz v0, :cond_2

    ushr-long v1, p1, v0

    const-wide/16 v3, 0xf

    and-long/2addr v1, v3

    long-to-int v2, v1

    .line 17
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x4

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Lcvc;)V
    .locals 4

    .line 5
    new-instance v0, Lcuw;

    const-string v1, "[CONTEXT "

    invoke-direct {v0, v1, p0}, Lcuw;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcvc;->a()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7
    invoke-virtual {p1, v1}, Lcvc;->a(I)Lcuq;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcvg;->a(Lcuq;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    sget-object v3, Lcuc;->f:Lcuq;

    invoke-virtual {v2, v3}, Lcuq;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p0, Lcuc;->f:Lcuq;

    .line 10
    invoke-virtual {p1, v1}, Lcvc;->b(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcuq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcvi;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1, v1}, Lcvc;->b(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v2, Lcuq;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2, v3}, Lcuw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {p0, v0}, Lcvi;->a(Lcux;)V

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcuw;->a()V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 18
    const-string v0, "[INVALID: format="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string p2, ", type="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p2, ", value="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {p1}, Lcvg;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Lcuq;)Z
    .locals 1

    .line 76
    sget-object v0, Lcuc;->a:Lcuq;

    invoke-virtual {p0, v0}, Lcuq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lcus;->a:Lcuq;

    invoke-virtual {p0, v0}, Lcuq;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcut;Lcuu;)V
    .locals 7

    iget-object v0, p2, Lcut;->m:Lcuv;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v5, :cond_a

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 78
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_3

    .line 83
    :cond_2
    const/4 p1, 0x0

    throw p1

    .line 79
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    .line 80
    :cond_6
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    .line 81
    :cond_7
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_8

    goto :goto_2

    .line 82
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    goto :goto_3

    .line 83
    :cond_a
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 80
    :goto_3
    if-nez v0, :cond_b

    iget-object p3, p0, Lcvg;->c:Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcut;->o:Ljava/lang/String;

    .line 118
    invoke-static {p3, p1, p2}, Lcvg;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 0
    :cond_b
    iget-object v0, p0, Lcvg;->c:Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p2}, Lcut;->ordinal()I

    move-result v6

    if-eqz v6, :cond_1a

    if-eq v6, v5, :cond_19

    if-eq v6, v3, :cond_16

    if-eq v6, v2, :cond_19

    const/4 v1, 0x5

    if-eq v6, v1, :cond_c

    goto/16 :goto_6

    .line 110
    :cond_c
    invoke-virtual {p3}, Lcuu;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4

    .line 99
    :cond_d
    iget v1, p3, Lcuu;->b:I

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_e

    sget-object v1, Lcuu;->a:Lcuu;

    goto :goto_5

    :cond_e
    const/4 v3, -0x1

    if-ne v2, v1, :cond_f

    iget v1, p3, Lcuu;->c:I

    if-ne v1, v3, :cond_f

    iget v1, p3, Lcuu;->d:I

    if-ne v1, v3, :cond_f

    .line 86
    :goto_4
    move-object v1, p3

    goto :goto_5

    .line 99
    :cond_f
    new-instance v1, Lcuu;

    .line 85
    invoke-direct {v1, v2, v3, v3}, Lcuu;-><init>(III)V

    .line 86
    :goto_5
    invoke-virtual {v1, p3}, Lcuu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 87
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p3}, Lcuu;->b()Z

    move-result p2

    .line 88
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 89
    instance-of p3, p1, Ljava/lang/Long;

    if-eqz p3, :cond_10

    .line 90
    invoke-static {v0, v1, v2, p2}, Lcvg;->a(Ljava/lang/StringBuilder;JZ)V

    return-void

    .line 91
    :cond_10
    instance-of p3, p1, Ljava/lang/Integer;

    if-eqz p3, :cond_11

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 92
    invoke-static {v0, v1, v2, p2}, Lcvg;->a(Ljava/lang/StringBuilder;JZ)V

    return-void

    .line 93
    :cond_11
    instance-of p3, p1, Ljava/lang/Byte;

    if-eqz p3, :cond_12

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    .line 94
    invoke-static {v0, v1, v2, p2}, Lcvg;->a(Ljava/lang/StringBuilder;JZ)V

    return-void

    .line 95
    :cond_12
    instance-of p3, p1, Ljava/lang/Short;

    if-eqz p3, :cond_13

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    .line 96
    invoke-static {v0, v1, v2, p2}, Lcvg;->a(Ljava/lang/StringBuilder;JZ)V

    return-void

    .line 97
    :cond_13
    instance-of p3, p1, Ljava/math/BigInteger;

    if-eqz p3, :cond_15

    .line 98
    check-cast p1, Ljava/math/BigInteger;

    const/16 p3, 0x10

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_14

    sget-object p2, Lcvg;->a:Ljava/util/Locale;

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 83
    :cond_15
    new-instance p2, Ljava/lang/RuntimeException;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x19

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "unsupported number type: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 115
    :cond_16
    invoke-virtual {p3}, Lcuu;->a()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 101
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_17

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 103
    :cond_17
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 104
    invoke-static {p1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result p2

    if-eqz p2, :cond_18

    int-to-char p1, p1

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 106
    :cond_18
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void

    :cond_19
    invoke-virtual {p3}, Lcuu;->a()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 108
    :cond_1a
    instance-of v2, p1, Ljava/util/Formattable;

    if-nez v2, :cond_1e

    invoke-virtual {p3}, Lcuu;->a()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 111
    invoke-static {p1}, Lcvg;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 84
    :cond_1b
    :goto_6
    iget-object v1, p2, Lcut;->o:Ljava/lang/String;

    invoke-virtual {p3}, Lcuu;->a()Z

    move-result v2

    if-nez v2, :cond_1d

    iget-char p2, p2, Lcut;->l:C

    invoke-virtual {p3}, Lcuu;->b()Z

    move-result v1

    if-eqz v1, :cond_1c

    const v1, 0xffdf

    and-int/2addr p2, v1

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    const-string v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcuu;->a(Ljava/lang/StringBuilder;)V

    int-to-char p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1d
    sget-object p2, Lcvg;->a:Ljava/util/Locale;

    new-array p3, v5, [Ljava/lang/Object;

    aput-object p1, p3, v4

    .line 110
    invoke-static {p2, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 112
    :cond_1e
    check-cast p1, Ljava/util/Formattable;

    iget p2, p3, Lcuu;->b:I

    and-int/lit16 p2, p2, 0xa2

    if-eqz p2, :cond_22

    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_1f

    goto :goto_7

    .line 115
    :cond_1f
    const/4 v5, 0x0

    .line 112
    :goto_7
    and-int/lit16 v2, p2, 0x80

    if-eqz v2, :cond_20

    goto :goto_8

    .line 115
    :cond_20
    const/4 v3, 0x0

    .line 112
    :goto_8
    or-int v2, v5, v3

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_21

    goto :goto_9

    .line 115
    :cond_21
    const/4 v1, 0x0

    .line 112
    :goto_9
    or-int p2, v2, v1

    goto :goto_a

    .line 115
    :cond_22
    nop

    .line 113
    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Lcvg;->a:Ljava/util/Locale;

    .line 114
    invoke-direct {v2, v0, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    :try_start_0
    iget v3, p3, Lcuu;->c:I

    iget p3, p3, Lcuu;->d:I

    .line 115
    invoke-interface {p1, v2, p2, v3, p3}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 100
    :catch_0
    move-exception p2

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 117
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object p3

    invoke-static {p1, p2}, Lcvg;->a(Ljava/lang/Object;Ljava/lang/RuntimeException;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    return-void
.end method
