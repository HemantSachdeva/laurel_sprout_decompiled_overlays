.class final Lbsc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Lbsd;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;

.field private volatile d:Lbsi;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsc;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p2, p0, Lbsc;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lbsc;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(Lbrb;)V
    .locals 0

    iput-object p1, p0, Lbsc;->d:Lbsi;

    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lbsc;->d:Lbsi;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbsc;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lbsc;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v2, Lbsb;->a:Ljava/util/concurrent/ThreadFactory;

    .line 3
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 4
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x3e8

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v0, 0x64

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lbse;->a:Lcua;

    invoke-virtual {v0}, Lctx;->b()Lcup;

    move-result-object v0

    .line 7
    check-cast v0, Lctz;

    const/16 v1, 0x19b

    const-string v2, "com/google/android/libraries/performance/primes/PreInitPrimesApi$EarlyUncaughtExceptionHandler"

    const-string v3, "uncaughtException"

    const-string v4, "PreInitPrimesApi.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Wait for initialization is interrupted"

    invoke-interface {v0, v1}, Lctz;->a(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lbsc;->d:Lbsi;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbsc;->d:Lbsi;

    iget-object v1, p0, Lbsc;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    check-cast v0, Lbrb;

    iget-object v0, v0, Lbrb;->a:Leip;

    check-cast v0, Lbwo;

    .line 9
    invoke-virtual {v0}, Lbwo;->b()Lcqu;

    move-result-object v0

    invoke-virtual {v0}, Lcqu;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v0}, Lcqu;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwf;

    invoke-virtual {v0, v1}, Lbwf;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 11
    :cond_2
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-object v0, p0, Lbsc;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method
