.class public final Lauz;
.super Lacu;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field final synthetic a:Larf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    const-string v0, "com.google.android.gms.backup.migrate.helper.ID2dMigrateHelperBrokerCallbacks"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Larf;)V
    .locals 0

    iput-object p1, p0, Lauz;->a:Larf;

    .line 1
    const-string p1, "com.google.android.gms.backup.migrate.helper.ID2dMigrateHelperBrokerCallbacks"

    invoke-direct {p0, p1}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    sget-object p1, Lave;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lave;

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 29
    :cond_0
    const-string v1, "com.google.android.gms.backup.migrate.helper.ID2dMigrateHelper"

    .line 5
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 6
    instance-of v2, v1, Laux;

    if-eqz v2, :cond_1

    .line 7
    move-object p2, v1

    check-cast p2, Laux;

    goto :goto_0

    :cond_1
    new-instance v1, Laux;

    .line 8
    invoke-direct {v1, p2}, Laux;-><init>(Landroid/os/IBinder;)V

    move-object p2, v1

    .line 9
    :goto_0
    :try_start_0
    sget-object v1, Larf;->a:Laqd;

    const-string v2, "Connected to service version %d"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p1, Lave;->b:Ldkn;

    if-nez v4, :cond_2

    .line 10
    iget-object p1, p1, Lave;->a:Lauw;

    iget p1, p1, Lauw;->a:I

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p3

    invoke-virtual {v1, v2, v3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    throw v4
    :try_end_0
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    move-exception p1

    .line 11
    sget-object v1, Larf;->a:Laqd;

    const-string v2, "Connected, but unable to parse broker response."

    new-array v3, p3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, v3}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 9
    :goto_1
    iget-object p1, p0, Lauz;->a:Larf;

    .line 12
    iget-object p1, p1, Larf;->d:Ljava/lang/Object;

    .line 13
    monitor-enter p1

    :try_start_1
    iget-object v1, p0, Lauz;->a:Larf;

    .line 14
    iget-object v1, v1, Larf;->e:Ljava/util/Set;

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lcrj;->b(Z)V

    .line 16
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object p1, p0, Lauz;->a:Larf;

    .line 17
    iget-object v1, p1, Larf;->c:Ljava/lang/Object;

    .line 18
    monitor-enter v1

    :try_start_2
    iget-object p1, p0, Lauz;->a:Larf;

    .line 19
    iget-object p1, p1, Larf;->h:Laux;

    if-nez p1, :cond_3

    const/4 p3, 0x1

    goto :goto_2

    .line 29
    :cond_3
    nop

    .line 20
    :goto_2
    invoke-static {p3}, Lcrj;->b(Z)V

    iget-object p1, p0, Lauz;->a:Larf;

    iput-object p2, p1, Larf;->h:Laux;

    .line 21
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lauz;->a:Larf;

    .line 22
    iget-object p1, p1, Larf;->f:Ljava/lang/Object;

    .line 23
    monitor-enter p1

    :goto_3
    :try_start_3
    iget-object p2, p0, Lauz;->a:Larf;

    .line 24
    iget-object p2, p2, Larf;->g:Ljava/util/ArrayDeque;

    .line 25
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lauz;->a:Larf;

    .line 26
    iget-object p3, p2, Larf;->g:Ljava/util/ArrayDeque;

    .line 27
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lare;

    .line 28
    invoke-virtual {p2, p3}, Larf;->a(Lare;)V

    goto :goto_3

    .line 29
    :cond_4
    monitor-exit p1

    return v0

    .line 21
    :catchall_0
    move-exception p2

    .line 29
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2

    .line 16
    :catchall_1
    move-exception p1

    .line 21
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 11
    :catchall_2
    move-exception p2

    .line 16
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p2

    .line 8
    :cond_5
    return p3
.end method
