.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ldfj;

.field static b:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final h:J

.field private static final i:Ljava/util/regex/Pattern;


# instance fields
.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ldbb;

.field public final e:Ldeu;

.field public final f:Ldef;

.field public final g:Ldez;

.field private final j:Ldga;

.field private k:Z

.field private final l:Ldec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/FirebaseInstanceId;->h:J

    .line 2
    const-string v0, "\\AA[\\w-]{38}\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->i:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ldbb;Lddf;Ldgz;Lddi;Ldga;)V
    .locals 10

    new-instance v2, Ldeu;

    .line 3
    invoke-virtual {p1}, Ldbb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Ldeu;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lddr;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 5
    invoke-static {}, Lddr;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->k:Z

    .line 6
    invoke-static {p1}, Ldeu;->a(Ldbb;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->a:Ldfj;

    if-nez v1, :cond_0

    new-instance v1, Ldfj;

    .line 8
    invoke-virtual {p1}, Ldbb;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Ldfj;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->a:Ldfj;

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    iput-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Ldeu;

    new-instance v9, Ldef;

    new-instance v3, Ldfg;

    .line 10
    invoke-virtual {p1}, Ldbb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ldfg;-><init>(Landroid/content/Context;Ldeu;)V

    .line 11
    move-object v0, v9

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ldef;-><init>(Ldbb;Ldeu;Ldfg;Ldgz;Lddi;Ldga;)V

    iput-object v9, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->f:Ldef;

    iput-object v8, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->c:Ljava/util/concurrent/Executor;

    new-instance p1, Ldec;

    .line 12
    invoke-direct {p1, p0, p2}, Ldec;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lddf;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->l:Ldec;

    new-instance p1, Ldez;

    .line 13
    invoke-direct {p1, v7}, Ldez;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->g:Ldez;

    iput-object p5, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Ldga;

    new-instance p1, Lddv;

    .line 14
    invoke-direct {p1, p0}, Lddv;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    invoke-interface {v8, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1

    .line 54
    invoke-static {}, Ldbb;->d()Ldbb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Ldbb;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ldbb;)V
    .locals 2

    .line 25
    invoke-virtual {p0}, Ldbb;->c()Ldbd;

    move-result-object v0

    iget-object v0, v0, Ldbd;->d:Ljava/lang/String;

    .line 26
    const-string v1, "Please set your project ID. A valid Firebase project ID is required to communicate with Firebase server APIs: It identifies your project with Google."

    invoke-static {v0, v1}, Lbir;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Ldbb;->c()Ldbd;

    move-result-object v0

    iget-object v0, v0, Ldbd;->b:Ljava/lang/String;

    .line 28
    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase."

    invoke-static {v0, v1}, Lbir;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Ldbb;->c()Ldbd;

    move-result-object v0

    iget-object v0, v0, Ldbd;->a:Ljava/lang/String;

    .line 30
    const-string v1, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google."

    invoke-static {v0, v1}, Lbir;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Ldbb;->c()Ldbd;

    move-result-object v0

    iget-object v0, v0, Ldbd;->b:Ljava/lang/String;

    .line 32
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 33
    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lbir;->b(ZLjava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Ldbb;->c()Ldbd;

    move-result-object p0

    iget-object p0, p0, Ldbd;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->i:Ljava/util/regex/Pattern;

    .line 35
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    .line 36
    const-string v0, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {p0, v0}, Lbir;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public static getInstance(Ldbb;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ldbb;)V

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 56
    invoke-virtual {p0, v0}, Ldbb;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/iid/FirebaseInstanceId;

    return-object p0
.end method

.method public static i()V
    .locals 2

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ldfi;
    .locals 2

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->a:Ldfj;

    .line 60
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ldfj;->a(Ljava/lang/String;Ljava/lang/String;)Ldfi;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lbpi;)Ljava/lang/Object;
    .locals 3

    const-wide/16 v0, 0x7530

    .line 15
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lbqb;->a(Lbpi;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 21
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p1, Ljava/io/IOException;

    .line 16
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :catch_2
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 18
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "INSTANCE_ID_RESET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->f()V

    .line 21
    :cond_0
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 22
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 23
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 16
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 24
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x1e

    add-long v2, p1, p1

    .line 70
    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/iid/FirebaseInstanceId;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    new-instance v2, Ldfl;

    .line 71
    invoke-direct {v2, p0, v0, v1}, Ldfl;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;J)V

    .line 72
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 4

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lbjl;

    const-string v3, "FirebaseInstanceId"

    invoke-direct {v2, v3}, Lbjl;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ldfi;)Z
    .locals 7

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Ldeu;

    .line 73
    invoke-virtual {v0}, Ldeu;->c()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Ldfi;->d:J

    sget-wide v5, Ldfi;->a:J

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    iget-object p1, p1, Ldfi;->c:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->e()Ldfi;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ldfi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->c()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->k:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->a:Ldfj;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 40
    invoke-virtual {v1}, Ldbb;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldfj;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Ldga;

    .line 41
    invoke-interface {v0}, Ldga;->d()Lbpi;

    move-result-object v0

    const-string v1, "Task must not be null"

    .line 42
    invoke-static {v0, v1}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    .line 43
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v2, Lddx;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lddy;

    .line 44
    invoke-direct {v3, v1}, Lddy;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2, v3}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbox;)V

    const-wide/16 v2, 0x7530

    .line 45
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 46
    invoke-virtual {v0}, Lbpi;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Lbpi;->d()Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {v0}, Lbpi;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    invoke-virtual {v0}, Lbpi;->a()Z

    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 51
    invoke-virtual {v0}, Lbpi;->e()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Firebase Installations getId Task has timed out."

    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 53
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final e()Ldfi;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 59
    invoke-static {v0}, Ldeu;->a(Ldbb;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/String;)Ldfi;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->a:Ldfj;

    .line 63
    invoke-virtual {v0}, Ldfj;->b()V

    .line 64
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->l:Ldec;

    .line 62
    invoke-virtual {v0}, Ldec;->b()Z

    move-result v0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 57
    invoke-virtual {v0}, Ldbb;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 58
    invoke-virtual {v0}, Ldbb;->g()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0
.end method
