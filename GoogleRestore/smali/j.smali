.class public final Lj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Li;

.field private b:Lst;

.field private final c:Ljava/lang/ref/WeakReference;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Ll;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lst;

    .line 3
    invoke-direct {v0}, Lst;-><init>()V

    iput-object v0, p0, Lj;->b:Lst;

    const/4 v0, 0x0

    iput v0, p0, Lj;->d:I

    iput-boolean v0, p0, Lj;->e:Z

    iput-boolean v0, p0, Lj;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lj;->c:Ljava/lang/ref/WeakReference;

    .line 6
    sget-object p1, Li;->b:Li;

    iput-object p1, p0, Lj;->a:Li;

    return-void
.end method

.method static a(Li;Li;)Li;
    .locals 1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1, p0}, Li;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lj;->g:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static b(Lh;)Li;
    .locals 3

    .line 26
    sget-object v0, Li;->a:Li;

    sget-object v0, Lh;->a:Lh;

    invoke-virtual {p0}, Lh;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 27
    sget-object p0, Li;->a:Li;

    return-object p0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Li;->e:Li;

    return-object p0

    :cond_2
    sget-object p0, Li;->d:Li;

    return-object p0

    :cond_3
    sget-object p0, Li;->c:Li;

    return-object p0
.end method

.method private final b()V
    .locals 7

    iget-object v0, p0, Lj;->c:Ljava/lang/ref/WeakReference;

    .line 35
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    if-eqz v0, :cond_c

    :cond_0
    iget-object v1, p0, Lj;->b:Lst;

    iget v2, v1, Lta;->e:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lta;->b:Lsw;

    iget-object v2, v2, Lsw;->b:Ljava/lang/Object;

    .line 36
    check-cast v2, Lm;

    iget-object v2, v2, Lm;->a:Li;

    iget-object v1, v1, Lta;->c:Lsw;

    iget-object v1, v1, Lsw;->b:Ljava/lang/Object;

    .line 37
    check-cast v1, Lm;

    iget-object v1, v1, Lm;->a:Li;

    if-ne v2, v1, :cond_3

    iget-object v4, p0, Lj;->a:Li;

    if-eq v4, v1, :cond_2

    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lj;->f:Z

    return-void

    .line 37
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lj;->f:Z

    iget-object v1, p0, Lj;->a:Li;

    .line 38
    invoke-virtual {v1, v2}, Li;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_a

    iget-object v1, p0, Lj;->b:Lst;

    .line 39
    new-instance v2, Lsv;

    iget-object v4, v1, Lta;->c:Lsw;

    iget-object v5, v1, Lta;->b:Lsw;

    invoke-direct {v2, v4, v5}, Lsv;-><init>(Lsw;Lsw;)V

    iget-object v1, v1, Lta;->d:Ljava/util/WeakHashMap;

    .line 40
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lj;->f:Z

    if-nez v1, :cond_a

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm;

    .line 43
    :goto_2
    iget-object v4, v3, Lm;->a:Li;

    iget-object v5, p0, Lj;->a:Li;

    invoke-virtual {v4, v5}, Li;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_4

    iget-boolean v4, p0, Lj;->f:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lj;->b:Lst;

    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lst;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 45
    iget-object v4, v3, Lm;->a:Li;

    .line 46
    sget-object v5, Lh;->a:Lh;

    invoke-virtual {v4}, Li;->ordinal()I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 49
    sget-object v4, Lh;->d:Lh;

    goto :goto_3

    .line 61
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_6
    sget-object v4, Lh;->e:Lh;

    goto :goto_3

    .line 46
    :cond_7
    sget-object v4, Lh;->f:Lh;

    .line 47
    :goto_3
    invoke-static {v4}, Lj;->b(Lh;)Li;

    move-result-object v5

    invoke-direct {p0, v5}, Lj;->b(Li;)V

    .line 48
    invoke-virtual {v3, v0, v4}, Lm;->a(Ll;Lh;)V

    .line 49
    invoke-direct {p0}, Lj;->a()V

    goto :goto_2

    .line 63
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 56
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 49
    :cond_a
    iget-object v1, p0, Lj;->b:Lst;

    iget-object v1, v1, Lta;->c:Lsw;

    iget-boolean v2, p0, Lj;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lj;->a:Li;

    iget-object v1, v1, Lsw;->b:Ljava/lang/Object;

    .line 50
    check-cast v1, Lm;

    iget-object v1, v1, Lm;->a:Li;

    invoke-virtual {v2, v1}, Li;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lj;->b:Lst;

    .line 51
    invoke-virtual {v1}, Lta;->a()Lsx;

    move-result-object v1

    .line 52
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lj;->f:Z

    if-nez v2, :cond_0

    .line 53
    invoke-virtual {v1}, Lsx;->a()Ljava/util/Map$Entry;

    move-result-object v2

    check-cast v2, Lsw;

    iget-object v3, v2, Lsw;->b:Ljava/lang/Object;

    .line 54
    check-cast v3, Lm;

    .line 55
    :goto_4
    iget-object v4, v3, Lm;->a:Li;

    iget-object v5, p0, Lj;->a:Li;

    invoke-virtual {v4, v5}, Li;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_b

    iget-boolean v4, p0, Lj;->f:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Lj;->b:Lst;

    .line 53
    iget-object v5, v2, Lsw;->a:Ljava/lang/Object;

    .line 56
    invoke-virtual {v4, v5}, Lst;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 57
    iget-object v4, v3, Lm;->a:Li;

    invoke-direct {p0, v4}, Lj;->b(Li;)V

    .line 58
    iget-object v4, v3, Lm;->a:Li;

    invoke-static {v4}, Lj;->c(Li;)Lh;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lm;->a(Ll;Lh;)V

    .line 59
    invoke-direct {p0}, Lj;->a()V

    goto :goto_4

    .line 60
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 63
    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private final b(Li;)V
    .locals 1

    iget-object v0, p0, Lj;->g:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static c(Li;)Lh;
    .locals 3

    .line 64
    sget-object v0, Li;->a:Li;

    sget-object v0, Lh;->a:Lh;

    invoke-virtual {p0}, Li;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 66
    :cond_1
    sget-object p0, Lh;->c:Lh;

    return-object p0

    :cond_2
    sget-object p0, Lh;->b:Lh;

    return-object p0

    .line 65
    :cond_3
    sget-object p0, Lh;->a:Lh;

    return-object p0
