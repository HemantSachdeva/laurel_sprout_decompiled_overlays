.class final Lbwl;
.super Lbwf;
.source "PG"

# interfaces
.implements Lbvt;
.implements Lbtm;


# static fields
.field public static final a:Lcua;


# instance fields
.field volatile b:Lbry;

.field public final c:Landroid/app/Application;

.field public final d:Lczw;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lbvq;

.field public final g:Lcbh;

.field volatile h:Lbwi;

.field private final i:Z

.field private final j:I

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Lbqy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbwl;->a:Lcua;

    return-void
.end method

.method public constructor <init>(Lbvr;Landroid/app/Application;Lczw;Leip;)V
    .locals 4

    invoke-direct {p0}, Lbwf;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lbwl;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    iput-object v0, p0, Lbwl;->g:Lcbh;

    check-cast p4, Lbrh;

    .line 3
    invoke-virtual {p4}, Lbrh;->b()Lbwe;

    move-result-object p4

    .line 4
    sget-object v1, Lczj;->a:Lczj;

    .line 5
    invoke-virtual {p1, v1, v0}, Lbvr;->a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;

    move-result-object p1

    iput-object p1, p0, Lbwl;->f:Lbvq;

    iput-object p2, p0, Lbwl;->c:Landroid/app/Application;

    iput-object p3, p0, Lbwl;->d:Lczw;

    iget p1, p4, Lbwe;->a:F

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    nop

    .line 6
    const-string v2, "StartupSamplePercentage should be a floating number > 0 and <= 100."

    invoke-static {v1, v2}, Lcrj;->a(ZLjava/lang/Object;)V

    .line 7
    invoke-static {p2}, Lbqy;->a(Landroid/app/Application;)Lbqy;

    move-result-object v1

    iput-object v1, p0, Lbwl;->l:Lbqy;

    .line 8
    invoke-static {}, Lbwe;->a()Lbwd;

    move-result-object v1

    invoke-virtual {v1}, Lbwd;->a()Lbwe;

    move-result-object v1

    iget v1, v1, Lbwe;->a:F

    div-float v2, p1, v1

    .line 9
    invoke-static {v2}, Lcbf;->a(F)Lcbf;

    move-result-object v2

    iget-object v3, v2, Lcbf;->b:Ljava/util/Random;

    .line 10
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v2, v2, Lcbf;->a:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 12
    :cond_1
    const/4 v2, 0x0

    .line 10
    :goto_1
    iput-boolean v2, p0, Lbwl;->i:Z

    div-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, p0, Lbwl;->j:I

    iget-object p1, p4, Lbwe;->b:Lcbn;

    .line 11
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean p4, p4, Lbwe;->c:Z

    if-eqz p4, :cond_2

    .line 12
    invoke-static {p2}, Lbum;->c(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lbwl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    new-instance v0, Lbwk;

    .line 54
    invoke-direct {v0, p0, p1}, Lbwk;-><init>(Lbwl;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0
.end method

.method public final a()V
    .locals 5

    sget-object v0, Lbwl;->a:Lcua;

    invoke-virtual {v0}, Lctx;->d()Lcup;

    move-result-object v0

    .line 16
    check-cast v0, Lctz;

    const-string v1, "com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl"

    const-string v2, "onFirstActivityCreated"

    const/16 v3, 0x11d

    const-string v4, "CrashMetricServiceImpl.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lctz;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbwl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    sget-object v0, Lepb;->d:Lepb;

    .line 19
    invoke-static {}, Lcqt;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lbwg;

    .line 20
    invoke-direct {v1, p0, v0}, Lbwg;-><init>(Lbwl;Lepb;)V

    iget-object v0, p0, Lbwl;->d:Lczw;

    .line 21
    invoke-static {v1, v0}, Ldab;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lczu;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lbte;->a(Lczu;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Lbwl;->a(Lepb;)V

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Lbwi;

    .line 23
    invoke-direct {v0, p0}, Lbwi;-><init>(Lbwl;)V

    iput-object v0, p0, Lbwl;->h:Lbwi;

    iget-object v0, p0, Lbwl;->l:Lbqy;

    iget-object v1, p0, Lbwl;->h:Lbwi;

    .line 24
    invoke-virtual {v0, v1}, Lbqy;->a(Lbqx;)V

    return-void
.end method

.method final a(Lbry;)V
    .locals 5

    sget-object v0, Lbwl;->a:Lcua;

    invoke-virtual {v0}, Lctx;->d()Lcup;

    move-result-object v0

    .line 49
    check-cast v0, Lctz;

    const-string v1, "com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl"

    const-string v2, "setActiveComponentName"

    const/16 v3, 0x104

    const-string v4, "CrashMetricServiceImpl.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p1}, Lbry;->a(Lbry;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activeComponentName: %s"

    invoke-interface {v0, v2, v1}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lbwl;->b:Lbry;

    return-void
.end method

.method public final a(Lepb;)V
    .locals 5

    iget-boolean v0, p0, Lbwl;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbwl;->g:Lcbh;

    .line 46
    invoke-virtual {v0}, Lcbh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lbwl;->b(Lepb;)V

    return-void

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lbwl;->a:Lcua;

    invoke-virtual {v0}, Lctx;->c()Lcup;

    move-result-object v0

    .line 47
    check-cast v0, Lctz;

    const/16 v1, 0x13b

    const-string v2, "com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl"

    const-string v3, "sendStartupCountEventFromBackgroundThread"

    const-string v4, "CrashMetricServiceImpl.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Startup metric for \'%s\' dropped."

    invoke-interface {v0, v1, p1}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lbwl;->h:Lbwi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwl;->l:Lbqy;

    iget-object v1, p0, Lbwl;->h:Lbwi;

    .line 29
    invoke-virtual {v0, v1}, Lbqy;->b(Lbqx;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbwl;->h:Lbwi;

    :cond_0
    iget-object v0, p0, Lbwl;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lbwk;

    if-eqz v0, :cond_1

    .line 32
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    check-cast v0, Lbwk;

    .line 33
    iget-object v0, v0, Lbwk;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 34
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    return-void
.end method

.method final b(Lepb;)V
    .locals 6

    .line 35
    sget-object v0, Lepj;->w:Lepj;

    .line 36
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    .line 37
    sget-object v1, Lepc;->d:Lepc;

    .line 38
    invoke-virtual {v1}, Ldkd;->g()Ldjy;

    move-result-object v1

    iget v2, p0, Lbwl;->j:I

    iget-boolean v3, v1, Ldjy;->b:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v4, v1, Ldjy;->b:Z

    :cond_0
    iget-object v3, v1, Ldjy;->a:Ldkd;

    .line 40
    check-cast v3, Lepc;

    iget v5, v3, Lepc;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v3, Lepc;->a:I

    iput v2, v3, Lepc;->c:I

    iget p1, p1, Lepb;->f:I

    iput p1, v3, Lepc;->b:I

    or-int/lit8 p1, v5, 0x1

    iput p1, v3, Lepc;->a:I

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_1
    iget-object p1, v0, Ldjy;->a:Ldkd;

    .line 42
    check-cast p1, Lepj;

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Lepc;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lepj;->h:Lepc;

    iget v1, p1, Lepj;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p1, Lepj;->a:I

    .line 44
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Lepj;

    iget-object v0, p0, Lbwl;->f:Lbvq;

    .line 45
    invoke-virtual {v0, p1}, Lbvq;->a(Lepj;)V

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lbwl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lbwl;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbwl;->g:Lcbh;

    .line 26
    invoke-virtual {v0}, Lcbh;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, Lepb;->c:Lepb;

    invoke-virtual {p0, v0}, Lbwl;->b(Lepb;)V

    return-void

    .line 26
    :cond_2
    :goto_0
    sget-object v0, Lbwl;->a:Lcua;

    invoke-virtual {v0}, Lctx;->c()Lcup;

    move-result-object v0

    .line 27
    check-cast v0, Lctz;

    const/16 v1, 0xfc

    const-string v2, "com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl"

    const-string v3, "onInitialize"

    const-string v4, "CrashMetricServiceImpl.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Startup metric for \'PRIMES_CRASH_MONITORING_INITIALIZED\' dropped."

    invoke-interface {v0, v1}, Lctz;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lbwl;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lbwl;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lbwl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lepb;->c:Lepb;

    invoke-virtual {p0, v0}, Lbwl;->b(Lepb;)V

    sget-object v0, Lepb;->d:Lepb;

    .line 15
    invoke-virtual {p0, v0}, Lbwl;->b(Lepb;)V

    :cond_0
    return-void
.end method
