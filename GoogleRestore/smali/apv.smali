.class final synthetic Lapv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lapx;


# direct methods
.method public constructor <init>(Lapx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapv;->a:Lapx;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 13

    const-string v0, "FrpClient"

    iget-object v1, p0, Lapv;->a:Lapx;

    iget-object v1, v1, Lapx;->d:Lasl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.google.android.gms"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.google.android.gms.auth.frp.FRP_BIND"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v7, Lbdr;

    invoke-direct {v7}, Lbdr;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    :goto_0
    const/4 v10, 0x3

    if-gt v9, v10, :cond_4

    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v11

    iget-object v12, v1, Lasl;->a:Landroid/content/Context;

    invoke-virtual {v11, v12, v4, v7, v8}, Lbjd;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v11, :cond_2

    :try_start_2
    invoke-virtual {v7}, Lbdr;->a()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v9, v2

    goto :goto_1

    :cond_0
    const-string v9, "com.google.android.gms.auth.frp.IFrpService"

    invoke-interface {v4, v9}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v9

    instance-of v10, v9, Lasm;

    if-eqz v10, :cond_1

    check-cast v9, Lasm;

    goto :goto_1

    :cond_1
    new-instance v9, Lasm;

    invoke-direct {v9, v4}, Lasm;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {v9}, Lact;->h()Landroid/os/Parcel;

    move-result-object v4

    invoke-virtual {v9, v8, v4}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v4

    invoke-static {v4}, Lacv;->a(Landroid/os/Parcel;)Z

    move-result v8

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v8

    iget-object v1, v1, Lasl;->a:Landroid/content/Context;

    invoke-virtual {v8, v1, v7}, Lbjd;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_5
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object v8

    iget-object v1, v1, Lasl;->a:Landroid/content/Context;

    invoke-virtual {v8, v1, v7}, Lbjd;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    throw v4

    :cond_2
    if-ge v9, v10, :cond_3

    const-wide/16 v10, 0x64

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v2

    :goto_2
    if-nez v4, :cond_5

    const-string v1, "isChallengeRequired(): null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5

    :catchall_1
    move-exception v1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const/4 v0, 0x0

    :goto_5
    sput-boolean v0, Lapx;->c:Z

    sget-object v0, Lapx;->a:Laqd;

    sget-boolean v1, Lapx;->c:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Successfully loaded FRP status: frpChallengeRequired="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method
