.class public final Ldet;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static c:Ldet;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:Ldep;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldep;

    .line 1
    invoke-direct {v0, p0}, Ldep;-><init>(Ldet;)V

    iput-object v0, p0, Ldet;->d:Ldep;

    const/4 v0, 0x1

    iput v0, p0, Ldet;->e:I

    iput-object p2, p0, Ldet;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ldet;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ldet;
    .locals 4

    const-class v0, Ldet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldet;->c:Ldet;

    if-nez v1, :cond_0

    new-instance v1, Ldet;

    .line 3
    sget-object v2, Lbln;->a:Lcls;

    new-instance v2, Lbjl;

    const-string v3, "MessengerIpcClient"

    invoke-direct {v2, v3}, Lbjl;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 4
    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 5
    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 6
    invoke-direct {v1, p0, v2}, Ldet;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Ldet;->c:Ldet;

    :cond_0
    sget-object p0, Ldet;->c:Ldet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 2
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldet;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldet;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lder;)Lbpi;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x9

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Queueing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ldet;->d:Ldep;

    .line 8
    invoke-virtual {v0, p1}, Ldep;->a(Lder;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ldep;

    .line 9
    invoke-direct {v0, p0}, Ldep;-><init>(Ldet;)V

    iput-object v0, p0, Ldet;->d:Ldep;

    .line 10
    invoke-virtual {v0, p1}, Ldep;->a(Lder;)Z

    :cond_1
    iget-object p1, p1, Lder;->b:Lbpl;

    iget-object p1, p1, Lbpl;->a:Lbpp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 6
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
