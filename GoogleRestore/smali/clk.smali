.class public final Lclk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static e:Lclk;

.field private static final f:J


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lclk;->f:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclk;->a:Landroid/content/Context;

    .line 2
    sget-object p1, Lclc;->a:Lclc;

    iget-object p1, p1, Lclc;->c:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lclk;->b:Ljava/util/concurrent/ExecutorService;

    sget-object p1, Lclc;->b:Lclc;

    iget-object p1, p1, Lclc;->c:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lclk;->c:Ljava/util/concurrent/ExecutorService;

    sget-wide v0, Lclk;->f:J

    iput-wide v0, p0, Lclk;->d:J

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lclk;
    .locals 2

    const-class v0, Lclk;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lclk;->e:Lclk;

    if-nez v1, :cond_0

    new-instance v1, Lclk;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lclk;-><init>(Landroid/content/Context;)V

    sput-object v1, Lclk;->e:Lclk;

    :cond_0
    sget-object p0, Lclk;->e:Lclk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 5
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lclk;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcli;

    .line 25
    invoke-direct {v1, p0, p1, p2}, Lcli;-><init>(Lclk;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Metric of type %d dropped since queue is full."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SucServiceInvoker"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lclk;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lclj;

    .line 3
    invoke-direct {v1, p0, p1, p2}, Lclj;-><init>(Lclk;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4
    const-string p1, "Screen %s bind back fail."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SucServiceInvoker"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final b(ILandroid/os/Bundle;)V
    .locals 5

    const-string v0, "SucServiceInvoker"

    :try_start_0
    iget-object v1, p0, Lclk;->a:Landroid/content/Context;

    iget-wide v2, p0, Lclk;->d:J

    .line 15
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-static {v1, v2, v3, v4}, Lclo;->a(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Lcky;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 18
    invoke-virtual {v1}, Lact;->h()Landroid/os/Parcel;

    move-result-object v3

    .line 19
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    invoke-static {v3, p2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 21
    invoke-static {v3, v2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 22
    invoke-virtual {v1, p1, v3}, Lact;->c(ILandroid/os/Parcel;)V

    return-void

    :cond_0
    const-string p1, "logMetric failed since service reference is null. Are the permissions valid?"

    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 24
    const-string p2, "Exception occurred while trying to log metric = [%s]"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "SucServiceInvoker"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lclk;->a:Landroid/content/Context;

    iget-wide v3, p0, Lclk;->d:J

    .line 6
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-static {v2, v3, v4, v5}, Lclo;->a(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Lcky;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2}, Lact;->h()Landroid/os/Parcel;

    move-result-object v3

    .line 9
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    invoke-static {v3, p2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 11
    invoke-virtual {v2, v1, v3}, Lact;->c(ILandroid/os/Parcel;)V

    return-void

    :cond_0
    const-string p2, "BindBack failed since service reference is null. Are the permissions valid?"

    .line 12
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 13
    const-string p1, "Exception occurred while %s trying bind back to SetupWizard."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
