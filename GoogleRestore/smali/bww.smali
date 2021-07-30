.class final Lbww;
.super Lbwq;
.source "PG"

# interfaces
.implements Lbqu;
.implements Lbvt;


# static fields
.field private static final b:Lcua;


# instance fields
.field final a:Ljava/util/Map;

.field private final c:Landroid/app/Application;

.field private final d:Lbqy;

.field private final e:Lbwu;

.field private final f:Leip;

.field private final g:Lcrm;

.field private final h:Lbvq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbww;->b:Lcua;

    return-void
.end method

.method public constructor <init>(Lbvr;Landroid/app/Application;Lbxb;Leip;Lczw;)V
    .locals 0

    invoke-direct {p0}, Lbwq;-><init>()V

    new-instance p3, Ljava/util/HashMap;

    .line 1
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lbww;->a:Ljava/util/Map;

    .line 2
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p3, 0x1

    invoke-static {p3}, Lcrj;->b(Z)V

    new-instance p3, Lbwr;

    .line 3
    invoke-direct {p3, p4}, Lbwr;-><init>(Leip;)V

    .line 4
    invoke-static {p3}, Lcbh;->a(Leip;)Lcbh;

    move-result-object p3

    .line 5
    invoke-virtual {p1, p5, p3}, Lbvr;->a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;

    move-result-object p1

    iput-object p1, p0, Lbww;->h:Lbvq;

    iput-object p2, p0, Lbww;->c:Landroid/app/Application;

    iput-object p4, p0, Lbww;->f:Leip;

    .line 6
    invoke-static {p2}, Lbqy;->a(Landroid/app/Application;)Lbqy;

    move-result-object p1

    iput-object p1, p0, Lbww;->d:Lbqy;

    new-instance p3, Lbws;

    .line 7
    invoke-direct {p3, p2}, Lbws;-><init>(Landroid/app/Application;)V

    .line 8
    invoke-static {p3}, Lcrq;->a(Lcrm;)Lcrm;

    move-result-object p2

    iput-object p2, p0, Lbww;->g:Lcrm;

    .line 9
    new-instance p2, Lbwu;

    new-instance p3, Lbwt;

    invoke-direct {p3, p0}, Lbwt;-><init>(Lbww;)V

    check-cast p4, Lbrk;

    .line 10
    invoke-virtual {p4}, Lbrk;->b()Lbxd;

    move-result-object p4

    iget-boolean p4, p4, Lbxd;->a:Z

    .line 11
    invoke-direct {p2, p3, p4}, Lbwu;-><init>(Lbwv;Z)V

    iput-object p2, p0, Lbww;->e:Lbwu;

    .line 12
    invoke-virtual {p1, p2}, Lbqy;->a(Lbqx;)V

    return-void
.end method

.method static synthetic a()Lcua;
    .locals 1

    sget-object v0, Lbww;->b:Lcua;

    return-object v0
.end method

