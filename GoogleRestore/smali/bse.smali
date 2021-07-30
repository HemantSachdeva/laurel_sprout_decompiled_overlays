.class final Lbse;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbsi;


# static fields
.field public static final a:Lcua;


# instance fields
.field public volatile b:Lbrb;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/PreInitPrimesApi"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbse;->a:Lcua;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lbse;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lbse;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lbse;->e:Ljava/util/Queue;

    return-void
.end method

.method private final a(Lbsd;)V
    .locals 2

    iget-object v0, p0, Lbse;->e:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbse;->b:Lbrb;

    if-nez v1, :cond_0

    iget-object v1, p0, Lbse;->e:Ljava/util/Queue;

    .line 7
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lbse;->b:Lbrb;

    .line 8
    invoke-interface {p1, v1}, Lbsd;->a(Lbrb;)V

    .line 9
    :goto_0
    monitor-exit v0

    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lbse;->e:Ljava/util/Queue;

    .line 10
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final a(Lbrb;)V
    .locals 1

    iget-object v0, p0, Lbse;->e:Ljava/util/Queue;

    .line 4
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsd;

    :goto_0
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lbsd;->a(Lbrb;)V

    iget-object v0, p0, Lbse;->e:Ljava/util/Queue;

    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsd;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lbsa;->a:Lbsd;

    .line 15
    invoke-direct {p0, v0}, Lbse;->a(Lbsd;)V

    return-void
.end method

.method public final c()V
    .locals 4

    .line 11
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lbsc;

    iget-object v2, p0, Lbse;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lbse;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-direct {v1, v0, v2, v3}, Lbsc;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 13
    invoke-direct {p0, v1}, Lbse;->a(Lbsd;)V

    .line 14
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
