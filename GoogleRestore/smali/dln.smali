.class final Ldln;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldlw;


# instance fields
.field private final a:Ldlj;

.field private final b:Z

.field private final c:Ldne;


# direct methods
.method private constructor <init>(Ldne;Ldlj;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldln;->c:Ldne;

    .line 1
    instance-of p1, p2, Ldkb;

    iput-boolean p1, p0, Ldln;->b:Z

    iput-object p2, p0, Ldln;->a:Ldlj;

    return-void
.end method

.method static a(Ldne;Ldll;Ldlj;)Ldln;
    .locals 1

    new-instance p1, Ldln;

    .line 84
    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Ldln;-><init>(Ldne;Ldlj;[B)V

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 18
    invoke-static {p1}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Ldln;->b:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-static {p1}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ldjt;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldln;->a:Ldlj;

    .line 83
    invoke-interface {v0}, Ldlj;->d()Ldli;

    move-result-object v0

    invoke-interface {v0}, Ldli;->g()Ldlj;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ldik;)V
    .locals 5

    .line 85
    invoke-static {p1}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ldjt;->d()Ljava/util/Iterator;

    move-result-object v0

    .line 87
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldkc;

    .line 90
    invoke-virtual {v2}, Ldkc;->a()Ldna;

    move-result-object v3

    sget-object v4, Ldna;->i:Ldna;

    if-ne v3, v4, :cond_1

    iget-boolean v3, v2, Ldkc;->d:Z

    if-nez v3, :cond_1

    .line 91
    instance-of v3, v1, Ldkp;

    if-eqz v3, :cond_0

    iget v2, v2, Ldkc;->b:I

    .line 93
    check-cast v1, Ldkp;

    iget-object v1, v1, Ldkp;->a:Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldkr;

    .line 93
    invoke-virtual {v1}, Ldks;->a()Ldib;

    move-result-object v1

    .line 95
    invoke-virtual {p2, v2, v1}, Ldik;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v2, v2, Ldkc;->b:I

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Ldik;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_2
    invoke-static {p1}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    iget v1, p1, Ldmj;->b:I

    if-ge v0, v1, :cond_3

    iget-object v1, p1, Ldmj;->c:[I

    .line 97
    aget v1, v1, v0

    invoke-static {v1}, Ldnb;->b(I)I

    move-result v1

    iget-object v2, p1, Ldmj;->d:[Ljava/lang/Object;

    .line 98
    aget-object v2, v2, v0

    invoke-virtual {p2, v1, v2}, Ldik;->a(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/Object;Ldlv;Ldjr;)V
    .locals 9

    iget-object v0, p0, Ldln;->c:Ldne;

    .line 26
    invoke-static {p1}, Ldne;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    invoke-static {p1}, Ldll;->b(Ljava/lang/Object;)Ldjt;

    move-result-object v2

    .line 28
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ldlv;->a()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_3

    .line 29
    invoke-interface {p2}, Ldlv;->b()I

    move-result v3

    sget v5, Ldnb;->a:I

    if-eq v3, v5, :cond_4

    invoke-static {v3}, Ldnb;->a(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Ldln;->a:Ldlj;

    invoke-static {v3}, Ldnb;->b(I)I

    move-result v3

    .line 47
    invoke-virtual {p3, v4, v3}, Ldjr;->a(Ldlj;I)Ldjp;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 48
    invoke-static {p2, v3, p3, v2}, Ldll;->a(Ldlv;Ljava/lang/Object;Ldjr;Ldjt;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0, v1, p2}, Ldne;->a(Ljava/lang/Object;Ldlv;)Z

    move-result v3

    goto :goto_1

    .line 50
    :cond_2
    invoke-interface {p2}, Ldlv;->c()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_1
    if-nez v3, :cond_0

    .line 54
    :cond_3
    invoke-static {p1, v1}, Ldne;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 50
    :cond_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    .line 30
    :cond_5
    :goto_2
    :try_start_1
    invoke-interface {p2}, Ldlv;->a()I

    move-result v7

    if-ne v7, v4, :cond_6

    goto :goto_3

    .line 31
    :cond_6
    invoke-interface {p2}, Ldlv;->b()I

    move-result v7

    sget v8, Ldnb;->c:I

    if-ne v7, v8, :cond_7

    .line 32
    invoke-interface {p2}, Ldlv;->o()I

    move-result v3

    iget-object v5, p0, Ldln;->a:Ldlj;

    .line 33
    invoke-virtual {p3, v5, v3}, Ldjr;->a(Ldlj;I)Ldjp;

    move-result-object v5

    goto :goto_2

    :cond_7
    sget v8, Ldnb;->d:I

    if-ne v7, v8, :cond_9

    if-eqz v5, :cond_8

    .line 34
    invoke-static {p2, v5, p3, v2}, Ldll;->a(Ldlv;Ljava/lang/Object;Ldjr;Ldjt;)V

    goto :goto_2

    .line 35
    :cond_8
    invoke-interface {p2}, Ldlv;->n()Ldib;

    move-result-object v6

    goto :goto_2

    .line 36
    :cond_9
    invoke-interface {p2}, Ldlv;->c()Z

    move-result v7

    if-nez v7, :cond_5

    .line 37
    :goto_3
    invoke-interface {p2}, Ldlv;->b()I

    move-result v7

    sget v8, Ldnb;->b:I

    if-ne v7, v8, :cond_d

    .line 51
    if-eqz v6, :cond_0

    if-eqz v5, :cond_c

    iget-object v3, v5, Ldjp;->a:Ldlj;

    .line 38
    invoke-interface {v3}, Ldlj;->d()Ldli;

    move-result-object v3

    invoke-interface {v3}, Ldli;->g()Ldlj;

    move-result-object v3

    .line 39
    invoke-virtual {v6}, Ldib;->f()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 40
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Ldho;

    .line 41
    invoke-direct {v7, v6}, Ldho;-><init>(Ljava/nio/ByteBuffer;)V

    .line 42
    sget-object v6, Ldls;->a:Ldls;

    .line 43
    invoke-virtual {v6, v3}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v6

    invoke-interface {v6, v3, v7, p3}, Ldlw;->a(Ljava/lang/Object;Ldlv;Ldjr;)V

    iget-object v5, v5, Ldjp;->b:Ldkc;

    .line 44
    invoke-virtual {v2, v5, v3}, Ldjt;->a(Ldkc;Ljava/lang/Object;)V

    .line 45
    invoke-interface {v7}, Ldlv;->a()I

    move-result v3

    if-ne v3, v4, :cond_a

    goto/16 :goto_0

    .line 52
    :cond_a
    invoke-static {}, Ldkn;->e()Ldkn;

    move-result-object p2

    throw p2

    .line 36
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Direct buffers not yet supported"

    .line 53
    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 46
    :cond_c
    invoke-static {v1, v3, v6}, Ldne;->a(Ljava/lang/Object;ILdib;)V

    goto/16 :goto_0

    .line 51
    :cond_d
    invoke-static {}, Ldkn;->e()Ldkn;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :catchall_0
    move-exception p2

    .line 54
    invoke-static {p1, v1}, Ldne;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public final a(Ljava/lang/Object;[BIILdhn;)V
    .locals 10

    .line 58
    move-object v0, p1

    check-cast v0, Ldkd;

    iget-object v1, v0, Ldkd;->s:Ldmj;

    .line 59
    sget-object v2, Ldmj;->a:Ldmj;

    if-ne v1, v2, :cond_0

    .line 60
    invoke-static {}, Ldmj;->a()Ldmj;

    move-result-object v1

    iput-object v1, v0, Ldkd;->s:Ldmj;

    goto :goto_0

    .line 82
    :cond_0
    nop

    .line 61
    :goto_0
    check-cast p1, Ldkb;

    .line 62
    invoke-virtual {p1}, Ldkb;->e()Ldjt;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_1
    if-ge p3, p4, :cond_a

    .line 63
    invoke-static {p2, p3, p5}, Ldll;->a([BILdhn;)I

    move-result v4

    iget p3, p5, Ldhn;->a:I

    sget v3, Ldnb;->a:I

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    invoke-static {p3}, Ldnb;->a(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v2, p5, Ldhn;->d:Ldjr;

    iget-object v3, p0, Ldln;->a:Ldlj;

    invoke-static {p3}, Ldnb;->b(I)I

    move-result v5

    .line 75
    invoke-virtual {v2, v3, v5}, Ldjr;->a(Ldlj;I)Ldjp;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 76
    sget-object p3, Ldls;->a:Ldls;

    iget-object v2, v8, Ldjp;->a:Ldlj;

    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 76
    invoke-virtual {p3, v2}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object p3

    .line 78
    invoke-static {p3, p2, v4, p4, p5}, Ldll;->a(Ldlw;[BIILdhn;)I

    move-result p3

    iget-object v2, v8, Ldjp;->b:Ldkc;

    iget-object v3, p5, Ldhn;->c:Ljava/lang/Object;

    .line 79
    invoke-virtual {p1, v2, v3}, Ldjt;->a(Ldkc;Ljava/lang/Object;)V

    move-object v2, v8

    goto :goto_1

    .line 80
    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Ldll;->a(I[BIILdmj;Ldhn;)I

    move-result p3

    move-object v2, v8

    goto :goto_1

    .line 81
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Ldll;->a(I[BIILdhn;)I

    move-result p3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_8

    .line 64
    invoke-static {p2, v4, p5}, Ldll;->a([BILdhn;)I

    move-result v4

    iget v6, p5, Ldhn;->a:I

    invoke-static {v6}, Ldnb;->a(I)I

    move-result v7

    invoke-static {v6}, Ldnb;->b(I)I

    move-result v8

    if-eq v8, v5, :cond_6

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    goto :goto_3

    .line 74
    :cond_4
    if-eqz v2, :cond_5

    .line 65
    sget-object v6, Ldls;->a:Ldls;

    iget-object v7, v2, Ldjp;->a:Ldlj;

    .line 66
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 65
    invoke-virtual {v6, v7}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object v6

    .line 67
    invoke-static {v6, p2, v4, p4, p5}, Ldll;->a(Ldlw;[BIILdhn;)I

    move-result v4

    iget-object v6, v2, Ldjp;->b:Ldkc;

    iget-object v7, p5, Ldhn;->c:Ljava/lang/Object;

    .line 68
    invoke-virtual {p1, v6, v7}, Ldjt;->a(Ldkc;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v7, v5, :cond_7

    .line 69
    invoke-static {p2, v4, p5}, Ldll;->e([BILdhn;)I

    move-result v4

    iget-object v3, p5, Ldhn;->c:Ljava/lang/Object;

    .line 70
    check-cast v3, Ldib;

    goto :goto_2

    :cond_6
    if-nez v7, :cond_7

    .line 71
    invoke-static {p2, v4, p5}, Ldll;->a([BILdhn;)I

    move-result v4

    iget p3, p5, Ldhn;->a:I

    iget-object v2, p5, Ldhn;->d:Ldjr;

    iget-object v6, p0, Ldln;->a:Ldlj;

    .line 72
    invoke-virtual {v2, v6, p3}, Ldjr;->a(Ldlj;I)Ldjp;

    move-result-object v2

    goto :goto_2

    .line 64
    :cond_7
    :goto_3
    sget v7, Ldnb;->b:I

    if-eq v6, v7, :cond_8

    .line 73
    invoke-static {v6, p2, v4, p4, p5}, Ldll;->a(I[BIILdhn;)I

    move-result v4

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    invoke-static {p3, v5}, Ldnb;->a(II)I

    move-result p3

    .line 74
    invoke-virtual {v1, p3, v3}, Ldmj;->a(ILjava/lang/Object;)V

    goto :goto_4

    :cond_9
    nop

    .line 62
    :goto_4
    move p3, v4

    goto/16 :goto_1

    .line 72
    :cond_a
    if-ne p3, p4, :cond_b

    .line 82
    return-void

    :cond_b
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 2
    invoke-static {p1}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object v0

    .line 3
    invoke-static {p2}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Ldln;->b:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object p1

    .line 6
    invoke-static {p2}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ldjt;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 8

    .line 8
    invoke-static {p1}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object v0

    iget v1, v0, Ldmj;->e:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, v0, Ldmj;->b:I

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Ldmj;->c:[I

    .line 9
    aget v4, v4, v3

    iget-object v5, v0, Ldmj;->d:[Ljava/lang/Object;

    .line 10
    aget-object v5, v5, v3

    check-cast v5, Ldib;

    .line 11
    const/4 v6, 0x1

    invoke-static {v6}, Ldij;->h(I)I

    move-result v6

    add-int/2addr v6, v6

    const/4 v7, 0x2

    invoke-static {v4}, Ldnb;->b(I)I

    move-result v4

    invoke-static {v7, v4}, Ldij;->h(II)I

    move-result v4

    add-int/2addr v6, v4

    const/4 v4, 0x3

    .line 12
    invoke-static {v4, v5}, Ldij;->c(ILdib;)I

    move-result v4

    add-int/2addr v6, v4

    add-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput v1, v0, Ldmj;->e:I

    .line 8
    :goto_1
    iget-boolean v0, p0, Ldln;->b:Z

    if-eqz v0, :cond_4

    .line 13
    invoke-static {p1}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object p1

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p1, Ldjt;->a:Ldme;

    .line 14
    invoke-virtual {v3}, Ldme;->a()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p1, Ldjt;->a:Ldme;

    .line 15
    invoke-virtual {v3, v2}, Ldme;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-virtual {p1, v3}, Ldjt;->b(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p1, Ldjt;->a:Ldme;

    .line 16
    invoke-virtual {v2}, Ldme;->b()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 17
    invoke-virtual {p1, v3}, Ldjt;->b(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_3

    :cond_3
    add-int/2addr v1, v0

    :cond_4
    return v1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 56
    invoke-static {p1, p2}, Ldlx;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Ldln;->b:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p1, p2}, Ldlx;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    .line 24
    invoke-static {p1}, Ldne;->c(Ljava/lang/Object;)V

    .line 25
    invoke-static {p1}, Ldll;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    .line 22
    invoke-static {p1}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ldjt;->e()Z

    move-result p1

    return p1
.end method
