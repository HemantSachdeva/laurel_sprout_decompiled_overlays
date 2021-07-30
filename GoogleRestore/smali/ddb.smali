.class public final Lddb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbkj;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lbkj;

    .line 2
    invoke-direct {v1, v0}, Lbkj;-><init>(Ljava/lang/Boolean;)V

    sput-object v1, Lddb;->a:Lbkj;

    new-instance v0, Lbkj;

    .line 3
    invoke-direct {v0}, Lbkj;-><init>()V

    .line 4
    const-string v0, "crash:log_buffer_capacity"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lbkj;->a(Ljava/lang/String;I)V

    .line 5
    const-string v0, "crash:log_buffer_max_total_size"

    const v2, 0x8000

    invoke-static {v0, v2}, Lbkj;->a(Ljava/lang/String;I)V

    .line 6
    const-string v0, "crash:crash_backlog_capacity"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lbkj;->a(Ljava/lang/String;I)V

    .line 7
    const-string v0, "crash:crash_backlog_max_age"

    const-wide/32 v3, 0x240c8400

    invoke-static {v0, v3, v4}, Lbkj;->a(Ljava/lang/String;J)V

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-string v0, "crash:starting_backoff"

    invoke-static {v0, v3, v4}, Lbkj;->a(Ljava/lang/String;J)V

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 11
    const-wide/16 v3, 0x3c

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-string v0, "crash:backoff_limit"

    invoke-static {v0, v3, v4}, Lbkj;->a(Ljava/lang/String;J)V

    .line 12
    const-string v0, "crash:retry_num_attempts"

    const/16 v3, 0xc

    invoke-static {v0, v3}, Lbkj;->a(Ljava/lang/String;I)V

    .line 13
    const-string v0, "crash:batch_size"

    invoke-static {v0, v2}, Lbkj;->a(Ljava/lang/String;I)V

    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 15
    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-string v0, "crash:batch_throttle"

    invoke-static {v0, v2, v3}, Lbkj;->a(Ljava/lang/String;J)V

    .line 16
    const-string v0, "crash:frame_depth"

    const/16 v2, 0x3c

    invoke-static {v0, v2}, Lbkj;->a(Ljava/lang/String;I)V

    .line 17
    const-string v0, "crash:receiver_delay"

    invoke-static {v0, v1}, Lbkj;->a(Ljava/lang/String;I)V

    .line 18
    const-string v0, "crash:thread_idle_timeout"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lbkj;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 3

    .line 19
    invoke-static {}, Lbkp;->b()Lbkl;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lbkl;->a:Z

    if-eqz v1, :cond_0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 20
    :cond_0
    :try_start_1
    sget-object v1, Lbkg;->d:Lbkf;

    const-string v2, "com.google.android.gms.flags"

    .line 21
    invoke-static {p0, v1, v2}, Lbkg;->a(Landroid/content/Context;Lbkf;Ljava/lang/String;)Lbkg;

    move-result-object v1

    const-string v2, "com.google.android.gms.flags.impl.FlagProviderImpl"

    .line 22
    invoke-virtual {v1, v2}, Lbkg;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lbkn;->asInterface(Landroid/os/IBinder;)Lbko;

    move-result-object v1

    iput-object v1, v0, Lbkl;->b:Lbko;

    iget-object v1, v0, Lbkl;->b:Lbko;

    .line 24
    invoke-static {p0}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object p0

    invoke-interface {v1, p0}, Lbko;->init(Lbjr;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lbkl;->a:Z
    :try_end_1
    .catch Lbkc; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 26
    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    const-string v1, "FlagValueProvider"

    const-string v2, "Failed to initialize flags module."

    .line 25
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
