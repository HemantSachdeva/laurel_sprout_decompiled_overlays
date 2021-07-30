.class public final Lann;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lacw;

.field private static d:Lann;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private f:Ljava/lang/Runnable;

.field private final g:Lbes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PhenotypeSyncHelper"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lann;->a:Lacw;

    return-void
.end method

.method private constructor <init>(Lbes;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lann;->c:I

    iput-object p1, p0, Lann;->g:Lbes;

    iput-object p2, p0, Lann;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Activity;)Lann;
    .locals 3

    const-class v0, Lann;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lann;->d:Lann;

    if-nez v1, :cond_0

    new-instance v1, Lann;

    .line 28
    invoke-static {p0}, Lbmk;->a(Landroid/app/Activity;)Lbes;

    move-result-object p0

    const/16 v2, 0x9

    .line 29
    invoke-static {v2}, Laqq;->a(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lann;-><init>(Lbes;Ljava/util/concurrent/ThreadPoolExecutor;)V

    sput-object v1, Lann;->d:Lann;

    :cond_0
    sget-object p0, Lann;->d:Lann;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lann;
    .locals 3

    const-class v0, Lann;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lann;->d:Lann;

    if-nez v1, :cond_0

    new-instance v1, Lann;

    .line 30
    invoke-static {p0}, Lbmk;->a(Landroid/content/Context;)Lbes;

    move-result-object p0

    const/16 v2, 0x9

    .line 31
    invoke-static {v2}, Laqq;->a(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lann;-><init>(Lbes;Ljava/util/concurrent/ThreadPoolExecutor;)V

    sput-object v1, Lann;->d:Lann;

    :cond_0
    sget-object p0, Lann;->d:Lann;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lbpi;
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Lann;->c:I

    iget-object v0, p0, Lann;->g:Lbes;

    invoke-static {}, Lbha;->a()Lbgz;

    move-result-object v1

    new-instance v2, Lbmm;

    .line 11
    invoke-direct {v2, p1}, Lbmm;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lbgz;->a:Lbgs;

    .line 12
    invoke-virtual {v1}, Lbgz;->a()Lbha;

    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lbes;->a(Lbha;)Lbpi;

    move-result-object p1

    new-instance v0, Lanh;

    .line 14
    invoke-direct {v0, p0}, Lanh;-><init>(Lann;)V

    .line 15
    invoke-virtual {p1, v0}, Lbpi;->a(Lbox;)V

    new-instance v0, Lani;

    invoke-direct {v0, p0}, Lani;-><init>(Lann;)V

    .line 16
    invoke-virtual {p1, v0}, Lbpi;->a(Lbpd;)V

    new-instance v0, Lanj;

    invoke-direct {v0, p0}, Lanj;-><init>(Lann;)V

    .line 17
    invoke-virtual {p1, v0}, Lbpi;->a(Lbpa;)V

    return-object p1
.end method

.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lann;->g:Lbes;

    .line 18
    invoke-static {}, Laqg;->a()Ljava/lang/String;

    move-result-object v1

    .line 19
    sget-object v2, Lbdz;->c:Lbdz;

    iget-object v3, v0, Lbes;->b:Landroid/content/Context;

    const v4, 0xbdfcb8

    .line 20
    invoke-virtual {v2, v3, v4}, Lbdz;->a(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lbha;->a()Lbgz;

    move-result-object v2

    new-instance v3, Lbmn;

    .line 22
    invoke-direct {v3, v1}, Lbmn;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lbgz;->a:Lbgs;

    .line 23
    invoke-virtual {v2}, Lbgz;->a()Lbha;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lbes;->a(Lbha;)Lbpi;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lbep;

    .line 21
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v0, v1}, Lbep;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {v0}, Lbqb;->a(Ljava/lang/Exception;)Lbpi;

    move-result-object v0

    .line 24
    :goto_0
    sget-object v1, Lank;->a:Lbpd;

    .line 25
    invoke-virtual {v0, v1}, Lbpi;->a(Lbpd;)V

    sget-object v1, Lanl;->a:Lbpa;

    .line 26
    invoke-virtual {v0, v1}, Lbpi;->a(Lbpa;)V

    iget-object v1, p0, Lann;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lanm;

    .line 27
    invoke-direct {v2, p0, v0}, Lanm;-><init>(Lann;Lbpi;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ILjava/lang/Runnable;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lann;->f:Ljava/lang/Runnable;

    iget p2, p0, Lann;->c:I

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    sget-object p1, Lann;->a:Lacw;

    const-string p2, "Phenotype already registered and committed."

    new-array v0, v1, [Ljava/lang/Object;

    .line 33
    invoke-virtual {p1, p2, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lann;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :try_start_1
    sget-object p1, Lann;->a:Lacw;

    const-string p2, "Phenotype registering in progress."

    new-array v0, v1, [Ljava/lang/Object;

    .line 35
    invoke-virtual {p1, p2, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    :try_start_2
    sget-object p1, Lann;->a:Lacw;

    const-string p2, "Phenotype committing in progress."

    new-array v0, v1, [Ljava/lang/Object;

    .line 36
    invoke-virtual {p1, p2, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    :try_start_3
    iget-object p1, p0, Lann;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Lane;

    .line 37
    invoke-direct {p2, p0}, Lane;-><init>(Lann;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    iput v0, p0, Lann;->c:I

    iget-object p2, p0, Lann;->g:Lbes;

    .line 38
    invoke-static {}, Laqg;->a()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "ANDROID_BACKUP"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v3, "ANDROID_MIGRATE"

    aput-object v3, v0, v1

    invoke-static {}, Lbha;->a()Lbgz;

    move-result-object v1

    new-instance v3, Lbml;

    .line 39
    invoke-direct {v3, v2, p1, v0}, Lbml;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    iput-object v3, v1, Lbgz;->a:Lbgs;

    .line 40
    invoke-virtual {v1}, Lbgz;->a()Lbha;

    move-result-object p1

    .line 41
    invoke-virtual {p2, p1}, Lbes;->a(Lbha;)Lbpi;

    move-result-object p1

    new-instance p2, Lanf;

    .line 42
    invoke-direct {p2, p0}, Lanf;-><init>(Lann;)V

    .line 43
    sget-object v0, Lbpo;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Lbpi;->b(Ljava/util/concurrent/Executor;Lbom;)Lbpi;

    move-result-object p1

    iget-object p2, p0, Lann;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lang;

    .line 44
    invoke-direct {v0, p0, p1}, Lang;-><init>(Lann;Lbpi;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lbpi;)V
    .locals 6

    .line 2
    :try_start_0
    sget-object v0, Land;->a:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lann;->a:Lacw;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Waiting for task(s) to complete (timeout: %d ms)."

    invoke-virtual {v2, v4, v3}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lbqb;->a(Lbpi;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1}, Lbpi;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lann;->b()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 5
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    sget-object v1, Lann;->a:Lacw;

    .line 6
    invoke-virtual {v1, v0}, Laqd;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-virtual {p1}, Lbpi;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v1, Lann;->a:Lacw;

    .line 9
    invoke-virtual {v1, v0}, Laqd;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    invoke-virtual {p1}, Lbpi;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    goto :goto_0

    :cond_0
    return-void

    .line 7
    :goto_2
    invoke-virtual {p1}, Lbpi;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    invoke-virtual {p0}, Lann;->b()V

    .line 10
    :goto_3
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lann;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lann;->f:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
