.class public final Leeo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Leeo;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Leeo;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ldha;)Ljava/lang/Object;
    .locals 15

    .line 7
    invoke-virtual {p0}, Ldha;->a()Z

    move-result v0

    const-string v1, "unexpected end of JSON"

    invoke-static {v0, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Ldha;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const-string v3, "Bad token: "

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_26

    const/16 v7, 0x22

    const/16 v8, 0x27

    const/4 v9, 0x0

    if-eq v0, v4, :cond_1a

    const/16 v1, 0x9

    const/16 v2, 0x10

    const/16 v4, 0xf

    const/16 v10, 0xa

    const/4 v11, 0x5

    const/16 v12, 0xb

    const/16 v13, 0x8

    if-eq v0, v11, :cond_12

    const/4 v14, 0x6

    if-eq v0, v14, :cond_8

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    if-eq v0, v13, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    invoke-virtual {p0}, Ldha;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 69
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Ldha;->c:I

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Ldha;->b()I

    move-result v0

    :cond_2
    if-ne v0, v1, :cond_3

    iput v6, p0, Ldha;->c:I

    iget-object v0, p0, Ldha;->i:[I

    iget p0, p0, Ldha;->g:I

    add-int/lit8 p0, p0, -0x1

    .line 10
    aget v1, v0, p0

    add-int/2addr v1, v5

    aput v1, v0, p0

    return-object v9

    .line 68
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->f()I

    move-result v2

    invoke-static {v2}, Ldll;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_4
    iget v0, p0, Ldha;->c:I

    if-nez v0, :cond_5

    .line 64
    invoke-virtual {p0}, Ldha;->b()I

    move-result v0

    :cond_5
    if-ne v0, v11, :cond_6

    iput v6, p0, Ldha;->c:I

    iget-object v0, p0, Ldha;->i:[I

    iget p0, p0, Ldha;->g:I

    add-int/lit8 p0, p0, -0x1

    .line 65
    aget v1, v0, p0

    add-int/2addr v1, v5

    aput v1, v0, p0

    goto :goto_1

    .line 67
    :cond_6
    if-ne v0, v14, :cond_7

    iput v6, p0, Ldha;->c:I

    iget-object v0, p0, Ldha;->i:[I

    iget p0, p0, Ldha;->g:I

    add-int/lit8 p0, p0, -0x1

    .line 66
    aget v1, v0, p0

    add-int/2addr v1, v5

    aput v1, v0, p0

    const/4 v5, 0x0

    .line 67
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 66
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->f()I

    move-result v2

    invoke-static {v2}, Ldll;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_8
    iget v0, p0, Ldha;->c:I

    if-nez v0, :cond_9

    .line 52
    invoke-virtual {p0}, Ldha;->b()I

    move-result v0

    :cond_9
    if-ne v0, v4, :cond_a

    iput v6, p0, Ldha;->c:I

    iget-object v0, p0, Ldha;->i:[I

    iget v1, p0, Ldha;->g:I

    add-int/lit8 v1, v1, -0x1

    .line 53
    aget v2, v0, v1

    add-int/2addr v2, v5

    aput v2, v0, v1

    iget-wide v0, p0, Ldha;->d:J

    long-to-double v0, v0

    goto/16 :goto_5

    .line 62
    :cond_a
    if-ne v0, v2, :cond_b

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ldha;->a:[C

    iget v2, p0, Ldha;->b:I

    iget v3, p0, Ldha;->e:I

    .line 54
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Ldha;->f:Ljava/lang/String;

    iget v0, p0, Ldha;->b:I

    iget v1, p0, Ldha;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Ldha;->b:I

    goto :goto_4

    .line 61
    :cond_b
    if-eq v0, v13, :cond_f

    if-ne v0, v1, :cond_c

    goto :goto_2

    .line 55
    :cond_c
    if-ne v0, v10, :cond_d

    .line 56
    invoke-virtual {p0}, Ldha;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldha;->f:Ljava/lang/String;

    goto :goto_4

    :cond_d
    if-ne v0, v12, :cond_e

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->f()I

    move-result v2

    invoke-static {v2}, Ldll;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_f
    :goto_2
    if-ne v0, v13, :cond_10

    const/16 v7, 0x27

    goto :goto_3

    .line 55
    :cond_10
    nop

    :goto_3
    invoke-virtual {p0, v7}, Ldha;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldha;->f:Ljava/lang/String;

    .line 54
    :goto_4
    iput v12, p0, Ldha;->c:I

    iget-object v0, p0, Ldha;->f:Ljava/lang/String;

    .line 57
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_11

    .line 60
    iput-object v9, p0, Ldha;->f:Ljava/lang/String;

    iput v6, p0, Ldha;->c:I

    iget-object v2, p0, Ldha;->i:[I

    iget p0, p0, Ldha;->g:I

    add-int/lit8 p0, p0, -0x1

    .line 61
    aget v3, v2, p0

    add-int/2addr v3, v5

    aput v3, v2, p0

    .line 62
    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 58
    :cond_11
    new-instance v2, Ldhb;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ldhb;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_12
    iget v0, p0, Ldha;->c:I

    if-nez v0, :cond_13

    .line 44
    invoke-virtual {p0}, Ldha;->b()I

    move-result v0

    :cond_13
    if-ne v0, v10, :cond_14

    .line 45
    invoke-virtual {p0}, Ldha;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 50
    :cond_14
    if-ne v0, v13, :cond_15

    .line 46
    invoke-virtual {p0, v8}, Ldha;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_15
    if-ne v0, v1, :cond_16

    .line 47
    invoke-virtual {p0, v7}, Ldha;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_16
    if-ne v0, v12, :cond_17

    iget-object v0, p0, Ldha;->f:Ljava/lang/String;

    iput-object v9, p0, Ldha;->f:Ljava/lang/String;

    goto :goto_6

    :cond_17
    if-ne v0, v4, :cond_18

    iget-wide v0, p0, Ldha;->d:J

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_18
    if-ne v0, v2, :cond_19

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ldha;->a:[C

    iget v2, p0, Ldha;->b:I

    iget v3, p0, Ldha;->e:I

    .line 49
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Ldha;->b:I

    iget v2, p0, Ldha;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Ldha;->b:I

    .line 45
    :goto_6
    iput v6, p0, Ldha;->c:I

    iget-object v1, p0, Ldha;->i:[I

    iget p0, p0, Ldha;->g:I

    add-int/lit8 p0, p0, -0x1

    .line 50
    aget v2, v1, p0

    add-int/2addr v2, v5

    aput v2, v1, p0

    return-object v0

    .line 42
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->f()I

    move-result v2

    invoke-static {v2}, Ldll;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1a
    iget v0, p0, Ldha;->c:I

    if-nez v0, :cond_1b

    .line 25
    invoke-virtual {p0}, Ldha;->b()I

    move-result v0

    :cond_1b
    if-ne v0, v5, :cond_25

    .line 26
    invoke-virtual {p0, v2}, Ldha;->a(I)V

    iput v6, p0, Ldha;->c:I

    new-instance v0, Ljava/util/LinkedHashMap;

    .line 27
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    :goto_7
    invoke-virtual {p0}, Ldha;->a()Z

    move-result v2

    if-eqz v2, :cond_20

    iget v2, p0, Ldha;->c:I

    if-nez v2, :cond_1c

    .line 29
    invoke-virtual {p0}, Ldha;->b()I

    move-result v2

    :cond_1c
    const/16 v10, 0xe

    if-ne v2, v10, :cond_1d

    .line 30
    invoke-virtual {p0}, Ldha;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 35
    :cond_1d
    const/16 v10, 0xc

    if-ne v2, v10, :cond_1e

    .line 31
    invoke-virtual {p0, v8}, Ldha;->a(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_1e
    const/16 v10, 0xd

    if-ne v2, v10, :cond_1f

    .line 32
    invoke-virtual {p0, v7}, Ldha;->a(C)Ljava/lang/String;

    move-result-object v2

    .line 30
    :goto_8
    iput v6, p0, Ldha;->c:I

    iget-object v10, p0, Ldha;->h:[Ljava/lang/String;

    iget v11, p0, Ldha;->g:I

    add-int/lit8 v11, v11, -0x1

    .line 33
    aput-object v2, v10, v11

    .line 34
    invoke-static {p0}, Leeo;->a(Ldha;)Ljava/lang/Object;

    move-result-object v10

    .line 35
    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 43
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->f()I

    move-result v2

    invoke-static {v2}, Ldll;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_20
    invoke-virtual {p0}, Ldha;->f()I

    move-result v2

    if-ne v2, v1, :cond_21

    const/4 v1, 0x1

    goto :goto_9

    :cond_21
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p0}, Ldha;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 41
    :cond_22
    new-instance v2, Ljava/lang/String;

    .line 37
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-static {v1, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    iget v1, p0, Ldha;->c:I

    if-nez v1, :cond_23

    .line 38
    invoke-virtual {p0}, Ldha;->b()I

    move-result v1

    :cond_23
    if-ne v1, v4, :cond_24

    iget v1, p0, Ldha;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ldha;->g:I

    iget-object v2, p0, Ldha;->h:[Ljava/lang/String;

    .line 39
    aput-object v9, v2, v1

    iget-object v2, p0, Ldha;->i:[I

    add-int/lit8 v1, v1, -0x1

    .line 40
    aget v3, v2, v1

    add-int/2addr v3, v5

    aput v3, v2, v1

    iput v6, p0, Ldha;->c:I

    .line 41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 36
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->f()I

    move-result v2

    invoke-static {v2}, Ldll;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->f()I

    move-result v2

    invoke-static {v2}, Ldll;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_26
    iget v0, p0, Ldha;->c:I

    if-nez v0, :cond_27

    .line 12
    invoke-virtual {p0}, Ldha;->b()I

    move-result v0

    :cond_27
    if-ne v0, v2, :cond_2d

    .line 13
    invoke-virtual {p0, v5}, Ldha;->a(I)V

    iget-object v0, p0, Ldha;->i:[I

    iget v2, p0, Ldha;->g:I

    add-int/lit8 v2, v2, -0x1

    .line 14
    aput v6, v0, v2

    iput v6, p0, Ldha;->c:I

    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :goto_b
    invoke-virtual {p0}, Ldha;->a()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 17
    invoke-static {p0}, Leeo;->a(Ldha;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 19
    :cond_28
    invoke-virtual {p0}, Ldha;->f()I

    move-result v2

    if-ne v2, v4, :cond_29

    const/4 v2, 0x1

    goto :goto_c

    :cond_29
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p0}, Ldha;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2a

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    .line 22
    :cond_2a
    new-instance v4, Ljava/lang/String;

    .line 19
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_d
    invoke-static {v2, v3}, Lcrj;->b(ZLjava/lang/Object;)V

    iget v2, p0, Ldha;->c:I

    if-nez v2, :cond_2b

    .line 20
    invoke-virtual {p0}, Ldha;->b()I

    move-result v2

    :cond_2b
    if-ne v2, v1, :cond_2c

    iget v1, p0, Ldha;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ldha;->g:I

    iget-object v2, p0, Ldha;->i:[I

    add-int/lit8 v1, v1, -0x1

    .line 21
    aget v3, v2, v1

    add-int/2addr v3, v5

    aput v3, v2, v1

    iput v6, p0, Ldha;->c:I

    .line 22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 24
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->f()I

    move-result v2

    invoke-static {v2}, Ldll;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->f()I

    move-result v2

    invoke-static {v2}, Ldll;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .line 2
    new-instance v0, Ldha;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ldha;-><init>(Ljava/io/Reader;)V

    .line 3
    :try_start_0
    invoke-static {v0}, Leeo;->a(Ldha;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ldha;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    move-exception v6

    sget-object v1, Leeo;->a:Ljava/util/logging/Logger;

    .line 5
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "io.grpc.internal.JsonParser"

    const-string v4, "parse"

    const-string v5, "Failed to close"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ldha;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 5
    :catch_1
    move-exception v6

    sget-object v1, Leeo;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "io.grpc.internal.JsonParser"

    const-string v4, "parse"

    const-string v5, "Failed to close"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_1
    throw p0
.end method