.end method

.method private final c(Lvx;)Li;
    .locals 3

    iget-object v0, p0, Lj;->b:Lst;

    .line 21
    invoke-virtual {v0, p1}, Lst;->c(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lst;->a:Ljava/util/HashMap;

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsw;

    iget-object p1, p1, Lsw;->d:Lsw;

    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v2

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lsw;->b:Ljava/lang/Object;

    .line 23
    check-cast p1, Lm;

    iget-object p1, p1, Lm;->a:Li;

    goto :goto_1

    .line 25
    :cond_1
    move-object p1, v2

    .line 23
    :goto_1
    iget-object v0, p0, Lj;->g:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Li;

    goto :goto_2

    .line 25
    :cond_2
    nop

    .line 24
    :goto_2
    iget-object v0, p0, Lj;->a:Li;

    .line 25
    invoke-static {v0, p1}, Lj;->a(Li;Li;)Li;

    move-result-object p1

    invoke-static {p1, v2}, Lj;->a(Li;Li;)Li;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lh;)V
    .locals 0

    .line 28
    invoke-static {p1}, Lj;->b(Lh;)Li;

    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lj;->a(Li;)V

    return-void
.end method

.method public final a(Li;)V
    .locals 1

    iget-object v0, p0, Lj;->a:Li;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lj;->a:Li;

    iget-boolean p1, p0, Lj;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lj;->d:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lj;->e:Z

    .line 31
    invoke-direct {p0}, Lj;->b()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj;->e:Z

    return-void

    .line 0
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lj;->f:Z

    return-void
.end method

.method public final a(Lvx;)V
    .locals 6

    iget-object v0, p0, Lj;->a:Li;

    .line 7
    sget-object v1, Li;->a:Li;

    if-ne v0, v1, :cond_0

    sget-object v0, Li;->a:Li;

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Li;->b:Li;

    .line 7
    :goto_0
    new-instance v1, Lm;

    .line 8
    invoke-direct {v1, p1, v0}, Lm;-><init>(Lvx;Li;)V

    iget-object v0, p0, Lj;->b:Lst;

    .line 9
    invoke-virtual {v0, p1}, Lst;->a(Ljava/lang/Object;)Lsw;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, v2, Lsw;->b:Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_1
    iget-object v2, v0, Lst;->a:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, p1, v1}, Lta;->b(Ljava/lang/Object;Ljava/lang/Object;)Lsw;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 11
    :goto_1
    check-cast v0, Lm;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lj;->c:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget v2, p0, Lj;->d:I

    const/4 v3, 0x1

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lj;->e:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    .line 20
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    .line 13
    :goto_2
    invoke-direct {p0, p1}, Lj;->c(Lvx;)Li;

    move-result-object v4

    iget v5, p0, Lj;->d:I

    add-int/2addr v5, v3

    iput v5, p0, Lj;->d:I

    :goto_3
    iget-object v3, v1, Lm;->a:Li;

    .line 14
    invoke-virtual {v3, v4}, Li;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-object v3, p0, Lj;->b:Lst;

    .line 15
    invoke-virtual {v3, p1}, Lst;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lm;->a:Li;

    .line 16
    invoke-direct {p0, v3}, Lj;->b(Li;)V

    iget-object v3, v1, Lm;->a:Li;

    .line 17
    invoke-static {v3}, Lj;->c(Li;)Lh;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lm;->a(Ll;Lh;)V

    .line 18
    invoke-direct {p0}, Lj;->a()V

    .line 19
    invoke-direct {p0, p1}, Lj;->c(Lvx;)Li;

    move-result-object v4

    goto :goto_3

    :cond_6
    if-nez v2, :cond_7

    .line 20
    invoke-direct {p0}, Lj;->b()V

    :cond_7
    iget p1, p0, Lj;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lj;->d:I

    return-void
.end method

.method public final b(Lvx;)V
    .locals 1

    iget-object v0, p0, Lj;->b:Lst;

    .line 34
    invoke-virtual {v0, p1}, Lta;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
