.class public final synthetic Ladw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ladw;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "Exception when unbinding: "

    const-string v1, "BackupAccountMgrClient"

    iget-object v2, p0, Ladw;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iget-object v3, v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v3, v3, Ladl;->h:Lasu;

    iget-object v4, v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v4, v4, Lagf;->a:Landroid/accounts/Account;

    new-instance v5, Lbdr;

    invoke-direct {v5}, Lbdr;-><init>()V

    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v6

    iget-object v7, v3, Lasu;->b:Landroid/content/Context;

    sget-object v8, Lasu;->a:Landroid/content/Intent;

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v5, v9}, Lbjd;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-virtual {v5}, Lbdr;->a()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const-string v7, "com.google.android.gms.backup.IBackupAccountManagerService"

    invoke-interface {v6, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v7

    instance-of v8, v7, Lauh;

    if-eqz v8, :cond_1

    move-object v6, v7

    check-cast v6, Lauh;

    goto :goto_0

    :cond_1
    new-instance v7, Lauh;

    invoke-direct {v7, v6}, Lauh;-><init>(Landroid/os/IBinder;)V

    move-object v6, v7

    :goto_0
    invoke-virtual {v6}, Lact;->h()Landroid/os/Parcel;

    move-result-object v7

    invoke-static {v7, v4}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v4, 0x2

    invoke-virtual {v6, v4, v7}, Lact;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v4

    iget-object v3, v3, Lasu;->b:Landroid/content/Context;

    invoke-virtual {v4, v3, v5}, Lbjd;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v4

    iget-object v3, v3, Lasu;->b:Landroid/content/Context;

    invoke-virtual {v4, v3, v5}, Lbjd;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_1
    move-exception v4

    :try_start_4
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v4

    iget-object v3, v3, Lasu;->b:Landroid/content/Context;

    invoke-virtual {v4, v3, v5}, Lbjd;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    :goto_1
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :goto_2
    :try_start_6
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v4

    iget-object v3, v3, Lasu;->b:Landroid/content/Context;

    invoke-virtual {v4, v3, v5}, Lbjd;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    goto :goto_3

    :catch_5
    move-exception v3

    :goto_3
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    throw v2

    :cond_2
    :goto_5
    iget-object v0, v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Starting RestoreService"

    invoke-virtual {v0, v3, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->q:J

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v4, v4, Lada;->d:Lcsi;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v0, v1, v3}, Laho;->a(Landroid/content/Context;JLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
