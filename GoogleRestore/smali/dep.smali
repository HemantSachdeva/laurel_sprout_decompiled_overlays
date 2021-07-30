.class final Ldep;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field a:I

.field final b:Landroid/os/Messenger;

.field c:Ldeq;

.field final d:Ljava/util/Queue;

.field final e:Landroid/util/SparseArray;

.field final synthetic f:Ldet;


# direct methods
.method public constructor <init>(Ldet;)V
    .locals 3

    iput-object p1, p0, Ldep;->f:Ldet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Ldep;->a:I

    .line 1
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lblo;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Ldej;

    invoke-direct {v2, p0}, Ldej;-><init>(Ldep;)V

    invoke-direct {v0, v1, v2}, Lblo;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Ldep;->b:Landroid/os/Messenger;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ldep;->d:Ljava/util/Queue;

    new-instance p1, Landroid/util/SparseArray;

    .line 4
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ldep;->e:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Ldep;->f:Ldet;

    .line 37
    iget-object v0, v0, Ldet;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ldem;

    .line 38
    invoke-direct {v1, p0}, Ldem;-><init>(Ldep;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final declared-synchronized a(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldep;->e:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lder;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timing out request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MessengerIpcClient"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ldep;->e:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    new-instance p1, Ldes;

    const-string v1, "Timed out waiting for response"

    .line 43
    invoke-direct {p1, v1}, Ldes;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lder;->a(Ldes;)V

    .line 44
    invoke-virtual {p0}, Ldep;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Disconnected: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 19
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget v0, p0, Ldep;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_2

    monitor-exit p0

    return-void

    .line 29
    :cond_2
    :try_start_1
    iput v2, p0, Ldep;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    .line 19
    :cond_3
    :try_start_2
    const-string v0, "MessengerIpcClient"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MessengerIpcClient"

    const-string v1, "Unbinding service"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput v2, p0, Ldep;->a:I

    .line 21
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v0

    iget-object v1, p0, Ldep;->f:Ldet;

    .line 22
    iget-object v1, v1, Ldet;->a:Landroid/content/Context;

    .line 21
    invoke-virtual {v0, v1, p0}, Lbjd;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    new-instance v0, Ldes;

    .line 23
    invoke-direct {v0, p1}, Ldes;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Ldep;->d:Ljava/util/Queue;

    .line 24
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lder;

    .line 25
    invoke-virtual {v1, v0}, Lder;->a(Ldes;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Ldep;->d:Ljava/util/Queue;

    .line 26
    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    const/4 p1, 0x0

    :goto_3
    iget-object v1, p0, Ldep;->e:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    iget-object v1, p0, Ldep;->e:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lder;

    invoke-virtual {v1, v0}, Lder;->a(Ldes;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Ldep;->e:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method final declared-synchronized a(Lder;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldep;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    monitor-exit p0

    return v1

    .line 18
    :cond_0
    :try_start_1
    iget-object v0, p0, Ldep;->d:Ljava/util/Queue;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Ldep;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_1
    :try_start_2
    iget-object v0, p0, Ldep;->d:Ljava/util/Queue;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    .line 0
    :cond_2
    :try_start_3
    iget-object v0, p0, Ldep;->d:Ljava/util/Queue;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ldep;->a:I

    if-nez p1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    .line 18
    :cond_3
    nop

    .line 9
    :goto_0
    invoke-static {v1}, Lbir;->a(Z)V

    const-string p1, "MessengerIpcClient"

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "MessengerIpcClient"

    const-string v0, "Starting bind to GmsCore"

    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput v3, p0, Ldep;->a:I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    .line 11
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.gms"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v0

    iget-object v1, p0, Ldep;->f:Ldet;

    .line 14
    iget-object v1, v1, Ldet;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {v0, v1, p1, p0, v3}, Lbjd;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Unable to bind to service"

    .line 16
    invoke-virtual {p0, p1}, Ldep;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Ldep;->f:Ldet;

    .line 17
    iget-object p1, p1, Ldet;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ldek;

    .line 18
    invoke-direct {v0, p0}, Ldek;-><init>(Ldep;)V

    const-wide/16 v1, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :goto_1
    monitor-exit p0

    return v3

    .line 4
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldep;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ldep;->d:Ljava/util/Queue;

    .line 45
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldep;->e:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MessengerIpcClient"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MessengerIpcClient"

    const-string v1, "Finished handling requests, unbinding"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Ldep;->a:I

    .line 48
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v0

    iget-object v1, p0, Ldep;->f:Ldet;

    .line 49
    iget-object v1, v1, Ldet;->a:Landroid/content/Context;

    .line 48
    invoke-virtual {v0, v1, p0}, Lbjd;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldep;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Timed out while binding"

    .line 39
    invoke-virtual {p0, v0}, Ldep;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "Service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Ldep;->f:Ldet;

    .line 32
    iget-object p1, p1, Ldet;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ldel;

    .line 33
    invoke-direct {v0, p0, p2}, Ldel;-><init>(Ldep;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Ldep;->f:Ldet;

    .line 35
    iget-object p1, p1, Ldet;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lden;

    .line 36
    invoke-direct {v0, p0}, Lden;-><init>(Ldep;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
