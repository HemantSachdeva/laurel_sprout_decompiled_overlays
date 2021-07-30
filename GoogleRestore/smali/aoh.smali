.class public final Laoh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final a:Landroid/content/Intent;


# instance fields
.field public final b:Lacw;

.field public final c:Landroid/content/Context;

.field public final d:Lczw;

.field public final e:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final f:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final g:Ljava/lang/Object;

.field private h:Ldac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    .line 1
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    const-string v1, "com.android.vending.setup.IPlaySetupServiceV2.BIND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Laoh;->a:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PlaySetupServiceV2Proxy"

    aput-object v3, v1, v2

    .line 4
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Laoh;->b:Lacw;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laoh;->g:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ldac;->b()Ldac;

    move-result-object v0

    iput-object v0, p0, Laoh;->h:Ldac;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Laoh;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 7
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Laoh;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p1, p0, Laoh;->c:Landroid/content/Context;

    .line 8
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ldab;->a(Ljava/util/concurrent/ScheduledExecutorService;)Lczw;

    move-result-object p1

    iput-object p1, p0, Laoh;->d:Lczw;

    return-void
.end method


# virtual methods
.method public final a()Lczu;
    .locals 4

    iget-object v0, p0, Laoh;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Laoh;->h:Ldac;

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v1}, Ldac;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Laoh;->h:Ldac;

    .line 17
    invoke-interface {v1}, Lczu;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lczu;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 18
    :try_start_1
    invoke-interface {v1}, Lczu;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Laoh;->h:Ldac;

    .line 23
    monitor-exit v0

    return-object v1

    :cond_1
    :goto_1
    iget-object v1, p0, Laoh;->b:Lacw;

    const-string v2, "Binding to the service"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v1, v2, v3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Ldac;->b()Ldac;

    move-result-object v1

    iput-object v1, p0, Laoh;->h:Ldac;

    .line 21
    invoke-virtual {p0}, Laoh;->b()V

    iget-object v1, p0, Laoh;->h:Ldac;

    .line 22
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final a(Ldac;)V
    .locals 2

    iget-object v0, p0, Laoh;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoe;

    .line 51
    invoke-direct {v0, p0, p1}, Laoe;-><init>(Laoh;Ldac;)V

    iget-object v1, p0, Laoh;->d:Lczw;

    invoke-static {p1, v0, v1}, Ldab;->a(Lczu;Lczm;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Laoh;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Laoh;->c:Landroid/content/Context;

    sget-object v2, Laoh;->a:Landroid/content/Intent;

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Laoh;->b:Lacw;

    const-string v2, "Couldn\'t bind to the service"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v2, v3}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Laoh;->c:Landroid/content/Context;

    .line 11
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 15
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_2
    iget-object v2, p0, Laoh;->b:Lacw;

    .line 12
    invoke-virtual {v2, v1}, Laqd;->a(Ljava/lang/Throwable;)V

    .line 11
    :goto_1
    iget-object v1, p0, Laoh;->h:Ldac;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Service is not ready"

    .line 13
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ldac;->a(Ljava/lang/Throwable;)Z

    .line 14
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    iget-object p1, p0, Laoh;->b:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    const-string v1, "Service binding died"

    invoke-virtual {p1, v1, v0}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Laoh;->c:Landroid/content/Context;

    .line 26
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 31
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Laoh;->b:Lacw;

    .line 27
    invoke-virtual {v0, p1}, Laqd;->a(Ljava/lang/Throwable;)V

    .line 26
    :goto_1
    iget-object p1, p0, Laoh;->d:Lczw;

    new-instance v0, Lanz;

    .line 28
    invoke-direct {v0, p0}, Lanz;-><init>(Laoh;)V

    sget-object v1, Land;->al:Lccv;

    .line 29
    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    invoke-interface {p1, v0, v1, v2, v3}, Lczw;->a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lczy;

    move-result-object p1

    new-instance v0, Laoc;

    .line 31
    invoke-direct {v0, p0}, Laoc;-><init>(Laoh;)V

    iget-object v1, p0, Laoh;->d:Lczw;

    invoke-static {p1, v0, v1}, Ldab;->a(Lczu;Lczm;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Laoh;->b:Lacw;

    const-string v0, "Service connected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    invoke-virtual {p1, v0, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Laoh;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Laoh;->h:Ldac;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 40
    :cond_0
    const-string v1, "com.android.vending.setup.IPlaySetupServiceV2"

    .line 33
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 34
    instance-of v2, v1, Laap;

    if-eqz v2, :cond_1

    .line 35
    move-object p2, v1

    check-cast p2, Laap;

    goto :goto_0

    :cond_1
    new-instance v1, Laan;

    .line 36
    invoke-direct {v1, p2}, Laan;-><init>(Landroid/os/IBinder;)V

    move-object p2, v1

    .line 37
    :goto_0
    invoke-virtual {v0, p2}, Ldac;->a(Ljava/lang/Object;)Z

    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Laoh;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laof;

    .line 40
    invoke-interface {p2}, Laof;->d()V

    goto :goto_1

    :cond_2
    return-void

    .line 36
    :catchall_0
    move-exception p2

    .line 38
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object p1, p0, Laoh;->b:Lacw;

    const-string v0, "Service disconnected"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 41
    invoke-virtual {p1, v0, v2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Laoh;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 42
    :try_start_0
    invoke-static {}, Ldac;->b()Ldac;

    move-result-object v0

    iput-object v0, p0, Laoh;->h:Ldac;

    .line 43
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Laoh;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 44
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 45
    check-cast v2, Ldac;

    new-instance v3, Laog;

    .line 46
    invoke-direct {v3}, Laog;-><init>()V

    .line 47
    invoke-virtual {v2, v3}, Ldac;->a(Ljava/lang/Throwable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Laoh;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 48
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laof;

    .line 49
    invoke-interface {v0}, Laof;->e()V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 43
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