.method static final synthetic a(Landroid/app/Application;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lbwp;->a(Landroid/app/Application;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic a(Leip;)Ljava/lang/Integer;
    .locals 0

    check-cast p0, Lbrk;

    invoke-virtual {p0}, Lbrk;->b()Lbxd;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lbww;->a:Ljava/util/Map;

    .line 21
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbww;->a:Ljava/util/Map;

    .line 22
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbxa;

    iget-object v3, p0, Lbww;->g:Lcrm;

    .line 23
    invoke-interface {v3}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lbxa;->a(II)V

    goto :goto_0

    .line 24
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static synthetic a(Lbww;I)V
    .locals 0

    invoke-direct {p0, p1}, Lbww;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lbww;->a:Ljava/util/Map;

    .line 25
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbww;->a:Ljava/util/Map;

    .line 26
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lbww;->b:Lcua;

    invoke-virtual {v1}, Lctx;->b()Lcup;

    move-result-object v1

    .line 27
    check-cast v1, Lctz;

    const-string v2, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl"

    const-string v3, "startMeasurement"

    const/16 v4, 0xfe

    const-string v5, "FrameMetricServiceImpl.java"

    invoke-interface {v1, v2, v3, v4, v5}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "measurement already started: %s"

    invoke-interface {v1, v2, p1}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lbww;->a:Ljava/util/Map;

    .line 29
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x19

    if-lt v1, v2, :cond_1

    sget-object v1, Lbww;->b:Lcua;

    invoke-virtual {v1}, Lctx;->b()Lcup;

    move-result-object v1

    .line 30
    check-cast v1, Lctz;

    const-string v2, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl"

    const-string v3, "startMeasurement"

    const/16 v4, 0x102

    const-string v5, "FrameMetricServiceImpl.java"

    invoke-interface {v1, v2, v3, v4, v5}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "Too many concurrent measurements, ignoring %s"

    invoke-interface {v1, v2, p1}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lbww;->a:Ljava/util/Map;

    .line 32
    new-instance v2, Lbwy;

    invoke-direct {v2}, Lbwy;-><init>()V

    .line 33
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lbww;->a:Ljava/util/Map;

    .line 34
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lbww;->f:Leip;

    check-cast v1, Lbrk;

    .line 35
    invoke-virtual {v1}, Lbrk;->b()Lbxd;

    move-result-object v1

    iget-boolean v1, v1, Lbxd;->a:Z

    if-nez v1, :cond_2

    sget-object v1, Lbww;->b:Lcua;

    invoke-virtual {v1}, Lctx;->d()Lcup;

    move-result-object v1

    .line 36
    check-cast v1, Lctz;

    const-string v2, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl"

    const-string v3, "startMeasurement"

    const/16 v4, 0x107

    const-string v5, "FrameMetricServiceImpl.java"

    invoke-interface {v1, v2, v3, v4, v5}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "starting measurement: %s"

    invoke-interface {v1, v2, p1}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbww;->e:Lbwu;

    .line 37
    invoke-virtual {p1}, Lbwu;->a()V

    .line 38
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;ZLekw;)V
    .locals 5

    iget-object p2, p0, Lbww;->a:Ljava/util/Map;

    .line 39
    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lbww;->a:Ljava/util/Map;

    .line 40
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbxa;

    iget-object v0, p0, Lbww;->a:Ljava/util/Map;

    .line 41
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbww;->f:Leip;

    check-cast v0, Lbrk;

    .line 42
    invoke-virtual {v0}, Lbrk;->b()Lbxd;

    move-result-object v0

    iget-boolean v0, v0, Lbxd;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbww;->e:Lbwu;

    .line 43
    invoke-virtual {v0}, Lbwu;->b()V

    .line 44
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_1

    sget-object p2, Lbww;->b:Lcua;

    invoke-virtual {p2}, Lctx;->b()Lcup;

    move-result-object p2

    .line 45
    check-cast p2, Lctz;

    const-string p3, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl"

    const-string v0, "stopMeasurement"

    const/16 v1, 0x11d

    const-string v2, "FrameMetricServiceImpl.java"

    invoke-interface {p2, p3, v0, v1, v2}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string p3, "Measurement not found: %s"

    invoke-interface {p2, p3, p1}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p3}, Lbxa;->a()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 46
    :cond_2
    sget-object p2, Lepj;->w:Lepj;

    .line 47
    invoke-virtual {p2}, Ldkd;->g()Ldjy;

    move-result-object p2

    .line 48
    invoke-interface {p3}, Lbxa;->b()Leom;

    move-result-object p3

    const/4 v0, 0x5

    .line 49
    invoke-virtual {p3, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjy;

    .line 50
    invoke-virtual {v0, p3}, Ldjy;->a(Ldkd;)V

    iget-object p3, p0, Lbww;->c:Landroid/app/Application;

    .line 51
    invoke-static {p3}, Lbwp;->b(Landroid/app/Application;)I

    move-result p3

    iget-boolean v1, v0, Ldjy;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 52
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_3
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 53
    check-cast v1, Leom;

    sget-object v3, Leom;->h:Leom;

    iget v3, v1, Leom;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Leom;->a:I

    iput p3, v1, Leom;->g:I

    iget-boolean p3, p2, Ldjy;->b:Z

    if-eqz p3, :cond_4

    .line 54
    invoke-virtual {p2}, Ldjy;->b()V

    iput-boolean v2, p2, Ldjy;->b:Z

    :cond_4
    iget-object p3, p2, Ldjy;->a:Ldkd;

    .line 55
    check-cast p3, Lepj;

    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Leom;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p3, Lepj;->k:Leom;

    iget v0, p3, Lepj;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p3, Lepj;->a:I

    iget-object p3, p0, Lbww;->f:Leip;

    check-cast p3, Lbrk;

    .line 57
    invoke-virtual {p3}, Lbrk;->b()Lbxd;

    .line 58
    const/4 p3, 0x0

    move-object v0, p3

    check-cast v0, Leip;

    if-eqz v0, :cond_5

    .line 59
    :try_start_1
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekw;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    sget-object v1, Lbww;->b:Lcua;

    invoke-virtual {v1}, Lctx;->b()Lcup;

    move-result-object v1

    .line 60
    check-cast v1, Lctz;

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/Throwable;)V

    const-string v0, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl"

    const-string v2, "stopMeasurement"

    const/16 v3, 0x12f

    const-string v4, "FrameMetricServiceImpl.java"

    invoke-interface {v1, v0, v2, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Exception while getting jank metric extension!"

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/String;)V

    move-object v0, p3

    goto :goto_0

    .line 64
    :cond_5
    move-object v0, p3

    .line 59
    :goto_0
    nop

    .line 61
    sget-object v1, Lekw;->a:Lekw;

    invoke-virtual {v1, v0}, Ldkd;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_6

    goto :goto_1

    :cond_6
    move-object p3, v0

    :goto_1
    iget-object v0, p0, Lbww;->h:Lbvq;

    .line 62
    invoke-virtual {p2}, Ldjy;->f()Ldkd;

    move-result-object p2

    check-cast p2, Lepj;

    .line 63
    invoke-virtual {v0, p1, v2, p2, p3}, Lbvq;->a(Ljava/lang/String;ZLepj;Lekw;)Lczu;

    move-result-object p1

    .line 64
    invoke-static {p1}, Lbte;->a(Lczu;)V

    return-void

    :catchall_0
    move-exception p1

    .line 44
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lbww;->d:Lbqy;

    iget-object v1, p0, Lbww;->e:Lbwu;

    .line 16
    invoke-virtual {v0, v1}, Lbqy;->b(Lbqx;)V

    iget-object v0, p0, Lbww;->e:Lbwu;

    .line 17
    invoke-virtual {v0}, Lbwu;->c()V

    iget-object v0, p0, Lbww;->a:Ljava/util/Map;

    .line 18
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbww;->a:Ljava/util/Map;

    .line 19
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lbww;->a:Ljava/util/Map;

    .line 13
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lbww;->a:Ljava/util/Map;

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 15
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
