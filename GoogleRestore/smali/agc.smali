.class public final Lagc;
.super Lafy;
.source "PG"


# instance fields
.field private final k:Laue;

.field private final l:Landroid/accounts/Account;

.field private final m:J


# direct methods
.method public constructor <init>(Laue;Landroid/accounts/Account;JLjava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Lafy;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lagc;->k:Laue;

    iput-object p2, p0, Lagc;->l:Landroid/accounts/Account;

    iput-wide p3, p0, Lagc;->m:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 13

    const-string v0, "Exception when unbinding: "

    const-string v1, "BackupStatsClient"

    iget-object v2, p0, Lagc;->k:Laue;

    iget-wide v3, p0, Lagc;->m:J

    iget-object v5, p0, Lagc;->l:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v6, Lauc;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v7}, Lauc;-><init>(ZZ)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v8, Lbdr;

    invoke-direct {v8}, Lbdr;-><init>()V

    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v9

    iget-object v10, v2, Laue;->b:Landroid/content/Context;

    sget-object v11, Laue;->a:Landroid/content/Intent;

    invoke-virtual {v9, v10, v11, v8, v7}, Lbjd;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    :try_start_0
    invoke-virtual {v8}, Lbdr;->a()Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_0

    move-object v11, v10

    goto :goto_0

    :cond_0
    const-string v11, "com.google.android.gms.backup.IBackupStatsService"

    invoke-interface {v9, v11}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v11

    instance-of v12, v11, Laui;

    if-eqz v12, :cond_1

    check-cast v11, Laui;

    goto :goto_0

    :cond_1
    new-instance v11, Laui;

    invoke-direct {v11, v9}, Laui;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {v11}, Lact;->h()Landroid/os/Parcel;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v9, v6}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v3, 0x5

    invoke-virtual {v11, v3, v9}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v3

    sget-object v4, Lass;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lass;

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v3

    iget-object v2, v2, Laue;->b:Landroid/content/Context;

    invoke-virtual {v3, v2, v8}, Lbjd;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v10, v4

    goto :goto_7

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v3

    :try_start_2
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v3

    iget-object v2, v2, Laue;->b:Landroid/content/Context;

    invoke-virtual {v3, v2, v8}, Lbjd;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_7

    :catch_3
    move-exception v3

    :try_start_4
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v3

    iget-object v2, v2, Laue;->b:Landroid/content/Context;

    invoke-virtual {v3, v2, v8}, Lbjd;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    :goto_3
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :goto_4
    :try_start_6
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v4

    iget-object v2, v2, Laue;->b:Landroid/content/Context;

    invoke-virtual {v4, v2, v8}, Lbjd;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v2

    goto :goto_5

    :catch_7
    move-exception v2

    :goto_5
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    throw v3

    :cond_2
    :goto_7
    iget-object v0, p0, Lagc;->j:Lacw;

    new-array v1, v7, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v10, :cond_3

    const/4 v3, 0x0

    goto :goto_8

    :cond_3
    array-length v3, v10

    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Fetched %d backup stats."

    invoke-virtual {v0, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v10, :cond_4

    invoke-static {}, Lcsi;->f()Lcsi;

    move-result-object v0

    goto :goto_9

    :cond_4
    invoke-static {v10}, Lcsi;->a([Ljava/lang/Object;)Lcsi;

    move-result-object v0

    :goto_9
    return-object v0
.end method
