.class public final Labd;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field public volatile a:Z

.field private final b:Ljava/util/concurrent/BlockingQueue;

.field private final c:Labc;

.field private final d:Laas;

.field private final e:Laba;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Labc;Laas;Laba;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labd;->a:Z

    iput-object p1, p0, Labd;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Labd;->c:Labc;

    iput-object p3, p0, Labd;->d:Laas;

    iput-object p4, p0, Labd;->e:Laba;

    return-void
.end method

.method private a()V
    .locals 9

    iget-object v0, p0, Labd;->b:Ljava/util/concurrent/BlockingQueue;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labj;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    invoke-virtual {v0}, Labj;->f()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "network-queue-take"

    .line 5
    invoke-virtual {v0, v3}, Labj;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Labj;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "network-discard-cancelled"

    .line 34
    invoke-virtual {v0, v3}, Labj;->b(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Labj;->d()V
    :try_end_0
    .catch Labr; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 31
    :cond_0
    :goto_0
    invoke-virtual {v0}, Labj;->f()V

    return-void

    .line 7
    :cond_1
    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v3, v0, Labj;->c:I

    .line 8
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v3, p0, Labd;->c:Labc;

    .line 9
    invoke-interface {v3, v0}, Labc;->a(Labj;)Labf;

    move-result-object v3

    const-string v4, "network-http-complete"

    .line 10
    invoke-virtual {v0, v4}, Labj;->a(Ljava/lang/String;)V

    .line 11
    iget-boolean v4, v3, Labf;->d:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Labj;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Labr; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-boolean v5, v0, Labj;->i:Z

    .line 12
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    :try_start_3
    const-string v3, "not-modified"

    .line 32
    invoke-virtual {v0, v3}, Labj;->b(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Labj;->d()V
    :try_end_3
    .catch Labr; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v3

    .line 13
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3

    .line 14
    :cond_2
    invoke-virtual {v0, v3}, Labj;->a(Labf;)Labo;

    move-result-object v3

    const-string v4, "network-parse-complete"

    .line 15
    invoke-virtual {v0, v4}, Labj;->a(Ljava/lang/String;)V

    .line 16
    iget-object v4, v3, Labo;->b:Laar;

    if-eqz v4, :cond_3

    iget-object v5, p0, Labd;->d:Laas;

    iget-object v6, v0, Labj;->b:Ljava/lang/String;

    .line 17
    invoke-interface {v5, v6, v4}, Laas;->a(Ljava/lang/String;Laar;)V

    const-string v4, "network-cache-written"

    .line 18
    invoke-virtual {v0, v4}, Labj;->a(Ljava/lang/String;)V

    .line 19
    :cond_3
    invoke-virtual {v0}, Labj;->c()V

    iget-object v4, p0, Labd;->e:Laba;

    .line 20
    invoke-virtual {v4, v0, v3}, Laba;->a(Labj;Labo;)V

    iget-object v4, v0, Labj;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5
    .catch Labr; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v5, v0, Labj;->l:Laau;

    .line 21
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_0

    .line 22
    :try_start_7
    iget-object v4, v3, Labo;->b:Laar;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Laar;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 31
    :cond_4
    iget-object v4, v0, Labj;->b:Ljava/lang/String;

    monitor-enter v5
    :try_end_7
    .catch Labr; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget-object v6, v5, Laau;->a:Ljava/util/Map;

    .line 24
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 25
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v6, :cond_0

    .line 26
    :try_start_9
    sget-boolean v7, Labu;->b:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 27
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v4, v7, v2

    const-string v4, "Releasing %d waiting requests for cacheKey=%s."

    .line 28
    invoke-static {v4, v7}, Labu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labj;

    iget-object v7, v5, Laau;->b:Laav;

    iget-object v7, v7, Laav;->b:Laba;

    .line 30
    invoke-virtual {v7, v6, v3}, Laba;->a(Labj;Labo;)V
    :try_end_9
    .catch Labr; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    .line 21
    :catchall_1
    move-exception v3

    .line 25
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v3

    .line 23
    :cond_6
    :goto_2
    invoke-virtual {v5, v0}, Laau;->a(Labj;)V
    :try_end_b
    .catch Labr; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_0

    .line 13
    :catchall_2
    move-exception v3

    .line 21
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v3
    :try_end_d
    .catch Labr; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 31
    :catchall_3
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_e
    const-string v4, "Unhandled exception %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v3, v4, v2}, Labu;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Labr;

    .line 37
    invoke-direct {v1, v3}, Labr;-><init>(Ljava/lang/Throwable;)V

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, p0, Labd;->e:Laba;

    .line 39
    invoke-virtual {v2, v0, v1}, Laba;->a(Labj;Labr;)V

    .line 40
    invoke-virtual {v0}, Labj;->d()V

    goto/16 :goto_0

    .line 30
    :catch_1
    move-exception v1

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, p0, Labd;->e:Laba;

    .line 42
    invoke-virtual {v2, v0, v1}, Laba;->a(Labj;Labr;)V

    .line 43
    invoke-virtual {v0}, Labj;->d()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto/16 :goto_0

    .line 31
    :goto_3
    invoke-virtual {v0}, Labj;->f()V

    .line 44
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 45
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 46
    :goto_0
    :try_start_0
    invoke-direct {p0}, Labd;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Labd;->a:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Labu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
