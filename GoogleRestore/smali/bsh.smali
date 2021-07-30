.class public final Lbsh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic b:I

.field private static final c:Lcua;

.field private static final d:Lbsh;

.field private static volatile e:Z

.field private static volatile f:Lbsh;


# instance fields
.field public final a:Lbsi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/libraries/performance/primes/Primes"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbsh;->c:Lcua;

    new-instance v0, Lbsh;

    new-instance v1, Lbrz;

    invoke-direct {v1}, Lbrz;-><init>()V

    .line 1
    invoke-direct {v0, v1}, Lbsh;-><init>(Lbsi;)V

    sput-object v0, Lbsh;->d:Lbsh;

    const/4 v1, 0x1

    sput-boolean v1, Lbsh;->e:Z

    sput-object v0, Lbsh;->f:Lbsh;

    return-void
.end method

.method public constructor <init>(Lbsi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lbsh;->a:Lbsi;

    return-void
.end method

.method public static declared-synchronized a(Lbsg;)Lbsh;
    .locals 9

    const-class v0, Lbsh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbsh;->f:Lbsh;

    sget-object v2, Lbsh;->d:Lbsh;

    if-eq v1, v2, :cond_0

    sget-object p0, Lbsh;->c:Lcua;

    invoke-virtual {p0}, Lctx;->d()Lcup;

    move-result-object p0

    .line 31
    check-cast p0, Lctz;

    const-string v1, "com/google/android/libraries/performance/primes/Primes"

    const-string v2, "initialize"

    const/16 v3, 0x6f

    const-string v4, "Primes.java"

    invoke-interface {p0, v1, v2, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Primes.initialize() is called more than once. This call will be ignored."

    invoke-interface {p0, v1}, Lctz;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-static {}, Lcqt;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lbsh;->c:Lcua;

    invoke-virtual {v1}, Lctx;->b()Lcup;

    move-result-object v1

    .line 4
    check-cast v1, Lctz;

    const-string v2, "com/google/android/libraries/performance/primes/Primes"

    const-string v3, "initialize"

    const/16 v4, 0x73

    const-string v5, "Primes.java"

    invoke-interface {v1, v2, v3, v4, v5}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "Primes.initialize() should only be called from the main thread."

    invoke-interface {v1, v2}, Lctz;->a(Ljava/lang/String;)V

    :cond_1
    check-cast p0, Lbre;

    iget-object p0, p0, Lbre;->a:Leip;

    .line 5
    invoke-static {}, Lbsr;->e()V

    check-cast p0, Lbss;

    .line 6
    invoke-virtual {p0}, Lbss;->b()Lbsr;

    move-result-object p0

    iget-object v1, p0, Lbsr;->c:Landroid/app/Application;

    .line 7
    invoke-static {v1}, Lbqy;->a(Landroid/app/Application;)Lbqy;

    move-result-object v1

    new-instance v2, Lbsq;

    iget-object v3, p0, Lbsr;->c:Landroid/app/Application;

    .line 8
    invoke-static {v3}, Lbqy;->a(Landroid/app/Application;)Lbqy;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsq;-><init>(Lbqy;)V

    new-instance v3, Lbsn;

    .line 9
    invoke-direct {v3, p0, v2}, Lbsn;-><init>(Lbsr;Lbsq;)V

    .line 10
    invoke-static {v3}, Lcpi;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lbsr;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lbsr;->j:Lbtp;

    iget-object v3, v3, Lbtp;->c:Lcrm;

    .line 11
    invoke-interface {v3}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {p0}, Lbsr;->d()Lbsi;

    move-result-object v3

    .line 13
    instance-of v4, v3, Lbse;

    if-eqz v4, :cond_2

    .line 14
    check-cast v3, Lbse;

    iget-object v4, p0, Lbsr;->l:Ljava/util/concurrent/CountDownLatch;

    iget-object v5, v3, Lbse;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v3, v3, Lbse;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v3, Lbsr;->a:Lcua;

    invoke-virtual {v3}, Lctx;->e()Lcup;

    move-result-object v3

    .line 17
    check-cast v3, Lctz;

    const-string v4, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    const-string v5, "initialize"

    const/16 v6, 0x8c

    const-string v7, "PrimesApiImpl.java"

    invoke-interface {v3, v4, v5, v6, v7}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "init task registered"

    invoke-interface {v3, v4}, Lctz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_2
    sget-object v4, Lbsr;->a:Lcua;

    invoke-virtual {v4}, Lctx;->b()Lcup;

    move-result-object v4

    .line 18
    check-cast v4, Lctz;

    const-string v5, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    const-string v6, "initialize"

    const/16 v7, 0x8e

    const-string v8, "PrimesApiImpl.java"

    invoke-interface {v4, v5, v6, v7, v8}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v5, "could not register init task - current api: %s"

    invoke-interface {v4, v5, v3}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    :cond_3
    :goto_0
    iget-object v3, p0, Lbsr;->e:Leip;

    .line 19
    invoke-interface {v3}, Leip;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lbsl;

    .line 20
    invoke-direct {v4, p0, v2, v3}, Lbsl;-><init>(Lbsr;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    invoke-static {v4}, Lbsr;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    new-instance v3, Lbsj;

    .line 21
    invoke-direct {v3, p0}, Lbsj;-><init>(Lbsr;)V

    iget-object v4, p0, Lbsr;->j:Lbtp;

    iget-object v4, v4, Lbtp;->c:Lcrm;

    .line 22
    invoke-interface {v4}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v1, Lbsr;->a:Lcua;

    invoke-virtual {v1}, Lctx;->e()Lcup;

    move-result-object v1

    .line 23
    check-cast v1, Lctz;

    const-string v3, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    const-string v4, "initialize"

    const/16 v5, 0x9c

    const-string v6, "PrimesApiImpl.java"

    invoke-interface {v1, v3, v4, v5, v6}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "Primes instant initialization"

    invoke-interface {v1, v3}, Lctz;->a(Ljava/lang/String;)V

    .line 24
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 30
    :cond_4
    new-instance v4, Lbsk;

    .line 25
    invoke-direct {v4, v3, v1, v2}, Lbsk;-><init>(Leip;Lbqy;Ljava/lang/Runnable;)V

    .line 26
    invoke-static {v4}, Lcpi;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v3, p0, Lbsr;->e:Leip;

    .line 27
    invoke-interface {v3}, Leip;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 28
    invoke-static {v1, v3}, Ldab;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lczu;

    move-result-object v1

    .line 25
    invoke-static {v1}, Lbte;->a(Lczu;)V

    .line 29
    invoke-static {}, Lcqt;->c()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    :goto_1
    new-instance v1, Lbsh;

    .line 30
    invoke-direct {v1, p0}, Lbsh;-><init>(Lbsi;)V

    sput-object v1, Lbsh;->f:Lbsh;

    .line 31
    :goto_2
    sget-object p0, Lbsh;->f:Lbsh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 2
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
