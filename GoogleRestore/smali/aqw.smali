.class public final Laqw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final f:Laqd;


# instance fields
.field protected final a:Ljava/util/concurrent/locks/Lock;

.field public b:Z

.field public c:Landroid/os/RemoteException;

.field public d:Ljava/lang/Runnable;

.field public final e:Lava;

.field private final g:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "BaseCallbacksHandler"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laqw;->f:Laqd;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sget v1, Lbqe;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laqw;->a:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Laqw;->g:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 24
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sget v0, Lbqe;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqw;->a:Ljava/util/concurrent/locks/Lock;

    .line 25
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Laqw;->g:Ljava/util/concurrent/locks/Condition;

    new-instance p1, Lava;

    .line 26
    invoke-direct {p1, p0}, Lava;-><init>(Laqw;)V

    iput-object p1, p0, Laqw;->e:Lava;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Land;->Z:Lccv;

    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object v2, p0, Laqw;->a:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 7
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v6, v4, v0

    if-gtz v6, :cond_2

    .line 12
    iget-boolean v4, p0, Laqw;->b:Z

    if-eqz v4, :cond_1

    iget-object v0, p0, Laqw;->c:Landroid/os/RemoteException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Laqw;->a:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 13
    :cond_0
    :try_start_1
    throw v0

    .line 8
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 15
    sub-long v4, v2, v4

    add-long/2addr v4, v0

    const-wide/16 v6, 0x0

    .line 9
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sget-object v6, Laqw;->f:Laqd;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "Waiting for tasks to complete (timeout: %d)."

    invoke-virtual {v6, v8, v7}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Laqw;->g:Ljava/util/concurrent/locks/Condition;

    .line 11
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v4, v5, v7}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Timeout waiting for GMSCore"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :catchall_0
    move-exception v0

    iget-object v1, p0, Laqw;->a:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final a(Landroid/os/RemoteException;)V
    .locals 1

    new-instance v0, Laqv;

    .line 23
    invoke-direct {v0, p0, p1}, Laqv;-><init>(Laqw;Landroid/os/RemoteException;)V

    invoke-virtual {p0, v0}, Laqw;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Laqw;->a:Ljava/util/concurrent/locks/Lock;

    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Laqw;->b:Z

    if-eqz v0, :cond_0

    sget-object p1, Laqw;->f:Laqd;

    const-string v0, "RpcHandler is already marked as complete; ignoring."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p1, v0, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Laqw;->a:Ljava/util/concurrent/locks/Lock;

    .line 18
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 19
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Laqw;->b:Z

    iget-object p1, p0, Laqw;->d:Ljava/lang/Runnable;

    iget-object v0, p0, Laqw;->g:Ljava/util/concurrent/locks/Condition;

    .line 20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Laqw;->a:Ljava/util/concurrent/locks/Lock;

    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 21
    :cond_1
    return-void

    .line 22
    :catchall_0
    move-exception p1

    iget-object v0, p0, Laqw;->a:Ljava/util/concurrent/locks/Lock;

    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    throw p1
.end method
