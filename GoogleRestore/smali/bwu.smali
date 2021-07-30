.class Lbwu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;
.implements Lbqq;
.implements Lbqp;


# instance fields
.field private final a:Lbwv;

.field private b:Z

.field private c:Landroid/app/Activity;

.field private d:Z

.field private e:Landroid/os/HandlerThread;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lbwv;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwu;->a:Lbwv;

    iput-boolean p2, p0, Lbwu;->b:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbwu;->d:Z

    :cond_0
    return-void
.end method

.method private static c(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 4
    instance-of v0, p0, Lbxn;

    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lbxn;

    invoke-interface {p0}, Lbxn;->a()Lbry;

    move-result-object p0

    invoke-static {p0}, Lbry;->a(Lbry;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lbwu;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    .line 7
    const-string v1, "Primes-Jank"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbwu;->e:Landroid/os/HandlerThread;

    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lbwu;->e:Landroid/os/HandlerThread;

    .line 9
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbwu;->f:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lbwu;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lbwu;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lbwu;->d()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lbwu;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lbww;->a()Lcua;

    move-result-object v1

    invoke-virtual {v1}, Lctx;->d()Lcup;

    move-result-object v1

    .line 3
    check-cast v1, Lctz;

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x64

    const-string v2, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl$ActivityTracker"

    const-string v3, "detachFromCurrentActivity"

    const-string v4, "FrameMetricServiceImpl.java"

    invoke-interface {v1, v2, v3, v0, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "remove frame metrics listener failed"

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lbwu;->d:Z

    iget-object v0, p0, Lbwu;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 24
    invoke-direct {p0}, Lbwu;->e()V

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lbww;->a()Lcua;

    move-result-object v0

    invoke-virtual {v0}, Lctx;->d()Lcup;

    move-result-object v0

    .line 23
    check-cast v0, Lctz;

    const-string v1, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl$ActivityTracker"

    const-string v2, "startCollecting"

    const/16 v3, 0x90

    const-string v4, "FrameMetricServiceImpl.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "No activity"

    invoke-interface {v0, v1}, Lctz;->a(Ljava/lang/String;)V

    .line 25
    :goto_0
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbwu;->d:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0}, Lbwu;->f()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbwu;->c:Landroid/app/Activity;

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lbwu;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbwu;->a:Lbwv;

    .line 12
    invoke-static {p1}, Lbwu;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lbwt;

    iget-object v1, v1, Lbwt;->a:Lbww;

    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, p1, v2, v0}, Lbww;->a(Ljava/lang/String;ZLekw;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lbwu;->d:Z

    .line 26
    invoke-direct {p0}, Lbwu;->f()V

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v0, p0, Lbwu;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwu;->a:Lbwv;

    .line 14
    invoke-static {p1}, Lbwu;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lbwt;

    iget-object v0, v0, Lbwt;->a:Lbww;

    .line 15
    invoke-virtual {v0, v1}, Lbww;->a(Ljava/lang/String;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lbwu;->c:Landroid/app/Activity;

    iget-boolean p1, p0, Lbwu;->d:Z

    if-eqz p1, :cond_1

    .line 16
    invoke-direct {p0}, Lbwu;->e()V

    .line 17
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lbwu;->b()V

    iget-object v0, p0, Lbwu;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwu;->e:Landroid/os/HandlerThread;

    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lbwu;->e:Landroid/os/HandlerThread;

    iput-object v0, p0, Lbwu;->f:Landroid/os/Handler;

    .line 22
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 2

    .line 18
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide p1

    iget-object p3, p0, Lbwu;->a:Lbwv;

    check-cast p3, Lbwt;

    iget-object p3, p3, Lbwt;->a:Lbww;

    long-to-double p1, p1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    double-to-int p1, p1

    .line 19
    invoke-static {p3, p1}, Lbww;->a(Lbww;I)V

    return-void
.end method
