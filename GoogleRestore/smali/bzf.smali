.class public final Lbzf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final a:Landroid/app/Application;

.field final synthetic b:Lbzh;


# direct methods
.method public constructor <init>(Lbzh;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lbzf;->b:Lbzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbzf;->a:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p2, p0, Lbzf;->b:Lbzh;

    iget-object p2, p2, Lbzh;->j:Lbzc;

    iget-object p2, p2, Lbzc;->b:Ljava/lang/Long;

    if-nez p2, :cond_0

    iget-object p2, p0, Lbzf;->b:Lbzh;

    iget-object p2, p2, Lbzh;->j:Lbzc;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lbzf;->b:Lbzh;

    iget-object p2, p2, Lbzh;->k:Lbzc;

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lbzc;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p2, Lbzc;->b:Ljava/lang/Long;

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lbzf;->b:Lbzh;

    iget-object v0, v0, Lbzh;->k:Lbzc;

    iget-object v0, v0, Lbzc;->b:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbzf;->b:Lbzh;

    iget-object v0, v0, Lbzh;->j:Lbzc;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lbzf;->b:Lbzh;

    iget-object v0, v0, Lbzh;->k:Lbzc;

    .line 0
    :goto_0
    iget-object v1, v0, Lbzc;->d:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbzc;->d:Ljava/lang/Long;

    :cond_1
    const v0, 0x1020002

    .line 5
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lbze;

    .line 7
    invoke-direct {v1, p0, p1}, Lbze;-><init>(Lbzf;Landroid/view/View;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lbzh;->a:Lcua;

    invoke-virtual {v0}, Lctx;->d()Lcup;

    move-result-object v0

    .line 9
    check-cast v0, Lctz;

    invoke-interface {v0, p1}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 p1, 0x110

    const-string v1, "com/google/android/libraries/performance/primes/metrics/startup/StartupMeasure$StartupCallbacks"

    const-string v2, "onActivityResumed"

    const-string v3, "StartupMeasure.java"

    invoke-interface {v0, v1, v2, p1, v3}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "Error handling StartupMeasure\'s onActivityResume"

    invoke-interface {v0, p1}, Lctz;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object p1, p0, Lbzf;->b:Lbzh;

    iget-object p1, p1, Lbzh;->k:Lbzc;

    iget-object p1, p1, Lbzc;->b:Ljava/lang/Long;

    if-nez p1, :cond_0

    iget-object p1, p0, Lbzf;->b:Lbzh;

    iget-object p1, p1, Lbzh;->j:Lbzc;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lbzf;->b:Lbzh;

    iget-object p1, p1, Lbzh;->k:Lbzc;

    .line 0
    :goto_0
    iget-object v0, p1, Lbzc;->c:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lbzc;->c:Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
