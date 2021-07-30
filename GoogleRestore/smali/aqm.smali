.class public final Laqm;
.super Lcyr;
.source "PG"


# instance fields
.field public final a:Lacw;

.field public final b:I

.field public final c:Laql;

.field public d:I

.field private final g:Lcrm;

.field private final h:Ljava/util/concurrent/ScheduledExecutorService;

.field private final i:Lapa;

.field private j:Lczu;

.field private k:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Lcrm;Ljava/util/concurrent/ScheduledExecutorService;ILaql;Lapa;)V
    .locals 5

    invoke-direct {p0}, Lcyr;-><init>()V

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "RetryingListenableFuture"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1
    invoke-direct {v0, v2}, Lacw;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Laqm;->a:Lacw;

    iput v4, p0, Laqm;->d:I

    .line 2
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Laqm;->g:Lcrm;

    .line 3
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Laqm;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Laqm;->i:Lapa;

    if-ltz p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {v1}, Lcrj;->a(Z)V

    iput p3, p0, Laqm;->b:I

    iput-object p4, p0, Laqm;->c:Laql;

    .line 5
    invoke-virtual {p0}, Laqm;->b()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .line 6
    invoke-virtual {p0}, Lcyr;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqm;->k:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqm;->a:Lacw;

    const-string v2, "Cancelling scheduled retry."

    new-array v3, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, v2, v3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Laqm;->k:Ljava/util/concurrent/ScheduledFuture;

    .line 8
    invoke-virtual {p0}, Lcyr;->e()Z

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laqm;->a:Lacw;

    const-string v2, "Could not cancel scheduled retry."

    new-array v3, v1, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v2, v3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Laqm;->j:Lczu;

    const/4 v2, 0x0

    iput-object v2, p0, Laqm;->j:Lczu;

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcyr;->e()Z

    move-result v2

    invoke-interface {v0, v2}, Lczu;->cancel(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laqm;->a:Lacw;

    const-string v2, "Attempted to cancel underlying future but it had already completed."

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v2, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 12
    :cond_1
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqm;->k:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqm;->a:Lacw;

    const-string v2, "Attempting to schedule a future while one was already in flight"

    new-array v3, v1, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v0, v2, v3}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Laqm;->j:Lczu;

    iget-object v0, p0, Laqm;->i:Lapa;

    iget-wide v2, v0, Lapa;->a:J

    iget v0, p0, Laqm;->d:I

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Laqm;->a:Lacw;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "Scheduling retry after %d ms"

    invoke-virtual {v0, v1, v4}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Laqm;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Laqj;

    .line 19
    invoke-direct {v1, p0}, Laqj;-><init>(Laqm;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Laqm;->k:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 17
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Laqm;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Laqm;->k:Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Laqm;->g:Lcrm;

    .line 13
    invoke-interface {v0}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczu;

    iput-object v0, p0, Laqm;->j:Lczu;

    new-instance v1, Laqk;

    .line 14
    invoke-direct {v1, p0}, Laqk;-><init>(Laqm;)V

    iget-object v2, p0, Laqm;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    invoke-static {v0, v1, v2}, Ldab;->a(Lczu;Lczm;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
