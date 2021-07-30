.class public final Lany;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laof;


# instance fields
.field public final a:Lacw;

.field public final b:Laoh;

.field public final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Z

.field private f:Laqm;

.field private g:Laqm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Laoh;

    invoke-direct {v0, p1, p2}, Laoh;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PlaySetupServiceV2Helper"

    aput-object v3, v1, v2

    .line 2
    invoke-direct {p1, v1}, Lacw;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lany;->a:Lacw;

    .line 3
    sget-object p1, Land;->ai:Lccv;

    invoke-virtual {p1}, Lccv;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lany;->e:Z

    iput-object v0, p0, Lany;->b:Laoh;

    .line 4
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lany;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lany;->c:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "caller_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string p0, "update_types"

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lczu;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lany;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lanx;

    .line 11
    invoke-direct {v0}, Lanx;-><init>()V

    invoke-static {v0}, Ldab;->a(Ljava/lang/Throwable;)Lczu;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lany;->a:Lacw;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lany;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Trying to pause app updates for %s"

    .line 12
    invoke-virtual {v0, v3, v2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lany;->g:Laqm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lany;->a:Lacw;

    const-string v2, "Resume updates was requested before, cancelling"

    new-array v3, v4, [Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, v2, v3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lany;->g:Laqm;

    .line 14
    invoke-virtual {v0, v1}, Lcyr;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lany;->g:Laqm;

    :cond_1
    iget-object v0, p0, Lany;->f:Laqm;

    if-nez v0, :cond_2

    iget-object v0, p0, Lany;->a:Lacw;

    const-string v1, "Pause app updates was not requested before, requesting now"

    new-array v2, v4, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, v1, v2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    new-instance v0, Laqm;

    new-instance v4, Lanu;

    invoke-direct {v4, p0}, Lanu;-><init>(Lany;)V

    iget-object v5, p0, Lany;->d:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Land;->aj:Lccv;

    .line 17
    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    sget-object v1, Land;->ak:Lccv;

    .line 18
    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    invoke-static {v1, v2, v3}, Lapa;->a(JLjava/util/concurrent/TimeUnit;)Lapa;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Laqm;-><init>(Lcrm;Ljava/util/concurrent/ScheduledExecutorService;ILaql;Lapa;)V

    iput-object v0, p0, Lany;->f:Laqm;

    iget-object v0, p0, Lany;->b:Laoh;

    iget-object v0, v0, Laoh;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 20
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lany;->f:Laqm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lczu;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lany;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lanx;

    .line 21
    invoke-direct {v0}, Lanx;-><init>()V

    invoke-static {v0}, Ldab;->a(Ljava/lang/Throwable;)Lczu;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lany;->a:Lacw;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lany;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Trying to resume app updates for %s"

    .line 22
    invoke-virtual {v0, v3, v2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lany;->f:Laqm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lany;->a:Lacw;

    const-string v2, "Pause updates was requested before, cancelling"

    new-array v3, v4, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v2, v3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lany;->f:Laqm;

    .line 24
    invoke-virtual {v0, v1}, Lcyr;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lany;->f:Laqm;

    :cond_1
    iget-object v0, p0, Lany;->g:Laqm;

    if-nez v0, :cond_2

    iget-object v0, p0, Lany;->a:Lacw;

    const-string v1, "Resume app updates was not requested before, requesting now"

    new-array v2, v4, [Ljava/lang/Object;

    .line 25
    invoke-virtual {v0, v1, v2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    new-instance v0, Laqm;

    new-instance v4, Lanv;

    invoke-direct {v4, p0}, Lanv;-><init>(Lany;)V

    iget-object v5, p0, Lany;->d:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Land;->aj:Lccv;

    .line 27
    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    sget-object v1, Land;->ak:Lccv;

    .line 28
    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    invoke-static {v1, v2, v3}, Lapa;->a(JLjava/util/concurrent/TimeUnit;)Lapa;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Laqm;-><init>(Lcrm;Ljava/util/concurrent/ScheduledExecutorService;ILaql;Lapa;)V

    iput-object v0, p0, Lany;->g:Laqm;

    iget-object v0, p0, Lany;->b:Laoh;

    iget-object v0, v0, Laoh;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 30
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lany;->g:Laqm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lany;->b:Laoh;

    iget-object v1, v0, Laoh;->b:Lacw;

    const-string v2, "Unbinding from the service"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 31
    invoke-virtual {v1, v2, v3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Laoh;->c:Landroid/content/Context;

    .line 32
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_2
    iget-object v0, v0, Laoh;->b:Lacw;

    .line 33
    invoke-virtual {v0, v1}, Laqd;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lany;->f:Laqm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lany;->a:Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lany;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Service was disconnected and pause updates request was in-flight for %s, re-requesting"

    .line 8
    invoke-virtual {v0, v2, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lany;->f:Laqm;

    .line 9
    invoke-virtual {p0}, Lany;->a()Lczu;

    move-result-object v0

    new-instance v1, Lanw;

    invoke-direct {v1, p0}, Lanw;-><init>(Lany;)V

    iget-object v2, p0, Lany;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    invoke-static {v0, v1, v2}, Ldab;->a(Lczu;Lczm;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 7
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
