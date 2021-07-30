.class public final Ldfg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static f:I

.field private static g:Landroid/app/PendingIntent;


# instance fields
.field public final a:Lto;

.field public final b:Landroid/content/Context;

.field public final c:Ldeu;

.field public d:Landroid/os/Messenger;

.field public e:Lddu;

.field private final h:Ljava/util/concurrent/ScheduledExecutorService;

.field private final i:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Ldfg;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldeu;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lto;

    .line 1
    invoke-direct {v0}, Lto;-><init>()V

    iput-object v0, p0, Ldfg;->a:Lto;

    iput-object p1, p0, Ldfg;->b:Landroid/content/Context;

    iput-object p2, p0, Ldfg;->c:Ldeu;

    .line 2
    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Ldff;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Ldff;-><init>(Ldfg;Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Ldfg;->i:Landroid/os/Messenger;

    .line 4
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iput-object p1, p0, Ldfg;->h:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 3

    const-class v0, Ldfg;

    monitor-enter v0

    :try_start_0
    sget v1, Ldfg;->f:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ldfg;->f:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-class v0, Ldfg;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldfg;->g:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    .line 34
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.example.invalidpackage"

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Ldfg;->g:Landroid/app/PendingIntent;

    :cond_0
    const-string p0, "app"

    sget-object v1, Ldfg;->g:Landroid/app/PendingIntent;

    .line 37
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 33
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 7
    const-string v0, "google.messenger"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Ldfg;->a:Lto;

    .line 38
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldfg;->a:Lto;

    .line 39
    invoke-virtual {v1, p1}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbpl;

    if-nez v1, :cond_1

    const-string p2, "FirebaseInstanceId"

    const-string v1, "Missing callback for "

    .line 40
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 40
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    monitor-exit v0

    return-void

    .line 42
    :cond_1
    invoke-virtual {v1, p2}, Lbpl;->a(Ljava/lang/Object;)V

    .line 43
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Landroid/os/Bundle;)Lbpi;
    .locals 6

    .line 9
    invoke-static {}, Ldfg;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbpl;

    .line 10
    invoke-direct {v1}, Lbpl;-><init>()V

    iget-object v2, p0, Ldfg;->a:Lto;

    .line 11
    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Ldfg;->a:Lto;

    .line 12
    invoke-virtual {v3, v0, v1}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Landroid/content/Intent;

    .line 14
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms"

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Ldfg;->c:Ldeu;

    .line 16
    invoke-virtual {v3}, Ldeu;->b()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "com.google.iid.TOKEN_REQUEST"

    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 29
    :cond_0
    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Ldfg;->b:Landroid/content/Context;

    .line 20
    invoke-static {p1, v2}, Ldfg;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x5

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "|ID|"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "kid"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "FirebaseInstanceId"

    const/4 v3, 0x3

    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sending "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    const-string p1, "google.messenger"

    iget-object v3, p0, Ldfg;->i:Landroid/os/Messenger;

    .line 23
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Ldfg;->d:Landroid/os/Messenger;

    if-nez p1, :cond_2

    iget-object p1, p0, Ldfg;->e:Lddu;

    if-eqz p1, :cond_4

    .line 24
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_1
    iget-object v3, p0, Ldfg;->d:Landroid/os/Messenger;

    if-eqz v3, :cond_3

    .line 25
    invoke-virtual {v3, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_1

    .line 33
    :cond_3
    iget-object v3, p0, Ldfg;->e:Lddu;

    .line 26
    invoke-virtual {v3, p1}, Lddu;->a(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    move-exception p1

    .line 26
    :cond_4
    iget-object p1, p0, Ldfg;->c:Ldeu;

    .line 27
    invoke-virtual {p1}, Ldeu;->b()I

    move-result p1

    if-ne p1, v4, :cond_5

    iget-object p1, p0, Ldfg;->b:Landroid/content/Context;

    .line 28
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Ldfg;->b:Landroid/content/Context;

    .line 29
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 25
    :goto_1
    iget-object p1, p0, Ldfg;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Ldfc;

    .line 30
    invoke-direct {v2, v1}, Ldfc;-><init>(Lbpl;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    .line 31
    invoke-interface {p1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iget-object v2, v1, Lbpl;->a:Lbpp;

    sget-object v3, Lddr;->a:Ljava/util/concurrent/Executor;

    new-instance v4, Ldfd;

    .line 32
    invoke-direct {v4, p0, v0, p1}, Ldfd;-><init>(Ldfg;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V

    .line 33
    invoke-virtual {v2, v3, v4}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbox;)V

    iget-object p1, v1, Lbpl;->a:Lbpp;

    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 13
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
