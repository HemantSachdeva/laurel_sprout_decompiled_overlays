.class public final Ldbq;
.super Ldbf;
.source "PG"


# static fields
.field public static final a:Ldft;


# instance fields
.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Ldbx;

.field private final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ldbp;->a:Ldft;

    sput-object v0, Ldbq;->a:Ldft;

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Ldbj;)V
    .locals 11

    invoke-direct {p0}, Ldbf;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldbq;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldbq;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldbq;->c:Ljava/util/Map;

    new-instance v0, Ldbx;

    .line 4
    invoke-direct {v0, p1}, Ldbx;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Ldbq;->d:Ldbx;

    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lddf;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ldde;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ldbx;

    .line 6
    invoke-static {v0, v3, v2}, Ldbj;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ldbj;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ldbm;

    .line 8
    invoke-interface {v3}, Ldbm;->getComponents()Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    .line 9
    aget-object v2, p3, v0

    if-eqz v2, :cond_1

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/util/HashMap;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p3, :cond_7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 12
    check-cast v2, Ldbj;

    new-instance v3, Ldbr;

    .line 13
    invoke-direct {v3, v2}, Ldbr;-><init>(Ldbj;)V

    iget-object v6, v2, Ldbj;->a:Ljava/util/Set;

    .line 14
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    add-int/lit8 v7, v0, 0x1

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    new-instance v8, Ldbs;

    .line 15
    invoke-virtual {v2}, Ldbj;->a()Z

    move-result v9

    xor-int/2addr v9, v5

    .line 16
    invoke-direct {v8, v7, v9}, Ldbs;-><init>(Ljava/lang/Class;Z)V

    .line 17
    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v9, Ljava/util/HashSet;

    .line 18
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_3
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 20
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    iget-boolean v8, v8, Ldbs;->a:Z

    if-eqz v8, :cond_4

    goto :goto_4

    .line 77
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v5, [Ljava/lang/Object;

    aput-object v7, p2, v4

    .line 22
    const-string p3, "Multiple components provide %s."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_5
    :goto_4
    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move v0, v7

    goto :goto_2

    .line 23
    :cond_7
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldbr;

    iget-object v3, v2, Ldbr;->a:Ldbj;

    iget-object v3, v3, Ldbj;->b:Ljava/util/Set;

    .line 25
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldbt;

    new-instance v7, Ldbs;

    iget-object v8, v6, Ldbt;->a:Ljava/lang/Class;

    .line 26
    invoke-virtual {v6}, Ldbt;->a()Z

    move-result v6

    .line 27
    invoke-direct {v7, v8, v6}, Ldbs;-><init>(Ljava/lang/Class;Z)V

    .line 26
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_a

    .line 28
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldbr;

    iget-object v8, v2, Ldbr;->b:Ljava/util/Set;

    .line 29
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v7, v7, Ldbr;->c:Ljava/util/Set;

    .line 30
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance p3, Ljava/util/HashSet;

    .line 31
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 32
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 33
    invoke-virtual {p3, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_c
    new-instance p2, Ljava/util/HashSet;

    .line 34
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 35
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldbr;

    .line 36
    invoke-virtual {v2}, Ldbr;->a()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 37
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    .line 38
    :cond_f
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 39
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldbr;

    .line 40
    invoke-interface {p2, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    iget-object v3, v2, Ldbr;->b:Ljava/util/Set;

    .line 41
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldbr;

    iget-object v7, v6, Ldbr;->c:Ljava/util/Set;

    .line 42
    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v6}, Ldbr;->a()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 44
    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 45
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne v0, p2, :cond_1d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_9
    if-ge p3, p2, :cond_12

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Ldbj;

    new-instance v2, Ldby;

    new-instance v3, Ldbn;

    .line 47
    invoke-direct {v3, p0, v0}, Ldbn;-><init>(Ldbq;Ldbj;)V

    invoke-direct {v2, v3}, Ldby;-><init>(Ldft;)V

    iget-object v3, p0, Ldbq;->b:Ljava/util/Map;

    .line 48
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_12
    iget-object p1, p0, Ldbq;->b:Ljava/util/Map;

    .line 49
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ldbj;

    .line 51
    invoke-virtual {p3}, Ldbj;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 52
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldby;

    iget-object p3, p3, Ldbj;->a:Ljava/util/Set;

    .line 53
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v2, p0, Ldbq;->e:Ljava/util/Map;

    .line 54
    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_14
    iget-object p1, p0, Ldbq;->b:Ljava/util/Map;

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldbj;

    iget-object p3, p2, Ldbj;->b:Ljava/util/Set;

    .line 56
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_16
    :goto_b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbt;

    iget v2, v0, Ldbt;->b:I

    if-ne v2, v5, :cond_16

    iget-object v2, p0, Ldbq;->e:Ljava/util/Map;

    iget-object v3, v0, Ldbt;->a:Ljava/lang/Class;

    .line 57
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_b

    :cond_17
    new-instance p1, Ldbz;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v4

    iget-object p2, v0, Ldbt;->a:Ljava/lang/Class;

    aput-object p2, p3, v5

    .line 71
    const-string p2, "Unsatisfied dependency for component %s: %s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ldbz;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p1, Ljava/util/HashMap;

    .line 58
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Ldbq;->b:Ljava/util/Map;

    .line 59
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbj;

    .line 61
    invoke-virtual {v0}, Ldbj;->a()Z

    move-result v1

    if-nez v1, :cond_19

    .line 62
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ldby;

    iget-object v0, v0, Ldbj;->a:Ljava/util/Set;

    .line 63
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 64
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v2, Ljava/util/HashSet;

    .line 65
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1a
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 67
    :cond_1b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    iget-object v0, p0, Ldbq;->c:Ljava/util/Map;

    .line 69
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    new-instance v1, Ldby;

    new-instance v2, Ldbo;

    invoke-direct {v2, p3}, Ldbo;-><init>(Ljava/util/Set;)V

    invoke-direct {v1, v2}, Ldby;-><init>(Ldft;)V

    .line 70
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_1c
    return-void

    :cond_1d
    new-instance p1, Ljava/util/ArrayList;

    .line 72
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1e
    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ldbr;

    .line 74
    invoke-virtual {p3}, Ldbr;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p3, Ldbr;->b:Ljava/util/Set;

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 22
    iget-object p3, p3, Ldbr;->a:Ldbj;

    .line 76
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 75
    :cond_1f
    new-instance p2, Ldbu;

    .line 77
    invoke-direct {p2, p1}, Ldbu;-><init>(Ljava/util/List;)V

    goto :goto_10

    :goto_f
    throw p2

    :goto_10
    goto :goto_f
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Ldft;
    .locals 1

    iget-object v0, p0, Ldbq;->e:Ljava/util/Map;

    .line 78
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldft;

    return-object p1
.end method
