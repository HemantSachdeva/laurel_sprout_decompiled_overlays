.class public final synthetic Lboj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbol;


# direct methods
.method public constructor <init>(Lbol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lboj;->a:Lbol;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lboj;->a:Lbol;

    iget-object v1, v0, Lbol;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lbol;->b()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const-string v2, "WakeLock"

    iget-object v3, v0, Lbol;->m:Ljava/lang/String;

    const-string v4, " ** IS FORCE-RELEASED ON TIMEOUT **"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lbol;->k:Z

    invoke-virtual {v0}, Lbol;->a()V

    invoke-virtual {v0}, Lbol;->b()Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    iput v2, v0, Lbol;->d:I

    iget-object v2, v0, Lbol;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0}, Lbol;->b()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    monitor-exit v2

    goto/16 :goto_4

    :cond_3
    iget-boolean v3, v0, Lbol;->g:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget v3, v0, Lbol;->d:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lbol;->d:I

    if-lez v3, :cond_5

    goto :goto_0

    :cond_4
    iput v4, v0, Lbol;->d:I

    :cond_5
    invoke-virtual {v0}, Lbol;->a()V

    iget-object v3, v0, Lbol;->n:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbok;

    iput v4, v5, Lbok;->a:I

    goto :goto_1

    :cond_6
    iget-object v3, v0, Lbol;->n:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, v0, Lbol;->e:Ljava/util/concurrent/Future;

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v5, v0, Lbol;->e:Ljava/util/concurrent/Future;

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lbol;->f:J

    :cond_7
    sget-object v3, Lbol;->q:Lcme;

    iput v4, v0, Lbol;->j:I

    iget-object v3, v0, Lbol;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_a

    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, v0, Lbol;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, v0, Lbol;->l:Lblm;

    if-eqz v3, :cond_2

    :goto_2
    iput-object v5, v0, Lbol;->l:Lblm;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Ljava/lang/RuntimeException;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "WakeLock"

    iget-object v6, v0, Lbol;->m:Ljava/lang/String;

    const-string v7, " failed to release!"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v3, v0, Lbol;->l:Lblm;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_8
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    :try_start_7
    iget-object v4, v0, Lbol;->l:Lblm;

    if-eqz v4, :cond_9

    iput-object v5, v0, Lbol;->l:Lblm;

    :cond_9
    throw v3

    :cond_a
    const-string v3, "WakeLock"

    iget-object v0, v0, Lbol;->m:Ljava/lang/String;

    const-string v4, " should be held!"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :goto_4
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    return-void

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
