.class public Ldab;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lczu;
    .locals 1

    .line 7
    new-instance v0, Lczq;

    invoke-direct {v0}, Lczq;-><init>()V

    return-object v0
.end method

.method public static a(Lczc;Ljava/util/concurrent/Executor;)Lczu;
    .locals 0

    .line 13
    invoke-static {p0}, Ldak;->a(Lczc;)Ldak;

    move-result-object p0

    .line 14
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static a(Lczu;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lczu;
    .locals 2

    .line 15
    invoke-interface {p0}, Lczu;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ldah;

    .line 17
    invoke-direct {v0, p0}, Ldah;-><init>(Lczu;)V

    .line 16
    new-instance v1, Ldaf;

    .line 18
    invoke-direct {v1, v0}, Ldaf;-><init>(Ldah;)V

    .line 19
    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Ldah;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 20
    sget-object p1, Lczj;->a:Lczj;

    .line 21
    invoke-interface {p0, v1, p1}, Lczu;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lczu;
    .locals 1

    if-nez p0, :cond_0

    .line 9
    sget-object p0, Lczr;->a:Lczu;

    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lczr;

    invoke-direct {v0, p0}, Lczr;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lczu;
    .locals 1

    .line 11
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldak;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Ldak;

    move-result-object p0

    .line 12
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Lczu;
    .locals 1

    .line 8
    new-instance v0, Lczq;

    invoke-direct {v0, p0}, Lczq;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;)Lczv;
    .locals 1

    .line 22
    instance-of v0, p0, Lczv;

    if-eqz v0, :cond_0

    .line 23
    check-cast p0, Lczv;

    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 25
    new-instance v0, Ldaa;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Ldaa;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcys;

    .line 26
    invoke-direct {v0, p0}, Lcys;-><init>(Ljava/util/concurrent/ExecutorService;)V

    move-object p0, v0

    .line 23
    :goto_0
    return-object p0
.end method

.method public static a(Ljava/util/concurrent/ScheduledExecutorService;)Lczw;
    .locals 1

    .line 27
    instance-of v0, p0, Lczw;

    if-eqz v0, :cond_0

    .line 28
    check-cast p0, Lczw;

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ldaa;

    invoke-direct {v0, p0}, Ldaa;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    .line 28
    :goto_0
    return-object p0
.end method

.method public static a(I)Ldab;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {}, Ldab;->c()Ldab;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lchh;

    invoke-direct {p0}, Lchh;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcho;

    invoke-direct {p0}, Lcho;-><init>()V

    return-object p0
.end method

.method public static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2

    .line 3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lcrj;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 6
    :goto_1
    throw p0

    .line 5
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lczu;Lczm;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lczo;

    .line 2
    invoke-direct {v0, p0, p1}, Lczo;-><init>(Ljava/util/concurrent/Future;Lczm;)V

    invoke-interface {p0, v0, p2}, Lczu;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static b()Lchi;
    .locals 1

    new-instance v0, Lchi;

    invoke-direct {v0}, Lchi;-><init>()V

    return-object v0
.end method

.method public static c()Ldab;
    .locals 1

    new-instance v0, Lcho;

    invoke-direct {v0}, Lcho;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lchz;FF)V
    .locals 0

    return-void
.end method
