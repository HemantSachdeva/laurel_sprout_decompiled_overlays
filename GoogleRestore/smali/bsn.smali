.class final synthetic Lbsn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbsr;

.field private final b:Lbsq;


# direct methods
.method public constructor <init>(Lbsr;Lbsq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsn;->a:Lbsr;

    iput-object p2, p0, Lbsn;->b:Lbsq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lbsn;->a:Lbsr;

    iget-object v1, p0, Lbsn;->b:Lbsq;

    :try_start_0
    sget-object v2, Lbsr;->a:Lcua;

    invoke-virtual {v2}, Lctx;->c()Lcup;

    move-result-object v2

    check-cast v2, Lctz;

    const-string v3, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    const-string v4, "lambda$createInitTask$4"

    const/16 v5, 0xda

    const-string v6, "PrimesApiImpl.java"

    invoke-interface {v2, v3, v4, v5, v6}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "background initialization"

    invoke-interface {v2, v3}, Lctz;->a(Ljava/lang/String;)V

    sget-object v2, Lcpm;->a:Ljava/util/WeakHashMap;

    iget-object v2, v0, Lbsr;->f:Leip;

    invoke-interface {v2}, Leip;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtr;

    invoke-virtual {v2, v1}, Lbtr;->a(Lbts;)Z

    iget-object v3, v0, Lbsr;->c:Landroid/app/Application;

    iget-object v4, v0, Lbsr;->g:Leip;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lbso;

    invoke-direct {v5, v4}, Lbso;-><init>(Leip;)V

    iget-object v4, v0, Lbsr;->d:Leip;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lbsp;

    invoke-direct {v5, v4}, Lbsp;-><init>(Leip;)V

    new-instance v4, Lbuk;

    invoke-direct {v4, v3}, Lbuk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lbtr;->a(Lcrm;)V

    iget-boolean v6, v2, Lbtr;->b:Z

    if-nez v6, :cond_0

    new-instance v6, Lbuj;

    invoke-direct {v6, v2, v4, v5}, Lbuj;-><init>(Lbtr;Lcrm;Lcrm;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-boolean v3, v2, Lbtr;->b:Z

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v0}, Lbsr;->a()V

    goto/16 :goto_3

    :cond_1
    iget-object v3, v0, Lbsr;->h:Leip;

    invoke-interface {v3}, Leip;->a()Ljava/lang/Object;

    iget-boolean v3, v2, Lbtr;->b:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lbsr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lbsr;->i:Leip;

    invoke-interface {v3}, Leip;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbrb;

    iget-boolean v4, v2, Lbtr;->b:Z

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v0, Lbsr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbsi;

    instance-of v5, v4, Lbse;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lbsr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    sget-object v5, Lbsr;->a:Lcua;

    invoke-virtual {v5}, Lctx;->e()Lcup;

    move-result-object v5

    check-cast v5, Lctz;

    const-string v6, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    const-string v7, "initializeInBackground"

    const/16 v8, 0x10a

    const-string v9, "PrimesApiImpl.java"

    invoke-interface {v5, v6, v7, v8, v9}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v6, "Primes shutdown during initialization"

    invoke-interface {v5, v6}, Lctz;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lbrb;->a()V

    :cond_5
    iget-object v5, v0, Lbsr;->m:Leip;

    check-cast v5, Ldsx;

    invoke-virtual {v5}, Ldsx;->b()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbvt;

    invoke-virtual {v2, v6}, Lbtr;->a(Lbts;)Z

    invoke-interface {v6}, Lbvt;->c()V

    instance-of v7, v6, Lbtm;

    if-eqz v7, :cond_6

    check-cast v6, Lbtm;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-boolean v7, v1, Lbsq;->b:Z

    if-nez v7, :cond_7

    iget-object v7, v1, Lbsq;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_1

    :cond_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v6}, Lbtm;->a()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :cond_8
    iget-boolean v1, v2, Lbtr;->b:Z

    if-nez v1, :cond_9

    move-object v1, v4

    check-cast v1, Lbse;

    invoke-virtual {v1, v3}, Lbse;->a(Lbrb;)V

    iget-object v2, v1, Lbse;->e:Ljava/util/Queue;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iput-object v3, v1, Lbse;->b:Lbrb;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v1, v3}, Lbse;->a(Lbrb;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    :cond_9
    :goto_2
    invoke-interface {v4}, Lbsi;->a()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_a
    :goto_3
    iget-object v0, v0, Lbsr;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_9
    sget-object v2, Lbsr;->a:Lcua;

    invoke-virtual {v2}, Lctx;->b()Lcup;

    move-result-object v2

    check-cast v2, Lctz;

    invoke-interface {v2, v1}, Lctz;->a(Ljava/lang/Throwable;)V

    const-string v1, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    const-string v3, "lambda$createInitTask$4"

    const/16 v4, 0xde

    const-string v5, "PrimesApiImpl.java"

    invoke-interface {v2, v1, v3, v4, v5}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Primes failed to initialize in the background"

    invoke-interface {v2, v1}, Lctz;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbsr;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :goto_4
    iget-object v0, v0, Lbsr;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method
