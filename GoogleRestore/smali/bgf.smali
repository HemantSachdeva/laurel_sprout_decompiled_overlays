.class public final Lbgf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbet;
.implements Lbeu;


# instance fields
.field public final a:Ljava/util/Queue;

.field public final b:Lben;

.field public final c:Lbfk;

.field public final d:Lbfx;

.field public final e:Ljava/util/Map;

.field public final f:I

.field public g:Z

.field public final h:Ljava/util/List;

.field public final synthetic i:Lbgj;

.field private final j:Ljava/util/Set;

.field private final k:Lbgv;

.field private l:Lbds;


# direct methods
.method public constructor <init>(Lbgj;Lbes;)V
    .locals 8

    iput-object p1, p0, Lbgf;->i:Lbgj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    .line 1
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbgf;->a:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbgf;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbgf;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbgf;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lbgf;->l:Lbds;

    iget-object v1, p1, Lbgj;->n:Landroid/os/Handler;

    .line 5
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 6
    invoke-virtual {p2}, Lbes;->a()Lbhm;

    move-result-object v1

    invoke-virtual {v1}, Lbhm;->a()Lbho;

    move-result-object v5

    iget-object v1, p2, Lbes;->c:Lbeo;

    iget-object v2, v1, Lbeo;->b:Lbqb;

    .line 7
    invoke-static {v2}, Lbir;->a(Ljava/lang/Object;)V

    iget-object v3, p2, Lbes;->b:Landroid/content/Context;

    .line 8
    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lbqb;->a(Landroid/content/Context;Landroid/os/Looper;Lbho;Lbet;Lbeu;)Lben;

    move-result-object v1

    iput-object v1, p0, Lbgf;->b:Lben;

    iget-object v2, p2, Lbes;->d:Lbfk;

    iput-object v2, p0, Lbgf;->c:Lbfk;

    new-instance v2, Lbfx;

    .line 9
    invoke-direct {v2}, Lbfx;-><init>()V

    iput-object v2, p0, Lbgf;->d:Lbfx;

    iget v2, p2, Lbes;->f:I

    iput v2, p0, Lbgf;->f:I

    .line 10
    invoke-interface {v1}, Lben;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lbgj;->g:Landroid/content/Context;

    iget-object p1, p1, Lbgj;->n:Landroid/os/Handler;

    .line 11
    new-instance v1, Lbgv;

    invoke-virtual {p2}, Lbes;->a()Lbhm;

    move-result-object p2

    invoke-virtual {p2}, Lbhm;->a()Lbho;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Lbgv;-><init>(Landroid/content/Context;Landroid/os/Handler;Lbho;)V

    iput-object v1, p0, Lbgf;->k:Lbgv;

    return-void

    :cond_0
    iput-object v0, p0, Lbgf;->k:Lbgv;

    return-void
.end method

