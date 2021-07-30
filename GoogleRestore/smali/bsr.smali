.class final Lbsr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbsi;


# static fields
.field public static final a:Lcua;

.field static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final c:Landroid/app/Application;

.field public final d:Leip;

.field public final e:Leip;

.field public final f:Leip;

.field public final g:Leip;

.field public final h:Leip;

.field public final i:Leip;

.field public final j:Lbtp;

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;

.field public final l:Ljava/util/concurrent/CountDownLatch;

.field public final m:Leip;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbsr;->a:Lcua;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lbsr;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Leip;Leip;Leip;Leip;Leip;Lbtp;Leip;Lbse;Leip;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lbsr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lbsr;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 4
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lbsr;->l:Ljava/util/concurrent/CountDownLatch;

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    invoke-static {v2}, Lcrj;->b(Z)V

    iput-object p1, p0, Lbsr;->c:Landroid/app/Application;

    iput-object p2, p0, Lbsr;->d:Leip;

    iput-object p3, p0, Lbsr;->e:Leip;

    iput-object p4, p0, Lbsr;->f:Leip;

    iput-object p5, p0, Lbsr;->g:Leip;

    iput-object p6, p0, Lbsr;->h:Leip;

    iput-object p7, p0, Lbsr;->j:Lbtp;

    iput-object p10, p0, Lbsr;->i:Leip;

    iput-object p8, p0, Lbsr;->m:Leip;

    sget-object p1, Lbsr;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    invoke-virtual {v0, p9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lbsm;

    .line 12
    invoke-direct {p0, v0}, Lbsm;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object p0
.end method

.method static e()V
    .locals 1

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lbsr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lbrz;

    invoke-direct {v1}, Lbrz;-><init>()V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    .line 14
    invoke-interface {v0}, Lbsi;->a()V

    :try_start_0
    iget-object v0, p0, Lbsr;->c:Landroid/app/Application;

    const-class v1, Lbqy;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lbqy;->a:Lbqy;

    if-eqz v2, :cond_0

    sget-object v2, Lbqy;->a:Lbqy;

    iget-object v2, v2, Lbqy;->b:Lbra;

    iget-object v3, v2, Lbra;->b:Lbqz;

    .line 15
    invoke-virtual {v0, v3}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, v2, Lbra;->b:Lbqz;

    .line 16
    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 v0, 0x0

    sput-object v0, Lbqy;->a:Lbqy;

    .line 17
    :cond_0
    monitor-exit v1

    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lbsr;->a:Lcua;

    invoke-virtual {v1}, Lctx;->b()Lcup;

    move-result-object v1

    .line 18
    check-cast v1, Lctz;

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/Throwable;)V

    const-string v0, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    const-string v2, "shutdown"

    const/16 v3, 0x124

    const-string v4, "PrimesApiImpl.java"

    invoke-interface {v1, v0, v2, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Failed to shutdown app lifecycle monitor"

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 21
    invoke-virtual {p0}, Lbsr;->d()Lbsi;

    move-result-object v0

    invoke-interface {v0}, Lbsi;->b()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lbsr;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lbsr;->d()Lbsi;

    move-result-object v0

    invoke-interface {v0}, Lbsi;->c()V

    :cond_0
    return-void
.end method

.method final d()Lbsi;
    .locals 1

    iget-object v0, p0, Lbsr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    return-object v0
.end method
