.class public abstract Lwm;
.super Lwq;
.source "PG"


# instance fields
.field public volatile a:Lwl;

.field public volatile b:Lwl;

.field private c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lwq;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 19
    invoke-virtual {p0}, Lwq;->e()V

    new-instance v0, Lwl;

    .line 20
    invoke-direct {v0, p0}, Lwl;-><init>(Lwm;)V

    iput-object v0, p0, Lwm;->a:Lwl;

    .line 21
    invoke-virtual {p0}, Lwm;->b()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method final a(Lwl;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lwm;->a(Ljava/lang/Object;)V

    iget-object p2, p0, Lwm;->b:Lwl;

    if-ne p2, p1, :cond_1

    iget-boolean p1, p0, Lwq;->j:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lwq;->i()V

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 p1, 0x0

    iput-object p1, p0, Lwm;->b:Lwl;

    .line 5
    invoke-virtual {p0}, Lwm;->b()V

    :cond_1
    return-void
.end method

.method final b()V
    .locals 5

    iget-object v0, p0, Lwm;->b:Lwl;

    if-nez v0, :cond_5

    iget-object v0, p0, Lwm;->a:Lwl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lwm;->a:Lwl;

    .line 6
    iget-boolean v0, v0, Lwl;->a:Z

    iget-object v0, p0, Lwm;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lwm;->c:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Lwm;->a:Lwl;

    iget-object v1, p0, Lwm;->c:Ljava/util/concurrent/Executor;

    iget v2, v0, Lwu;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    iget v0, v0, Lwu;->f:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    const-string v1, "We should never reach this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    const/4 v0, 0x0

    .line 8
    throw v0

    .line 11
    :cond_4
    iput v3, v0, Lwu;->f:I

    iget-object v0, v0, Lwu;->c:Ljava/util/concurrent/FutureTask;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 10
    :cond_5
    return-void
.end method

.method public abstract c()Ljava/lang/Object;
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lwm;->a:Lwl;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lwq;->f:Z

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lwq;->i()V

    :cond_0
    iget-object v0, p0, Lwm;->b:Lwl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwm;->a:Lwl;

    .line 14
    iget-boolean v0, v0, Lwl;->a:Z

    iput-object v1, p0, Lwm;->a:Lwl;

    return-void

    :cond_1
    iget-object v0, p0, Lwm;->a:Lwl;

    .line 15
    iget-boolean v0, v0, Lwl;->a:Z

    iget-object v0, p0, Lwm;->a:Lwl;

    iget-object v2, v0, Lwu;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    .line 16
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lwu;->c:Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lwm;->a:Lwl;

    iput-object v0, p0, Lwm;->b:Lwl;

    .line 18
    invoke-virtual {p0}, Lwm;->d()V

    :cond_2
    iput-object v1, p0, Lwm;->a:Lwl;

    :cond_3
    return-void
.end method
