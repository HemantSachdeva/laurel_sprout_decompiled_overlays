.class public final Laav;
.super Ljava/lang/Thread;
.source "PG"


# static fields
.field private static final c:Z


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;

.field public final b:Laba;

.field private final d:Ljava/util/concurrent/BlockingQueue;

.field private final e:Laas;

.field private volatile f:Z

.field private final g:Laau;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Labu;->b:Z

    sput-boolean v0, Laav;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Laas;Laba;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laav;->f:Z

    iput-object p1, p0, Laav;->d:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Laav;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Laav;->e:Laas;

    iput-object p4, p0, Laav;->b:Laba;

    new-instance p1, Laau;

    .line 3
    invoke-direct {p1, p0}, Laau;-><init>(Laav;)V

    iput-object p1, p0, Laav;->g:Laau;

    return-void
.end method

.method private b()V
    .locals 11

    iget-object v0, p0, Laav;->d:Ljava/util/concurrent/BlockingQueue;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labj;

    .line 5
    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Labj;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Labj;->f()V

    .line 7
    :try_start_0
    invoke-virtual {v0}, Labj;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cache-discard-canceled"

    .line 8
    invoke-virtual {v0, v1}, Labj;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {v0}, Labj;->f()V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Laav;->e:Laas;

    iget-object v2, v0, Labj;->b:Ljava/lang/String;

    .line 10
    invoke-interface {v1, v2}, Laas;->a(Ljava/lang/String;)Laar;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "cache-miss"

    .line 11
    invoke-virtual {v0, v1}, Labj;->a(Ljava/lang/String;)V

    iget-object v1, p0, Laav;->g:Laau;

    .line 12
    invoke-virtual {v1, v0}, Laau;->b(Labj;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Laav;->a:Ljava/util/concurrent/BlockingQueue;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v1}, Laar;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cache-hit-expired"

    .line 15
    invoke-virtual {v0, v2}, Labj;->a(Ljava/lang/String;)V

    iput-object v1, v0, Labj;->j:Laar;

    iget-object v1, p0, Laav;->g:Laau;

    .line 16
    invoke-virtual {v1, v0}, Laau;->b(Labj;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Laav;->a:Ljava/util/concurrent/BlockingQueue;

    .line 17
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_3
    const-string v2, "cache-hit"

    .line 18
    invoke-virtual {v0, v2}, Labj;->a(Ljava/lang/String;)V

    new-instance v2, Labf;

    iget-object v3, v1, Laar;->a:[B

    iget-object v4, v1, Laar;->g:Ljava/util/Map;

    const/4 v5, 0x0

    if-nez v4, :cond_4

    move-object v6, v5

    goto :goto_2

    .line 19
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    .line 21
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    new-instance v9, Labb;

    .line 23
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v10, v8}, Labb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_6
    :goto_2
    const/4 v7, 0x0

    .line 24
    invoke-direct {v2, v3, v4, v6, v7}, Labf;-><init>([BLjava/util/Map;Ljava/util/List;Z)V

    .line 25
    invoke-virtual {v0, v2}, Labj;->a(Labf;)Labo;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    .line 26
    invoke-virtual {v0, v3}, Labj;->a(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Labo;->a()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v1, "cache-parsing-failed"

    .line 34
    invoke-virtual {v0, v1}, Labj;->a(Ljava/lang/String;)V

    iget-object v1, p0, Laav;->e:Laas;

    iget-object v2, v0, Labj;->b:Ljava/lang/String;

    .line 35
    invoke-interface {v1, v2}, Laas;->b(Ljava/lang/String;)V

    iput-object v5, v0, Labj;->j:Laar;

    iget-object v1, p0, Laav;->g:Laau;

    .line 36
    invoke-virtual {v1, v0}, Laau;->b(Labj;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Laav;->a:Ljava/util/concurrent/BlockingQueue;

    .line 37
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9
    :cond_7
    iget-wide v3, v1, Laar;->f:J

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_9

    const-string v3, "cache-hit-refresh-needed"

    .line 29
    invoke-virtual {v0, v3}, Labj;->a(Ljava/lang/String;)V

    iput-object v1, v0, Labj;->j:Laar;

    const/4 v1, 0x1

    iput-boolean v1, v2, Labo;->d:Z

    iget-object v1, p0, Laav;->g:Laau;

    .line 30
    invoke-virtual {v1, v0}, Laau;->b(Labj;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Laav;->b:Laba;

    new-instance v3, Laat;

    .line 31
    invoke-direct {v3, p0, v0}, Laat;-><init>(Laav;Labj;)V

    invoke-virtual {v1, v0, v2, v3}, Laba;->a(Labj;Labo;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9
    :cond_8
    iget-object v1, p0, Laav;->b:Laba;

    .line 32
    invoke-virtual {v1, v0, v2}, Laba;->a(Labj;Labo;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Laav;->b:Laba;

    .line 33
    invoke-virtual {v1, v0, v2}, Laba;->a(Labj;Labo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 9
    invoke-virtual {v0}, Labj;->f()V

    .line 38
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laav;->f:Z

    .line 39
    invoke-virtual {p0}, Laav;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 3

    sget-boolean v0, Laav;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 40
    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Labu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    .line 41
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Laav;->e:Laas;

    .line 42
    invoke-interface {v0}, Laas;->a()V

    .line 43
    :goto_0
    :try_start_0
    invoke-direct {p0}, Laav;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Laav;->f:Z

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 44
    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    invoke-static {v2, v0}, Labu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
