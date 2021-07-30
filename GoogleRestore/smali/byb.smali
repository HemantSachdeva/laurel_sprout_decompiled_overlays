.class final Lbyb;
.super Lbxx;
.source "PG"

# interfaces
.implements Lbvt;


# static fields
.field public static final a:Lcua;


# instance fields
.field public final b:Landroid/app/Application;

.field public final c:Leip;

.field public final d:Lbvq;

.field public final e:Lbyj;

.field private final f:Lczw;

.field private g:Lbxw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/memory/MemoryMetricServiceImpl"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbyb;->a:Lcua;

    return-void
.end method

.method public constructor <init>(Lbvr;Landroid/app/Application;Lczw;Leip;Lbyj;)V
    .locals 2

    invoke-direct {p0}, Lbxx;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lbxq;->a:Lbxq;

    .line 1
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Lbxy;

    .line 3
    invoke-direct {v0, p4}, Lbxy;-><init>(Leip;)V

    .line 4
    invoke-static {v0}, Lcbh;->a(Leip;)Lcbh;

    move-result-object v0

    .line 5
    invoke-virtual {p1, p3, v0}, Lbvr;->a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;

    move-result-object p1

    iput-object p1, p0, Lbyb;->d:Lbvq;

    iput-object p2, p0, Lbyb;->b:Landroid/app/Application;

    iput-object p3, p0, Lbyb;->f:Lczw;

    iput-object p4, p0, Lbyb;->c:Leip;

    iput-object p5, p0, Lbyb;->e:Lbyj;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbyb;->g:Lbxw;

    if-nez v0, :cond_1

    new-instance v0, Lbxz;

    .line 8
    invoke-direct {v0, p0}, Lbxz;-><init>(Lbyb;)V

    new-instance v1, Lbxw;

    iget-object v2, p0, Lbyb;->b:Landroid/app/Application;

    iget-object v3, p0, Lbyb;->f:Lczw;

    .line 9
    invoke-direct {v1, v0, v2, v3}, Lbxw;-><init>(Lbxz;Landroid/app/Application;Lczw;)V

    iput-object v1, p0, Lbyb;->g:Lbxw;

    iget-object v0, v1, Lbxw;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbxw;->a:Lcua;

    invoke-virtual {v0}, Lctx;->b()Lcup;

    move-result-object v0

    .line 11
    check-cast v0, Lctz;

    const-string v1, "com/google/android/libraries/performance/primes/metrics/memory/MemoryMetricMonitor"

    const-string v2, "start"

    const/16 v3, 0x6b

    const-string v4, "MemoryMetricMonitor.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Memory Monitor has already started. This MemoryMetricMonitor.start() is ignored."

    invoke-interface {v0, v1}, Lctz;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, v1, Lbxw;->f:Lbqy;

    iget-object v2, v1, Lbxw;->g:Lbqu;

    .line 12
    invoke-virtual {v0, v2}, Lbqy;->a(Lbqx;)V

    iget-object v0, v1, Lbxw;->f:Lbqy;

    iget-object v1, v1, Lbxw;->h:Lbqv;

    .line 13
    invoke-virtual {v0, v1}, Lbqy;->a(Lbqx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .line 7
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbyb;->g:Lbxw;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lbxw;->f:Lbqy;

    iget-object v2, v0, Lbxw;->g:Lbqu;

    .line 6
    invoke-virtual {v1, v2}, Lbqy;->b(Lbqx;)V

    iget-object v1, v0, Lbxw;->f:Lbqy;

    iget-object v0, v0, Lbxw;->h:Lbqv;

    .line 7
    invoke-virtual {v1, v0}, Lbqy;->b(Lbqx;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbyb;->g:Lbxw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 5
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
