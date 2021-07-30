.class final synthetic Lddl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddl;->a:Landroid/content/Context;

    iput-object p2, p0, Lddl;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lddl;->a:Landroid/content/Context;

    iget-object v2, v1, Lddl;->b:Landroid/content/Intent;

    invoke-static {}, Ldfh;->a()Ldfh;

    move-result-object v3

    iget-object v4, v3, Ldfh;->c:Ljava/util/Queue;

    invoke-interface {v4, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v0, v2}, Ldfh;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "FirebaseInstanceId"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Restricting intent to a specific service: "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :try_start_0
    invoke-virtual {v3, v0}, Ldfh;->a(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    sget-object v3, Ldfm;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v5, Ldfm;->c:Lbol;

    const/4 v6, 0x1

    if-nez v5, :cond_3

    new-instance v5, Lbol;

    invoke-direct {v5, v0}, Lbol;-><init>(Landroid/content/Context;)V

    sput-object v5, Ldfm;->c:Lbol;

    sget-object v5, Ldfm;->c:Lbol;

    iget-object v7, v5, Lbol;->b:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iput-boolean v6, v5, Lbol;->g:Z

    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :cond_3
    :goto_1
    const-string v5, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v8, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_4

    monitor-exit v3

    goto/16 :goto_5

    :cond_4
    if-nez v5, :cond_d

    sget-object v2, Ldfm;->c:Lbol;

    sget-wide v8, Ldfm;->a:J

    iget-object v5, v2, Lbol;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object v5, Lbol;->q:Lcme;

    sget-wide v10, Lbol;->a:J

    const-wide v12, 0x7fffffffffffffffL

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v14, 0x1

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v5, v8, v14

    if-gtz v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    :goto_2
    cmp-long v5, v10, v8

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    iget-object v8, v2, Lbol;->b:Ljava/lang/Object;

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Lbol;->b()Z

    move-result v9

    if-nez v9, :cond_7

    sget-object v9, Lbol;->q:Lcme;

    sget-object v9, Lbol;->q:Lcme;

    sget-object v9, Lblm;->a:Lblm;

    iput-object v9, v2, Lbol;->l:Lblm;

    iget-object v9, v2, Lbol;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v2, Lbol;->h:J

    :cond_7
    iget v9, v2, Lbol;->d:I

    add-int/2addr v9, v6

    iput v9, v2, Lbol;->d:I

    iget v9, v2, Lbol;->j:I

    add-int/2addr v9, v6

    iput v9, v2, Lbol;->j:I

    iget-boolean v9, v2, Lbol;->g:Z

    if-eqz v9, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_8
    iget-object v9, v2, Lbol;->n:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbok;

    if-nez v9, :cond_9

    new-instance v9, Lbok;

    invoke-direct {v9}, Lbok;-><init>()V

    iget-object v14, v2, Lbol;->n:Ljava/util/Map;

    invoke-interface {v14, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    sget-object v4, Lbol;->q:Lcme;

    iget v4, v9, Lbok;->a:I

    add-int/2addr v4, v6

    iput v4, v9, Lbok;->a:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v16, v12, v14

    cmp-long v4, v16, v10

    if-lez v4, :cond_a

    add-long v12, v14, v10

    :cond_a
    iget-wide v14, v2, Lbol;->f:J

    cmp-long v4, v12, v14

    if-lez v4, :cond_c

    iput-wide v12, v2, Lbol;->f:J

    iput-boolean v5, v2, Lbol;->i:Z

    iget-object v4, v2, Lbol;->e:Ljava/util/concurrent/Future;

    if-eqz v4, :cond_b

    invoke-interface {v4, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_b
    sget-object v4, Lbol;->p:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lboj;

    invoke-direct {v5, v2}, Lboj;-><init>(Lbol;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v10, v11, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, v2, Lbol;->e:Ljava/util/concurrent/Future;

    :cond_c
    iput-boolean v7, v2, Lbol;->k:Z

    monitor-exit v8

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    :cond_d
    :goto_4
    monitor-exit v3

    move-object v4, v0

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    :cond_e
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    :goto_5
    if-nez v4, :cond_f

    const-string v0, "FirebaseInstanceId"

    const-string v2, "Error while delivering the message: ServiceIntent not found."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    const/16 v0, 0x194

    goto :goto_6

    :cond_f
    const/4 v0, -0x1

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2d

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to start service while in background: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FirebaseInstanceId"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x192

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v2, "FirebaseInstanceId"

    const-string v3, "Error while delivering the message to the serviceIntent"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x191

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
