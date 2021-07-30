.class final Lbuw;
.super Lcne;
.source "PG"

# interfaces
.implements Lbtm;
.implements Lbqv;
.implements Lbqu;
.implements Lbvt;


# static fields
.field public static final a:Lcua;


# instance fields
.field public final b:Lczw;

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Lbvj;

.field public final e:Lbup;

.field public final f:Leip;

.field public final g:Lbvq;

.field private final h:Landroid/app/Application;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Lcbh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/battery/BatteryMetricServiceImpl"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbuw;->a:Lcua;

    return-void
.end method

.method public constructor <init>(Lbvr;Landroid/app/Application;Lczw;Leip;Lbvj;Lbup;)V
    .locals 2

    invoke-direct {p0}, Lcne;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lbuw;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lbuw;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    iput-object v0, p0, Lbuw;->j:Lcbh;

    .line 4
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5
    sget-object v1, Lczj;->a:Lczj;

    .line 6
    invoke-virtual {p1, v1, v0}, Lbvr;->a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;

    move-result-object p1

    iput-object p1, p0, Lbuw;->g:Lbvq;

    iput-object p2, p0, Lbuw;->h:Landroid/app/Application;

    iput-object p3, p0, Lbuw;->b:Lczw;

    iput-object p5, p0, Lbuw;->d:Lbvj;

    iput-object p6, p0, Lbuw;->e:Lbup;

    iput-object p4, p0, Lbuw;->f:Leip;

    return-void
.end method

.method private final a(Leiw;)Lczu;
    .locals 2

    iget-object v0, p0, Lbuw;->g:Lbvq;

    new-instance v1, Lbuu;

    .line 7
    invoke-direct {v1, p0, p1}, Lbuu;-><init>(Lbuw;Leiw;)V

    invoke-virtual {v0, v1}, Lbvq;->a(Lczc;)Lczu;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbuw;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lbuw;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbuw;->h:Landroid/app/Application;

    .line 24
    invoke-static {v0}, Lbqy;->a(Landroid/app/Application;)Lbqy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbqy;->a(Lbqx;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    iget-object p1, p0, Lbuw;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lbuw;->h:Landroid/app/Application;

    .line 15
    invoke-static {p1}, Lbqg;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 16
    sget-object p1, Lczr;->a:Lczu;

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lbuw;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lbuw;->a:Lcua;

    invoke-virtual {p1}, Lctx;->b()Lcup;

    move-result-object p1

    .line 18
    check-cast p1, Lctz;

    const/16 v0, 0x76

    const-string v1, "com/google/android/libraries/performance/primes/metrics/battery/BatteryMetricServiceImpl"

    const-string v2, "onAppToForeground"

    const-string v3, "BatteryMetricServiceImpl.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "App is already in the foreground."

    invoke-interface {p1, v0}, Lctz;->a(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Ldab;->a()Lczu;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_1
    sget-object p1, Leiw;->c:Leiw;

    invoke-direct {p0, p1}, Lbuw;->a(Leiw;)Lczu;

    move-result-object p1

    .line 21
    :goto_0
    invoke-static {p1}, Lbte;->a(Lczu;)V

    return-void

    .line 20
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lbuw;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbuw;->h:Landroid/app/Application;

    .line 26
    invoke-static {v0}, Lbqy;->a(Landroid/app/Application;)Lbqy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbqy;->b(Lbqx;)V

    :cond_0
    iget-object v0, p0, Lbuw;->d:Lbvj;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbuw;->d:Lbvj;

    iget-object v1, v1, Lbvj;->a:Lcbb;

    const-string v2, "primes.battery.snapshot"

    .line 27
    invoke-static {}, Lcqt;->b()V

    iget-object v3, v1, Lcbb;->b:Landroid/app/Application;

    .line 28
    invoke-static {v3}, Lbqg;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcbb;->c:Leip;

    .line 29
    invoke-interface {v1}, Leip;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lbuw;->h:Landroid/app/Application;

    .line 8
    invoke-static {p1}, Lbqg;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    sget-object p1, Lczr;->a:Lczu;

    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    iget-object p1, p0, Lbuw;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    invoke-static {p1}, Lcrj;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    sget-object p1, Leiw;->b:Leiw;

    invoke-direct {p0, p1}, Lbuw;->a(Leiw;)Lczu;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Ldab;->a(Ljava/lang/Throwable;)Lczu;

    move-result-object p1

    .line 13
    :goto_0
    invoke-static {p1}, Lbte;->a(Lczu;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
