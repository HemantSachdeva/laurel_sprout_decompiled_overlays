.class public final Lclo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Landroid/content/Intent;

.field private static volatile f:Lclo;


# instance fields
.field final b:Landroid/content/ServiceConnection;

.field private volatile c:Lclm;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    .line 1
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-string v1, "com.google.android.setupwizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    const-string v1, "com.google.android.setupcompat.SetupCompatService.BIND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lclo;->a:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcll;

    .line 4
    invoke-direct {v0, p0}, Lcll;-><init>(Lclo;)V

    iput-object v0, p0, Lclo;->b:Landroid/content/ServiceConnection;

    new-instance v0, Lclm;

    .line 5
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lclm;-><init>(I)V

    iput-object v0, p0, Lclo;->c:Lclm;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lclo;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lclo;->d:Landroid/content/Context;

    return-void
.end method

.method private final a(JLjava/util/concurrent/TimeUnit;)Lcky;
    .locals 5

    .line 40
    invoke-direct {p0}, Lclo;->b()Lclm;

    move-result-object v0

    .line 41
    iget v1, v0, Lclm;->a:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    :cond_0
    iget-object v0, p0, Lclo;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 43
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v3, p0, Lclo;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    .line 44
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    nop

    .line 45
    const-string v3, "SucServiceProvider"

    const-string v4, "Waiting for service to get connected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 50
    invoke-direct {p0}, Lclo;->b()Lclm;

    move-result-object p1

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-array p2, v1, [Ljava/lang/Object;

    .line 51
    iget p3, p1, Lclm;->a:I

    invoke-static {p3}, Lcln;->a(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v4

    .line 52
    const-string p3, "Finished waiting for service to get connected. Current state = %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_2
    iget-object p1, p1, Lclm;->b:Lcky;

    return-object p1

    .line 47
    :cond_3
    invoke-direct {p0}, Lclo;->a()V

    .line 48
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 49
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v4

    aput-object p3, v2, v1

    const-string p1, "Failed to acquire connection after [%s %s]"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_4
    iget-object p1, v0, Lclm;->b:Lcky;

    return-object p1
.end method

.method public static a(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Lcky;
    .locals 4

    const-string v0, "Context object cannot be null."

    .line 8
    invoke-static {p0, v0}, Lcln;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lclo;->f:Lclo;

    if-nez v0, :cond_1

    const-class v1, Lclo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lclo;->f:Lclo;

    if-nez v0, :cond_0

    new-instance v0, Lclo;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lclo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lclo;->f:Lclo;

    sget-object p0, Lclo;->f:Lclo;

    .line 10
    invoke-direct {p0}, Lclo;->a()V

    goto :goto_0

    .line 19
    :cond_0
    nop

    .line 11
    :goto_0
    monitor-exit v1

    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 19
    :cond_1
    nop

    .line 12
    :goto_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq p0, v1, :cond_3

    .line 13
    invoke-direct {v0}, Lclo;->b()Lclm;

    move-result-object p0

    .line 14
    iget v1, p0, Lclm;->a:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    packed-switch v2, :pswitch_data_0

    invoke-static {v1}, Lcln;->a(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x10

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unknown state = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :pswitch_0
    invoke-direct {v0}, Lclo;->a()V

    .line 17
    invoke-direct {v0, p1, p2, p3}, Lclo;->a(JLjava/util/concurrent/TimeUnit;)Lcky;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_1
    iget-object p0, p0, Lclm;->b:Lcky;

    return-object p0

    .line 18
    :pswitch_2
    invoke-direct {v0, p1, p2, p3}, Lclo;->a(JLjava/util/concurrent/TimeUnit;)Lcky;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_3
    return-object v3

    .line 19
    :pswitch_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NOT_STARTED state only possible before instance is created."

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_2
    nop

    .line 14
    throw v3

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getService blocks and should not be called from the main thread."

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 22
    :try_start_0
    invoke-direct {p0}, Lclo;->b()Lclm;

    move-result-object v0

    .line 23
    iget v0, v0, Lclm;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "SucServiceProvider"

    const-string v1, "Refusing to rebind since current state is already connected"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    :try_start_1
    const-string v0, "SucServiceProvider"

    const-string v3, "Unbinding existing service connection."

    .line 25
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lclo;->d:Landroid/content/Context;

    iget-object v3, p0, Lclo;->b:Landroid/content/ServiceConnection;

    .line 26
    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lclo;->d:Landroid/content/Context;

    sget-object v3, Lclo;->a:Landroid/content/Intent;

    iget-object v4, p0, Lclo;->b:Landroid/content/ServiceConnection;

    .line 27
    invoke-virtual {v0, v3, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lclo;->c:Lclm;

    .line 32
    iget v0, v0, Lclm;->a:I

    if-eq v0, v1, :cond_2

    new-instance v0, Lclm;

    const/4 v1, 0x3

    .line 33
    invoke-direct {v0, v1}, Lclm;-><init>(I)V

    .line 34
    invoke-virtual {p0, v0}, Lclo;->a(Lclm;)V

    const-string v0, "SucServiceProvider"

    const-string v1, "Context#bindService went through, now waiting for service connection"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    .line 31
    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "SucServiceProvider"

    const-string v2, "Unable to bind to compat service"

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_3
    new-instance v0, Lclm;

    const/4 v1, 0x2

    .line 29
    invoke-direct {v0, v1}, Lclm;-><init>(I)V

    .line 30
    invoke-virtual {p0, v0}, Lclo;->a(Lclm;)V

    const-string v0, "SucServiceProvider"

    const-string v1, "Context#bindService did not succeed."

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized b()Lclm;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lclo;->c:Lclm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lclm;)V
    .locals 4

    const-string v0, "SucServiceProvider"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lclo;->c:Lclm;

    .line 36
    iget v3, v3, Lclm;->a:I

    invoke-static {v3}, Lcln;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lclm;->a:I

    invoke-static {v3}, Lcln;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 37
    const-string v2, "State changed: %s -> %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lclo;->c:Lclm;

    iget-object p1, p0, Lclo;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method
