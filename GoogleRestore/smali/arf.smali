.class public final Larf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Larg;


# static fields
.field public static final a:Laqd;


# instance fields
.field public final b:Lara;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/util/Set;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/util/ArrayDeque;

.field public h:Laux;

.field private final i:Landroid/content/Context;

.field private final j:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MigrateHelperConnection"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Larf;->a:Laqd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Larf;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Larf;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Larf;->e:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Larf;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Larf;->g:Ljava/util/ArrayDeque;

    .line 4
    new-instance v0, Lara;

    invoke-direct {v0, p0}, Lara;-><init>(Larf;)V

    iput-object v0, p0, Larf;->b:Lara;

    iput-object p1, p0, Larf;->i:Landroid/content/Context;

    new-instance v0, Larh;

    .line 5
    invoke-direct {v0, p0}, Larh;-><init>(Larg;)V

    iput-object v0, p0, Larf;->j:Landroid/content/ServiceConnection;

    sget-object v1, Larf;->a:Laqd;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 6
    const-string v4, "Binding to Migrate Helper service in GmsCore."

    invoke-virtual {v1, v4, v3}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Landroid/content/Intent;

    .line 7
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 8
    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    const-string v4, "com.google.android.gms.backup.D2D_MIGRATE_HELPER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    const/4 v4, 0x1

    invoke-virtual {p1, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    .line 11
    const-string v0, "Unable to bind to D2dMigrateHelper service due to lack of permission"

    invoke-virtual {v1, v0, p1}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Larf;->a:Laqd;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    const-string v2, "shutdown"

    invoke-virtual {v0, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Larf;->i:Landroid/content/Context;

    iget-object v1, p0, Larf;->j:Landroid/content/ServiceConnection;

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final a(Laqw;Lard;)V
    .locals 3

    new-instance v0, Lare;

    .line 12
    invoke-direct {v0, p1, p2}, Lare;-><init>(Laqw;Lard;)V

    iget-object p1, p0, Larf;->c:Ljava/lang/Object;

    .line 13
    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Larf;->h:Laux;

    if-nez p2, :cond_0

    sget-object p2, Larf;->a:Laqd;

    const-string v1, "Not yet connected to migrate helper; Adding RPC to queue."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p2, v1, v2}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Larf;->f:Ljava/lang/Object;

    .line 15
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Larf;->g:Ljava/util/ArrayDeque;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit p2

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Larf;->a(Lare;)V

    .line 19
    :goto_0
    monitor-exit p1

    return-void

    .line 18
    :catchall_1
    move-exception p2

    .line 19
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method public final a(Lare;)V
    .locals 5

    iget-object v0, p1, Lare;->a:Laqw;

    new-instance v1, Larb;

    .line 20
    invoke-direct {v1, p0, p1}, Larb;-><init>(Larf;Lare;)V

    iget-object v2, v0, Laqw;->a:Ljava/util/concurrent/locks/Lock;

    .line 21
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, v0, Laqw;->d:Ljava/lang/Runnable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-static {v2}, Lcrj;->b(Z)V

    iget-boolean v2, v0, Laqw;->b:Z

    xor-int/2addr v2, v3

    .line 23
    invoke-static {v2}, Lcrj;->b(Z)V

    iput-object v1, v0, Laqw;->d:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, v0, Laqw;->a:Ljava/util/concurrent/locks/Lock;

    .line 24
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Larf;->d:Ljava/lang/Object;

    .line 26
    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Larf;->e:Ljava/util/Set;

    iget-object v2, p1, Lare;->a:Laqw;

    .line 27
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Handler used multiple times."

    .line 28
    invoke-static {v0, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    .line 29
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Larf;->c:Ljava/lang/Object;

    .line 30
    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p1, Lare;->b:Lard;

    iget-object v2, p0, Larf;->h:Laux;

    .line 31
    invoke-interface {v1, v2}, Lard;->a(Laux;)V

    .line 32
    monitor-exit v0

    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 29
    :catch_0
    move-exception v0

    sget-object v1, Larf;->a:Laqd;

    const-string v2, "RemoteException while doing RPC."

    new-array v3, v4, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v1, v2, v0, v3}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p1, Lare;->a:Laqw;

    .line 34
    invoke-virtual {p1, v0}, Laqw;->a(Landroid/os/RemoteException;)V

    return-void

    .line 25
    :catchall_1
    move-exception p1

    .line 29
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    .line 32
    :catchall_2
    move-exception p1

    iget-object v0, v0, Laqw;->a:Ljava/util/concurrent/locks/Lock;

    .line 24
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 25
    throw p1
.end method