.method private final a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 104
    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 105
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 104
    invoke-static {v0}, Lbir;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 112
    :cond_0
    const/4 v2, 0x1

    .line 104
    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    const/4 v0, 0x1

    .line 104
    :goto_1
    if-eq v2, v0, :cond_6

    .line 106
    iget-object v0, p0, Lbgf;->a:Ljava/util/Queue;

    .line 107
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 108
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfj;

    if-eqz p3, :cond_3

    .line 110
    iget v2, v1, Lbfj;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    .line 111
    invoke-virtual {v1, p1}, Lbfj;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3

    .line 112
    :cond_4
    invoke-virtual {v1, p2}, Lbfj;->a(Ljava/lang/Exception;)V

    .line 113
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 112
    :cond_5
    return-void

    .line 104
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 106
    const-string p2, "Status XOR exception should be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final b(Lbds;)Z
    .locals 4

    .line 206
    sget-object v0, Lbgj;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbgf;->i:Lbgj;

    .line 207
    iget-object v2, v1, Lbgj;->l:Lbfy;

    if-eqz v2, :cond_1

    .line 208
    iget-object v1, v1, Lbgj;->m:Ljava/util/Set;

    iget-object v2, p0, Lbgf;->c:Lbfk;

    .line 209
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbgf;->i:Lbgj;

    .line 211
    iget-object v1, v1, Lbgj;->l:Lbfy;

    iget v2, p0, Lbgf;->f:I

    new-instance v3, Lbfo;

    .line 212
    invoke-direct {v3, p1, v2}, Lbfo;-><init>(Lbds;I)V

    iget-object p1, v1, Lbfq;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    .line 213
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v1, Lbfq;->c:Landroid/os/Handler;

    new-instance v2, Lbfp;

    .line 214
    invoke-direct {v2, v1, v3}, Lbfp;-><init>(Lbfq;Lbfo;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    :cond_0
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 210
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final b(Lbfj;)Z
    .locals 14

    .line 16
    instance-of v0, p1, Lbfe;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 17
    invoke-direct {p0, p1}, Lbgf;->c(Lbfj;)V

    return v1

    .line 18
    :cond_0
    move-object v0, p1

    check-cast v0, Lbfe;

    .line 19
    invoke-virtual {v0, p0}, Lbfe;->a(Lbgf;)[Lbdv;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    array-length v5, v2

    if-nez v5, :cond_1

    move-object v8, v4

    goto :goto_3

    .line 34
    :cond_1
    iget-object v5, p0, Lbgf;->b:Lben;

    .line 20
    invoke-interface {v5}, Lben;->j()[Lbdv;

    move-result-object v5

    if-nez v5, :cond_2

    new-array v5, v3, [Lbdv;

    :cond_2
    array-length v6, v5

    .line 21
    new-instance v7, Lth;

    invoke-direct {v7, v6}, Lth;-><init>(I)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_3

    .line 22
    aget-object v9, v5, v8

    iget-object v10, v9, Lbdv;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {v9}, Lbdv;->a()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    array-length v5, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    .line 24
    aget-object v8, v2, v6

    iget-object v9, v8, Lbdv;->a:Ljava/lang/String;

    .line 25
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_5

    .line 26
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8}, Lbdv;->a()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    goto :goto_3

    :cond_6
    move-object v8, v4

    .line 19
    :goto_3
    if-nez v8, :cond_7

    .line 27
    invoke-direct {p0, p1}, Lbgf;->c(Lbfj;)V

    return v1

    :cond_7
    iget-object p1, p0, Lbgf;->b:Lben;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, v8, Lbdv;->a:Ljava/lang/String;

    invoke-virtual {v8}, Lbdv;->a()J

    move-result-wide v5

    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x4d

    add-int/2addr v7, v9

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not execute call because it requires feature ("

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    const-string v2, "GoogleApiManager"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lbgf;->i:Lbgj;

    .line 31
    sget-object v2, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 32
    iget-boolean p1, p1, Lbgj;->o:Z

    if-eqz p1, :cond_a

    .line 33
    invoke-virtual {v0, p0}, Lbfe;->b(Lbgf;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lbgg;

    iget-object v0, p0, Lbgf;->c:Lbfk;

    .line 35
    invoke-direct {p1, v0, v8}, Lbgg;-><init>(Lbfk;Lbdv;)V

    iget-object v0, p0, Lbgf;->h:Ljava/util/List;

    .line 36
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0xf

    if-ltz v0, :cond_8

    iget-object p1, p0, Lbgf;->h:Ljava/util/List;

    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgg;

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 38
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 40
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 41
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lbgf;->i:Lbgj;

    .line 42
    iget-wide v1, v1, Lbgj;->c:J

    .line 43
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lbgf;->h:Ljava/util/List;

    .line 44
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 45
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 46
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lbgf;->i:Lbgj;

    .line 47
    iget-wide v5, v2, Lbgj;->c:J

    .line 48
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 49
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    const/16 v1, 0x10

    .line 50
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lbgf;->i:Lbgj;

    .line 51
    iget-wide v1, v1, Lbgj;->d:J

    .line 52
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    new-instance p1, Lbds;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v4}, Lbds;-><init>(ILandroid/app/PendingIntent;)V

    .line 54
    invoke-direct {p0, p1}, Lbgf;->b(Lbds;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lbgf;->i:Lbgj;

    iget v1, p0, Lbgf;->f:I

    .line 55
    invoke-virtual {v0, p1, v1}, Lbgj;->a(Lbds;I)Z

    .line 43
    :cond_9
    :goto_4
    return v3

    .line 55
    :cond_a
    new-instance p1, Lbfd;

    .line 34
    invoke-direct {p1, v8}, Lbfd;-><init>(Lbdv;)V

    invoke-virtual {v0, p1}, Lbfe;->a(Ljava/lang/Exception;)V

    return v1
.end method

.method private final c(Lbds;)V
    .locals 2

    iget-object v0, p0, Lbgf;->j:Ljava/util/Set;

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbms;

    .line 13
    sget-object v0, Lbds;->a:Lbds;

    invoke-static {p1, v0}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbgf;->b:Lben;

    .line 14
    invoke-interface {p1}, Lben;->m()V

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    iget-object p1, p0, Lbgf;->j:Ljava/util/Set;

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final c(Lbfj;)V
    .locals 3

    iget-object v0, p0, Lbgf;->d:Lbfx;

    .line 190
    invoke-virtual {p0}, Lbgf;->i()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lbfj;->a(Lbfx;Z)V

    .line 191
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, p0}, Lbfj;->c(Lbgf;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lbgf;->b:Lben;

    .line 192
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 193
    const-string v1, "Error in GoogleApi implementation for client %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 194
    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 195
    :catch_0
    move-exception p1

    invoke-virtual {p0, v0}, Lbgf;->a(I)V

    iget-object p1, p0, Lbgf;->b:Lben;

    .line 196
    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    invoke-interface {p1, v0}, Lben;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final d(Lbds;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lbgf;->c:Lbfk;

    .line 217
    invoke-static {v0, p1}, Lbgj;->a(Lbfk;Lbds;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 118
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lbgf;->i:Lbgj;

    sget-object v2, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 119
    iget-object v1, v1, Lbgj;->n:Landroid/os/Handler;

    .line 118
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lbgf;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 121
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    new-instance v1, Lbgb;

    .line 122
    invoke-direct {v1, p0}, Lbgb;-><init>(Lbgf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 157
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lbgf;->i:Lbgj;

    sget-object v2, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 158
    iget-object v1, v1, Lbgj;->n:Landroid/os/Handler;

    .line 157
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Lbgf;->b(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 160
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    new-instance v1, Lbgc;

    .line 161
    invoke-direct {v1, p0, p1}, Lbgc;-><init>(Lbgf;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lbds;)V
    .locals 1

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbgf;->a(Lbds;Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Lbds;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 133
    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 134
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 133
    invoke-static {v0}, Lbir;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lbgf;->k:Lbgv;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbgv;->f:Lboe;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lbhl;->o()V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lbgf;->e()V

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 137
    iget-object v0, v0, Lbgj;->i:Lbij;

    .line 138
    invoke-virtual {v0}, Lbij;->a()V

    .line 139
    invoke-direct {p0, p1}, Lbgf;->c(Lbds;)V

    iget v0, p1, Lbds;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-object p1, Lbgj;->b:Lcom/google/android/gms/common/api/Status;

    .line 140
    invoke-virtual {p0, p1}, Lbgf;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_1
    iget-object v0, p0, Lbgf;->a:Ljava/util/Queue;

    .line 141
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lbgf;->l:Lbds;

    return-void

    :cond_2
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object p1, p0, Lbgf;->i:Lbgj;

    .line 142
    iget-object p1, p1, Lbgj;->n:Landroid/os/Handler;

    .line 143
    invoke-static {p1}, Lbir;->a(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 144
    invoke-direct {p0, v0, p2, p1}, Lbgf;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_3
    iget-object p2, p0, Lbgf;->i:Lbgj;

    .line 145
    iget-boolean p2, p2, Lbgj;->o:Z

    if-nez p2, :cond_4

    .line 146
    invoke-direct {p0, p1}, Lbgf;->d(Lbds;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbgf;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 147
    :cond_4
    invoke-direct {p0, p1}, Lbgf;->d(Lbds;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 148
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lbgf;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Lbgf;->a:Ljava/util/Queue;

    .line 149
    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 150
    :cond_5
    invoke-direct {p0, p1}, Lbgf;->b(Lbds;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Lbgf;->i:Lbgj;

    iget v0, p0, Lbgf;->f:I

    .line 151
    invoke-virtual {p2, p1, v0}, Lbgj;->a(Lbds;I)Z

    move-result p2

    if-nez p2, :cond_9

    iget p2, p1, Lbds;->c:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_7

    iput-boolean v1, p0, Lbgf;->g:Z

    :cond_7
    iget-boolean p2, p0, Lbgf;->g:Z

    if-eqz p2, :cond_8

    iget-object p1, p0, Lbgf;->i:Lbgj;

    .line 152
    iget-object p1, p1, Lbgj;->n:Landroid/os/Handler;

    const/16 p2, 0x9

    iget-object v0, p0, Lbgf;->c:Lbfk;

    .line 153
    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 154
    iget-wide v0, v0, Lbgj;->c:J

    .line 155
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 156
    :cond_8
    invoke-direct {p0, p1}, Lbgf;->d(Lbds;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbgf;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_9
    return-void
.end method

.method public final a(Lbfj;)V
    .locals 2

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 92
    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 93
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 92
    invoke-static {v0}, Lbir;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lbgf;->b:Lben;

    .line 94
    invoke-interface {v0}, Lben;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-direct {p0, p1}, Lbgf;->b(Lbfj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lbgf;->g()V

    return-void

    :cond_0
    iget-object v0, p0, Lbgf;->a:Ljava/util/Queue;

    .line 97
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lbgf;->a:Ljava/util/Queue;

    .line 98
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lbgf;->l:Lbds;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lbds;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lbgf;->l:Lbds;

    .line 100
    invoke-virtual {p0, p1}, Lbgf;->a(Lbds;)V

    return-void

    .line 99
    :cond_2
    invoke-virtual {p0}, Lbgf;->h()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 101
    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 102
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 101
    invoke-static {v0}, Lbir;->a(Landroid/os/Handler;)V

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lbgf;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lbgf;->e()V

    .line 124
    sget-object v0, Lbds;->a:Lbds;

    invoke-direct {p0, v0}, Lbgf;->c(Lbds;)V

    .line 125
    invoke-virtual {p0}, Lbgf;->f()V

    iget-object v0, p0, Lbgf;->e:Ljava/util/Map;

    .line 126
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lbgf;->c()V

    .line 129
    invoke-virtual {p0}, Lbgf;->g()V

    return-void

    .line 130
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgr;

    .line 131
    iget-object v0, v0, Lbgr;->b:Lbun;

    const/4 v0, 0x0

    throw v0
.end method

.method public final b(I)V
    .locals 5

    .line 162
    invoke-virtual {p0}, Lbgf;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbgf;->g:Z

    iget-object v1, p0, Lbgf;->d:Lbfx;

    iget-object v2, p0, Lbgf;->b:Lben;

    .line 163
    invoke-interface {v2}, Lben;->l()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    const-string v4, "The connection to Google Play services was lost"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v0, :cond_0

    .line 165
    const-string p1, " due to service disconnection."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 182
    :cond_0
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 166
    const-string p1, " due to dead object exception."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 167
    const-string p1, " Last reason for disconnect: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x14

    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 170
    invoke-virtual {v1, v0, p1}, Lbfx;->a(ZLcom/google/android/gms/common/api/Status;)V

    iget-object p1, p0, Lbgf;->i:Lbgj;

    .line 171
    sget-object v0, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 172
    iget-object p1, p1, Lbgj;->n:Landroid/os/Handler;

    const/16 v0, 0x9

    iget-object v1, p0, Lbgf;->c:Lbfk;

    .line 173
    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbgf;->i:Lbgj;

    .line 174
    iget-wide v1, v1, Lbgj;->c:J

    .line 171
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lbgf;->i:Lbgj;

    .line 175
    iget-object p1, p1, Lbgj;->n:Landroid/os/Handler;

    const/16 v0, 0xb

    iget-object v1, p0, Lbgf;->c:Lbfk;

    .line 176
    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbgf;->i:Lbgj;

    .line 177
    iget-wide v1, v1, Lbgj;->d:J

    .line 178
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lbgf;->i:Lbgj;

    .line 179
    iget-object p1, p1, Lbgj;->i:Lbij;

    .line 180
    invoke-virtual {p1}, Lbij;->a()V

    iget-object p1, p0, Lbgf;->e:Ljava/util/Map;

    .line 181
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 182
    return-void

    .line 181
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgr;

    .line 182
    iget-object p1, p1, Lbgr;->a:Ljava/lang/Runnable;

    const/4 p1, 0x0

    throw p1
.end method

.method public final c()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbgf;->a:Ljava/util/Queue;

    .line 114
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbfj;

    iget-object v4, p0, Lbgf;->b:Lben;

    .line 115
    invoke-interface {v4}, Lben;->f()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    invoke-direct {p0, v3}, Lbgf;->b(Lbfj;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lbgf;->a:Ljava/util/Queue;

    .line 117
    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_2
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 197
    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 198
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 197
    invoke-static {v0}, Lbir;->a(Landroid/os/Handler;)V

    sget-object v0, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 199
    invoke-virtual {p0, v0}, Lbgf;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lbgf;->d:Lbfx;

    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lbfx;->a(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lbgf;->e:Ljava/util/Map;

    .line 201
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lbgo;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbgo;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lbfi;

    new-instance v5, Lbpl;

    .line 202
    invoke-direct {v5}, Lbpl;-><init>()V

    invoke-direct {v4, v3, v5}, Lbfi;-><init>(Lbgo;Lbpl;)V

    invoke-virtual {p0, v4}, Lbgf;->a(Lbfj;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_0
    new-instance v0, Lbds;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbds;-><init>(I)V

    invoke-direct {p0, v0}, Lbgf;->c(Lbds;)V

    iget-object v0, p0, Lbgf;->b:Lben;

    .line 204
    invoke-interface {v0}, Lben;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbgf;->b:Lben;

    new-instance v1, Lbge;

    .line 205
    invoke-direct {v1, p0}, Lbge;-><init>(Lbgf;)V

    invoke-interface {v0, v1}, Lben;->a(Lbge;)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 56
    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 57
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 56
    invoke-static {v0}, Lbir;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbgf;->l:Lbds;

    return-void
.end method

.method public final f()V
    .locals 3

    iget-boolean v0, p0, Lbgf;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 218
    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 219
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    const/16 v1, 0xb

    iget-object v2, p0, Lbgf;->c:Lbfk;

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 220
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    const/16 v1, 0x9

    iget-object v2, p0, Lbgf;->c:Lbfk;

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbgf;->g:Z

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 184
    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 185
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    iget-object v1, p0, Lbgf;->c:Lbfk;

    .line 184
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 186
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    iget-object v1, p0, Lbgf;->c:Lbfk;

    .line 187
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lbgf;->i:Lbgj;

    .line 188
    iget-wide v2, v2, Lbgj;->e:J

    .line 189
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final h()V
    .locals 9

    iget-object v0, p0, Lbgf;->i:Lbgj;

    .line 58
    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 59
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 58
    invoke-static {v0}, Lbir;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lbgf;->b:Lben;

    .line 60
    invoke-interface {v0}, Lben;->f()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lbgf;->b:Lben;

    invoke-interface {v0}, Lben;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    iget-object v1, p0, Lbgf;->i:Lbgj;

    .line 61
    iget-object v2, v1, Lbgj;->i:Lbij;

    .line 62
    iget-object v1, v1, Lbgj;->g:Landroid/content/Context;

    iget-object v3, p0, Lbgf;->b:Lben;

    .line 63
    invoke-static {v1}, Lbir;->a(Ljava/lang/Object;)V

    .line 64
    invoke-static {v3}, Lbir;->a(Ljava/lang/Object;)V

    .line 65
    invoke-interface {v3}, Lben;->i()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    goto :goto_2

    .line 66
    :cond_1
    invoke-interface {v3}, Lben;->d()I

    move-result v3

    iget-object v4, v2, Lbij;->a:Landroid/util/SparseIntArray;

    .line 67
    const/4 v6, -0x1

    invoke-virtual {v4, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ne v4, v6, :cond_5

    const/4 v4, 0x0

    :goto_0
    iget-object v7, v2, Lbij;->a:Landroid/util/SparseIntArray;

    .line 68
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    iget-object v7, v2, Lbij;->a:Landroid/util/SparseIntArray;

    .line 69
    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    if-le v7, v3, :cond_2

    iget-object v8, v2, Lbij;->a:Landroid/util/SparseIntArray;

    .line 70
    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 72
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    .line 70
    :goto_1
    if-ne v5, v6, :cond_4

    iget-object v4, v2, Lbij;->b:Lbdz;

    .line 71
    invoke-virtual {v4, v1, v3}, Lbdz;->a(Landroid/content/Context;I)I

    move-result v1

    move v5, v1

    :cond_4
    iget-object v1, v2, Lbij;->a:Landroid/util/SparseIntArray;

    .line 72
    invoke-virtual {v1, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 67
    :cond_5
    move v5, v4

    .line 65
    :goto_2
    if-eqz v5, :cond_6

    .line 73
    new-instance v1, Lbds;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2}, Lbds;-><init>(ILandroid/app/PendingIntent;)V

    const-string v2, "GoogleApiManager"

    iget-object v3, p0, Lbgf;->b:Lben;

    .line 74
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x23

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "The service for "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not available: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0, v1}, Lbgf;->a(Lbds;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_6
    new-instance v1, Lbgi;

    iget-object v2, p0, Lbgf;->i:Lbgj;

    iget-object v3, p0, Lbgf;->b:Lben;

    iget-object v4, p0, Lbgf;->c:Lbfk;

    .line 79
    invoke-direct {v1, v2, v3, v4}, Lbgi;-><init>(Lbgj;Lben;Lbfk;)V

    iget-object v2, p0, Lbgf;->b:Lben;

    .line 80
    invoke-interface {v2}, Lben;->h()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lbgf;->k:Lbgv;

    .line 81
    invoke-static {v2}, Lbir;->a(Ljava/lang/Object;)V

    iget-object v3, v2, Lbgv;->f:Lboe;

    if-eqz v3, :cond_7

    .line 82
    invoke-virtual {v3}, Lbhl;->o()V

    :cond_7
    iget-object v3, v2, Lbgv;->d:Lbho;

    .line 83
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lbho;->f:Ljava/lang/Integer;

    iget-object v3, v2, Lbgv;->a:Landroid/content/Context;

    iget-object v4, v2, Lbgv;->b:Landroid/os/Handler;

    .line 84
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, v2, Lbgv;->d:Lbho;

    iget-object v6, v5, Lbho;->e:Lbnx;

    .line 85
    move-object v7, v2

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lbnt;->a(Landroid/content/Context;Landroid/os/Looper;Lbho;Lbnx;Lbet;Lbeu;)Lboe;

    move-result-object v3

    iput-object v3, v2, Lbgv;->f:Lboe;

    iput-object v1, v2, Lbgv;->e:Lbgi;

    iget-object v3, v2, Lbgv;->c:Ljava/util/Set;

    if-eqz v3, :cond_9

    .line 86
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    .line 89
    :cond_8
    iget-object v2, v2, Lbgv;->f:Lboe;

    new-instance v3, Lbhi;

    .line 88
    invoke-direct {v3, v2}, Lbhi;-><init>(Lbhl;)V

    invoke-virtual {v2, v3}, Lbhl;->a(Lbhg;)V

    goto :goto_4

    .line 86
    :cond_9
    :goto_3
    iget-object v3, v2, Lbgv;->b:Landroid/os/Handler;

    new-instance v4, Lbgt;

    .line 87
    invoke-direct {v4, v2}, Lbgt;-><init>(Lbgv;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_4
    :try_start_1
    iget-object v2, p0, Lbgf;->b:Lben;

    .line 89
    invoke-interface {v2, v1}, Lben;->a(Lbhg;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 90
    new-instance v2, Lbds;

    invoke-direct {v2, v0}, Lbds;-><init>(I)V

    .line 91
    invoke-virtual {p0, v2, v1}, Lbgf;->a(Lbds;Ljava/lang/Exception;)V

    return-void

    .line 72
    :catch_1
    move-exception v1

    .line 77
    new-instance v2, Lbds;

    invoke-direct {v2, v0}, Lbds;-><init>(I)V

    .line 78
    invoke-virtual {p0, v2, v1}, Lbgf;->a(Lbds;Ljava/lang/Exception;)V

    return-void

    .line 60
    :cond_b
    :goto_5
    return-void
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lbgf;->b:Lben;

    .line 183
    invoke-interface {v0}, Lben;->h()Z

    move-result v0

    return v0
.end method
