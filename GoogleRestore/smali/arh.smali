.class final Larh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Larg;


# direct methods
.method public constructor <init>(Larg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larh;->a:Larg;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    iget-object p1, p0, Larh;->a:Larg;

    sget-object v0, Larf;->a:Laqd;

    const-string v1, "onServiceConnected"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 1
    invoke-virtual {v0, v1, v3}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "com.google.android.gms.backup.migrate.helper.ID2dMigrateHelperBroker"

    .line 2
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lauy;

    if-eqz v1, :cond_1

    .line 4
    move-object p2, v0

    check-cast p2, Lauy;

    goto :goto_0

    :cond_1
    new-instance v0, Lauy;

    .line 5
    invoke-direct {v0, p2}, Lauy;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 6
    :goto_0
    sget-object v0, Lauv;->b:Lauv;

    .line 7
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_2
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 9
    check-cast v1, Lauv;

    const/4 v3, 0x1

    iput v3, v1, Lauv;->a:I

    .line 10
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Lauv;

    :try_start_0
    new-instance v1, Lavc;

    .line 11
    invoke-direct {v1, v0}, Lavc;-><init>(Lauv;)V

    new-instance v0, Lauz;

    move-object v4, p1

    check-cast v4, Larf;

    invoke-direct {v0, v4}, Lauz;-><init>(Larf;)V

    .line 12
    invoke-virtual {p2}, Lact;->h()Landroid/os/Parcel;

    move-result-object v4

    .line 13
    invoke-static {v4, v1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 14
    invoke-static {v4, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 15
    invoke-virtual {p2, v3, v4}, Lact;->c(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    move-exception p2

    sget-object p2, Larf;->a:Laqd;

    const-string v0, "Couldn\'t call broker.requestD2dMigrateHelper()."

    new-array v1, v2, [Ljava/lang/Object;

    .line 16
    invoke-virtual {p2, v0, v1}, Laqd;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Larf;

    iget-object p2, p2, Larf;->f:Ljava/lang/Object;

    .line 17
    monitor-enter p2

    :try_start_1
    check-cast p1, Larf;

    iget-object p1, p1, Larf;->g:Ljava/util/ArrayDeque;

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lare;

    iget-object v0, v0, Lare;->a:Laqw;

    new-instance v1, Larc;

    .line 19
    invoke-direct {v1}, Larc;-><init>()V

    invoke-virtual {v0, v1}, Laqw;->a(Landroid/os/RemoteException;)V

    goto :goto_1

    .line 20
    :cond_3
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    iget-object p1, p0, Larh;->a:Larg;

    move-object v0, p1

    check-cast v0, Larf;

    iget-object v1, v0, Larf;->c:Ljava/lang/Object;

    .line 21
    monitor-enter v1

    :try_start_0
    move-object v2, p1

    check-cast v2, Larf;

    iget-object v2, v2, Larf;->h:Laux;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-static {v2}, Lcrj;->b(Z)V

    move-object v2, p1

    check-cast v2, Larf;

    const/4 v3, 0x0

    iput-object v3, v2, Larf;->h:Laux;

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v2, v0, Larf;->d:Ljava/lang/Object;

    .line 24
    monitor-enter v2

    :try_start_1
    move-object v1, p1

    check-cast v1, Larf;

    iget-object v1, v1, Larf;->e:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    .line 25
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v4, p1

    check-cast v4, Larf;

    iput-object v3, v4, Larf;->e:Ljava/util/Set;

    .line 26
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laqw;

    .line 27
    new-instance v4, Larc;

    invoke-direct {v4}, Larc;-><init>()V

    invoke-virtual {v3, v4}, Laqw;->a(Landroid/os/RemoteException;)V

    goto :goto_1

    .line 28
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, v0, Larf;->f:Ljava/lang/Object;

    .line 29
    monitor-enter v0

    :try_start_2
    check-cast p1, Larf;

    iget-object p1, p1, Larf;->g:Ljava/util/ArrayDeque;

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lare;

    iget-object v1, v1, Lare;->a:Laqw;

    .line 31
    new-instance v2, Larc;

    invoke-direct {v2}, Larc;-><init>()V

    invoke-virtual {v1, v2}, Laqw;->a(Landroid/os/RemoteException;)V

    goto :goto_2

    .line 32
    :cond_2
    monitor-exit v0

    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 23
    :catchall_1
    move-exception p1

    .line 28
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 32
    :catchall_2
    move-exception p1

    .line 23
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
