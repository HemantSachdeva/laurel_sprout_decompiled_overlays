.class final Lbys;
.super Lcqd;
.source "PG"

# interfaces
.implements Lbqu;
.implements Lbvt;


# instance fields
.field public final a:Lbvq;

.field public final b:Leip;

.field public final c:Lbyo;

.field private final d:Landroid/app/Application;

.field private final e:Lczw;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/ArrayList;

.field private final h:Lcbh;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lbvr;Landroid/app/Application;Lczw;Leip;Lbyo;)V
    .locals 2

    invoke-direct {p0}, Lcqd;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbys;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbys;->g:Ljava/util/ArrayList;

    .line 2
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    iput-object v0, p0, Lbys;->h:Lcbh;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lbys;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    sget-object v1, Lczj;->a:Lczj;

    .line 5
    invoke-virtual {p1, v1, v0}, Lbvr;->a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;

    move-result-object p1

    iput-object p1, p0, Lbys;->a:Lbvq;

    iput-object p2, p0, Lbys;->d:Landroid/app/Application;

    iput-object p3, p0, Lbys;->e:Lczw;

    iput-object p4, p0, Lbys;->b:Leip;

    iput-object p5, p0, Lbys;->c:Lbyo;

    .line 6
    invoke-static {p2}, Lbqy;->a(Landroid/app/Application;)Lbqy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbqy;->a(Lbqx;)V

    return-void
.end method


# virtual methods
.method public final a()Lczu;
    .locals 5

    iget-object v0, p0, Lbys;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lbyq;

    .line 13
    invoke-direct {v0, p0}, Lbyq;-><init>(Lbys;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lbys;->e:Lczw;

    .line 14
    invoke-static {v0}, Ldak;->a(Lczc;)Ldak;

    move-result-object v0

    const-wide/16 v3, 0x1

    .line 15
    invoke-interface {v2, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    new-instance v2, Lczn;

    .line 16
    invoke-direct {v2, v1}, Lczn;-><init>(Ljava/util/concurrent/Future;)V

    .line 17
    sget-object v1, Lczj;->a:Lczj;

    .line 16
    invoke-virtual {v0, v2, v1}, Lcyr;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lbys;->f:Ljava/lang/Object;

    .line 18
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbys;->g:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lbys;->g:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lbyn;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lbyn;

    iget-object v2, p0, Lbys;->g:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 22
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 23
    sget-object v0, Lczr;->a:Lczu;

    return-object v0

    :cond_2
    new-instance v0, Lbyr;

    .line 24
    invoke-direct {v0, p0, v1}, Lbyr;-><init>(Lbys;[Lbyn;)V

    iget-object v1, p0, Lbys;->e:Lczw;

    invoke-static {v0, v1}, Ldab;->a(Lczc;Ljava/util/concurrent/Executor;)Lczu;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lbys;->d:Landroid/app/Application;

    .line 8
    invoke-static {v0}, Lbqy;->a(Landroid/app/Application;)Lbqy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbqy;->b(Lbqx;)V

    iget-object v0, p0, Lbys;->f:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbys;->g:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lbys;->a()Lczu;

    move-result-object p1

    invoke-static {p1}, Lbte;->a(Lczu;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
