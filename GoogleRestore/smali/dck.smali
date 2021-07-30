.class public final Ldck;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ldcn;


# direct methods
.method public constructor <init>(Ldcn;)V
    .locals 0

    iput-object p1, p0, Ldck;->a:Ldcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Ldck;->a:Ldcn;

    iget-object v1, v0, Ldcn;->b:Landroid/content/Context;

    invoke-static {v1}, Lddb;->a(Landroid/content/Context;)V

    sget-object v1, Lddb;->a:Lbkj;

    invoke-static {}, Lbkp;->b()Lbkl;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v2, Lbkl;->a:Z

    if-nez v3, :cond_0

    iget-object v1, v1, Lbkj;->b:Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v2, Lbkl;->b:Lbko;

    :try_start_1
    iget-object v3, v1, Lbkj;->a:Ljava/lang/String;

    iget-object v4, v1, Lbkj;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lbko;->getBooleanFlagValue(Ljava/lang/String;ZI)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v1, v1, Lbkj;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    :goto_0
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-static {}, Ldcy;->a()Ldcy;

    move-result-object v1

    iget-object v3, v0, Ldcn;->b:Landroid/content/Context;

    iput-object v3, v1, Ldcy;->a:Landroid/content/Context;

    invoke-static {}, Ldcy;->a()Ldcy;

    move-result-object v1
    :try_end_2
    .catch Ldcx; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v3, v1, Ldcy;->a:Landroid/content/Context;

    sget-object v4, Lbkg;->c:Lbkf;

    const-string v5, "com.google.android.gms.crash"

    invoke-static {v3, v4, v5}, Lbkg;->a(Landroid/content/Context;Lbkf;Ljava/lang/String;)Lbkg;

    move-result-object v3

    const-string v4, "com.google.firebase.crash.internal.api.FirebaseCrashApiImpl"

    invoke-virtual {v3, v4}, Lbkg;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "com.google.firebase.crash.internal.IFirebaseCrashApi"

    invoke-interface {v3, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Ldcw;

    if-eqz v5, :cond_2

    check-cast v4, Ldcw;

    :goto_1
    move-object v2, v4

    goto :goto_2

    :cond_2
    new-instance v4, Ldcw;

    invoke-direct {v4, v3}, Ldcw;-><init>(Landroid/os/IBinder;)V
    :try_end_3
    .catch Lbkc; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ldcx; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :goto_2
    :try_start_4
    const-string v1, "FirebaseCrash"

    invoke-static {}, Ldcy;->a()Ldcy;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "FirebaseCrash reporting loaded - "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v3

    iget-object v1, v1, Ldcy;->a:Landroid/content/Context;

    invoke-static {v1}, Lbjg;->c(Landroid/content/Context;)V

    new-instance v1, Ldcx;

    invoke-direct {v1, v3}, Ldcx;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ldcx; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    const-string v3, "FirebaseCrash"

    const-string v4, "Failed to load crash reporting"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v0, Ldcn;->b:Landroid/content/Context;

    invoke-static {v0}, Lbjg;->c(Landroid/content/Context;)V

    goto :goto_4

    :cond_3
    const-string v0, "FirebaseCrash"

    const-string v1, "Crash reporting is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object v2

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
