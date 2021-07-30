.class public abstract Lcsn;
.super Lcsd;
.source "PG"

# interfaces
.implements Ljava/util/Set;
.implements Lj$/util/Set;


# static fields
.field public static final synthetic a:I


# instance fields
.field private transient b:Lcsi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcsd;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 6

    .line 3
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    .line 5
    :cond_2
    const/4 p0, 0x0

    .line 4
    :goto_1
    nop

    .line 5
    const-string v1, "collection too large"

    invoke-static {p0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    return v0
.end method

.method public static varargs a(I[Ljava/lang/Object;)Lcsn;
    .locals 13

    if-eqz p0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    .line 9
    invoke-static {p0}, Lcsn;->a(I)I

    move-result v2

    .line 10
    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v3, p0, :cond_2

    .line 11
    aget-object v4, p1, v3

    invoke-static {v4, v3}, Lchi;->a(Ljava/lang/Object;I)V

    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 13
    invoke-static {v9}, Lcsb;->a(I)I

    move-result v10

    :goto_1
    and-int v11, v10, v7

    .line 14
    aget-object v12, v6, v11

    if-nez v12, :cond_0

    add-int/lit8 v10, v8, 0x1

    .line 16
    aput-object v4, p1, v8

    .line 17
    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 17
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 18
    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_3

    .line 19
    aget-object p0, p1, v0

    new-instance p1, Lcti;

    .line 20
    invoke-direct {p1, p0, v5}, Lcti;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 21
    :cond_3
    invoke-static {v8}, Lcsn;->a(I)I

    move-result p0

    div-int/lit8 v2, v2, 0x2

    if-ge p0, v2, :cond_4

    .line 22
    invoke-static {v8, p1}, Lcsn;->a(I[Ljava/lang/Object;)Lcsn;

    move-result-object p0

    return-object p0

    .line 23
    :cond_4
    array-length p0, p1

    shr-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-ge v8, v0, :cond_5

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    goto :goto_3

    .line 24
    :cond_5
    move-object v4, p1

    :goto_3
    new-instance p0, Lctg;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lctg;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    .line 6
    :cond_6
    nop

    .line 7
    aget-object p0, p1, v0

    .line 8
    invoke-static {p0}, Lcsn;->a(Ljava/lang/Object;)Lcsn;

    move-result-object p0

    return-object p0

    .line 6
    :cond_7
    sget-object p0, Lctg;->b:Lctg;

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Lcsn;
    .locals 1

    new-instance v0, Lcti;

    .line 43
    invoke-direct {v0, p0}, Lcti;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcsn;
    .locals 5
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 44
    const/4 v0, 0x1

    const-string v1, "the total number of elements must fit in an int"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    array-length v1, p6

    add-int/lit8 v2, v1, 0x6

    new-array v3, v2, [Ljava/lang/Object;

    .line 45
    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 46
    aput-object p1, v3, v0

    .line 47
    const/4 p0, 0x2

    aput-object p2, v3, p0

    .line 48
    const/4 p0, 0x3

    aput-object p3, v3, p0

    .line 49
    const/4 p0, 0x4

    aput-object p4, v3, p0

    .line 50
    const/4 p0, 0x5

    aput-object p5, v3, p0

    .line 51
    const/4 p0, 0x6

    invoke-static {p6, v4, v3, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    invoke-static {v2, v3}, Lcsn;->a(I[Ljava/lang/Object;)Lcsn;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Collection;)Lcsn;
    .locals 2

    .line 25
    instance-of v0, p0, Lcsn;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 26
    move-object v0, p0

    check-cast v0, Lcsn;

    .line 27
    invoke-virtual {v0}, Lcsn;->e()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 28
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 29
    array-length v0, p0

    invoke-static {v0, p0}, Lcsn;->a(I[Ljava/lang/Object;)Lcsn;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/Object;)Lcsn;
    .locals 2

    .line 30
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 33
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcsn;->a(I[Ljava/lang/Object;)Lcsn;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    aget-object p0, p0, v0

    invoke-static {p0}, Lcsn;->a(Ljava/lang/Object;)Lcsn;

    move-result-object p0

    return-object p0

    .line 31
    :cond_1
    sget-object p0, Lctg;->b:Lctg;

    return-object p0
.end method


# virtual methods
.method public abstract a()Lctv;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 35
    :cond_0
    instance-of v1, p1, Lcsn;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcsn;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    move-object v1, p1

    check-cast v1, Lcsn;

    .line 37
    invoke-virtual {v1}, Lcsn;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {p0}, Lcsn;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    return v2

    .line 38
    :cond_2
    :goto_0
    if-ne p1, p0, :cond_3

    goto :goto_2

    .line 39
    :cond_3
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_5

    .line 40
    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    .line 41
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_5

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 38
    :goto_2
    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Lcsi;
    .locals 1

    iget-object v0, p0, Lcsn;->b:Lcsi;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcsn;->h()Lcsi;

    move-result-object v0

    iput-object v0, p0, Lcsn;->b:Lcsi;

    :cond_0
    return-object v0
.end method

.method public h()Lcsi;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcsd;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcsi;->b([Ljava/lang/Object;)Lcsi;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 42
    invoke-static {p0}, Lchi;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcsn;->a()Lctv;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-static {p0}, Lj$/util/Set$$CC;->spliterator$$dflt$$(Ljava/util/Set;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcsm;

    .line 53
    invoke-virtual {p0}, Lcsd;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcsm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
