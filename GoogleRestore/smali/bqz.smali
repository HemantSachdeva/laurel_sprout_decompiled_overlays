.class final Lbqz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:Ljava/lang/Boolean;

.field private volatile i:Ljava/lang/String;

.field private volatile j:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lbqz;->a:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbqz;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbqz;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbqz;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbqz;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbqz;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbqz;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private final a(Landroid/app/Activity;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbum;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lbqz;->a(Ljava/lang/Boolean;Landroid/app/Activity;)V

    return-void
.end method

.method private final a(Ljava/lang/Boolean;Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lbqz;->h:Ljava/lang/Boolean;

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AppLifecycleTracker.java"

    const-string v2, "setForegroundState"

    const-string v3, "com/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks"

    if-eqz v0, :cond_0

    sget-object p2, Lbra;->a:Lcua;

    invoke-virtual {p2}, Lctx;->f()Lcup;

    move-result-object p2

    .line 44
    check-cast p2, Lctz;

    const/16 v0, 0xf5

    invoke-interface {p2, v3, v2, v0, v1}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "App foreground state unchanged: inForeground ? %b"

    invoke-interface {p2, v0, p1}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p1, p0, Lbqz;->h:Ljava/lang/Boolean;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lbra;->a:Lcua;

    invoke-virtual {p1}, Lctx;->f()Lcup;

    move-result-object p1

    .line 50
    check-cast p1, Lctz;

    const/16 v0, 0xfa

    invoke-interface {p1, v3, v2, v0, v1}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "App transition to foreground"

    invoke-interface {p1, v0}, Lctz;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lbqz;->a:Ljava/util/List;

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqx;

    .line 52
    instance-of v1, v0, Lbqv;

    if-eqz v1, :cond_1

    .line 53
    check-cast v0, Lbqv;

    invoke-interface {v0, p2}, Lbqv;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lbra;->a:Lcua;

    invoke-virtual {p1}, Lctx;->f()Lcup;

    move-result-object p1

    .line 46
    check-cast p1, Lctz;

    const/16 v0, 0x101

    invoke-interface {p1, v3, v2, v0, v1}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "App transition to background"

    invoke-interface {p1, v0}, Lctz;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lbqz;->a:Ljava/util/List;

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqx;

    .line 48
    instance-of v1, v0, Lbqu;

    if-eqz v1, :cond_3

    .line 49
    check-cast v0, Lbqu;

    invoke-interface {v0, p2}, Lbqu;->b(Landroid/app/Activity;)V

    goto :goto_1

    .line 53
    :cond_4
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lbqz;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 p1, 0x0

    iput-object p1, p0, Lbqz;->j:Landroid/app/Activity;

    iget-object p1, p0, Lbqz;->a:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbqx;

    .line 11
    instance-of v0, p2, Lbqn;

    if-eqz v0, :cond_0

    .line 12
    check-cast p2, Lbqn;

    invoke-interface {p2}, Lbqn;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object p1, p0, Lbqz;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 p1, 0x0

    iput-object p1, p0, Lbqz;->j:Landroid/app/Activity;

    iget-object p1, p0, Lbqz;->a:Ljava/util/List;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqx;

    .line 15
    instance-of v1, v0, Lbqo;

    if-eqz v1, :cond_0

    .line 16
    check-cast v0, Lbqo;

    invoke-interface {v0}, Lbqo;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lbqz;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x0

    iput-object v0, p0, Lbqz;->i:Ljava/lang/String;

    iget-object v0, p0, Lbqz;->a:Ljava/util/List;

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbqx;

    .line 19
    instance-of v2, v1, Lbqp;

    if-eqz v2, :cond_0

    .line 20
    check-cast v1, Lbqp;

    invoke-interface {v1, p1}, Lbqp;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lbqz;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x0

    iput-object v0, p0, Lbqz;->j:Landroid/app/Activity;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbqz;->i:Ljava/lang/String;

    iget-object v0, p0, Lbqz;->a:Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbqx;

    .line 24
    instance-of v2, v1, Lbqq;

    if-eqz v2, :cond_0

    .line 25
    check-cast v1, Lbqq;

    invoke-interface {v1, p1}, Lbqq;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lbqz;->a:Ljava/util/List;

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbqx;

    .line 27
    instance-of v0, p2, Lbqr;

    if-eqz v0, :cond_0

    .line 28
    check-cast p2, Lbqr;

    invoke-interface {p2}, Lbqr;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lbqz;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x0

    iput-object v0, p0, Lbqz;->j:Landroid/app/Activity;

    .line 30
    invoke-direct {p0, p1}, Lbqz;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lbqz;->a:Ljava/util/List;

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbqx;

    .line 32
    instance-of v2, v1, Lbqs;

    if-eqz v2, :cond_0

    .line 33
    check-cast v1, Lbqs;

    invoke-interface {v1, p1}, Lbqs;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lbqz;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput-object p1, p0, Lbqz;->j:Landroid/app/Activity;

    iget-object v0, p0, Lbqz;->a:Ljava/util/List;

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbqx;

    .line 36
    instance-of v2, v1, Lbqt;

    if-eqz v2, :cond_0

    .line 37
    check-cast v1, Lbqt;

    invoke-interface {v1}, Lbqt;->a()V

    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0, p1}, Lbqz;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    iget-object v0, p0, Lbqz;->a:Ljava/util/List;

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbqx;

    .line 40
    instance-of v2, v1, Lbqw;

    if-eqz v2, :cond_0

    .line 41
    check-cast v1, Lbqw;

    invoke-interface {v1}, Lbqw;->a()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lbqz;->j:Landroid/app/Activity;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lbqz;->j:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lbqz;->a(Ljava/lang/Boolean;Landroid/app/Activity;)V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lbqz;->j:Landroid/app/Activity;

    return-void
.end method
