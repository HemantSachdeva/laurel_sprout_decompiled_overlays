.class public Lbqb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Exception;)Lbpi;
    .locals 1

    new-instance v0, Lbpp;

    .line 28
    invoke-direct {v0}, Lbpp;-><init>()V

    .line 29
    invoke-virtual {v0, p0}, Lbpp;->a(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lbpi;
    .locals 1

    new-instance v0, Lbpp;

    .line 30
    invoke-direct {v0}, Lbpp;-><init>()V

    .line 31
    invoke-virtual {v0, p0}, Lbpp;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lbpi;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24
    const-string v0, "Executor must not be null"

    invoke-static {p0, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    const-string v0, "Callback must not be null"

    invoke-static {p1, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lbpp;

    .line 26
    invoke-direct {v0}, Lbpp;-><init>()V

    new-instance v1, Lbpq;

    .line 27
    invoke-direct {v1, v0, p1}, Lbpq;-><init>(Lbpp;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static a(Lbpi;)Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-static {}, Lbir;->c()V

    .line 7
    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lbpi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p0}, Lbqb;->b(Lbpi;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lbpr;

    .line 10
    invoke-direct {v0}, Lbpr;-><init>()V

    .line 11
    invoke-static {p0, v0}, Lbqb;->a(Lbpi;Lbpr;)V

    iget-object v0, v0, Lbpr;->a:Ljava/util/concurrent/CountDownLatch;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 13
    invoke-static {p0}, Lbqb;->b(Lbpi;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lbpi;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-static {}, Lbir;->c()V

    .line 15
    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lbpi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0}, Lbqb;->b(Lbpi;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lbpr;

    .line 19
    invoke-direct {v0}, Lbpr;-><init>()V

    .line 20
    invoke-static {p0, v0}, Lbqb;->a(Lbpi;Lbpr;)V

    iget-object v0, v0, Lbpr;->a:Ljava/util/concurrent/CountDownLatch;

    .line 21
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    invoke-static {p0}, Lbqb;->b(Lbpi;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 22
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lbpi;Lbpr;)V
    .locals 1

    .line 3
    sget-object v0, Lbpo;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbpd;)V

    sget-object v0, Lbpo;->b:Ljava/util/concurrent/Executor;

    .line 4
    invoke-virtual {p0, v0, p1}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbpa;)V

    sget-object v0, Lbpo;->b:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {p0, v0, p1}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbou;)V

    return-void
.end method

.method private static b(Lbpi;)Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lbpi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lbpi;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lbpi;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lbpi;->e()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Looper;Lbho;Lbet;Lbeu;)Lben;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p5}, Lbqb;->a(Landroid/content/Context;Landroid/os/Looper;Lbho;Lbfu;Lbgp;)Lben;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lbho;Lbfu;Lbgp;)Lben;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    const-string p2, "buildClient must be implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
