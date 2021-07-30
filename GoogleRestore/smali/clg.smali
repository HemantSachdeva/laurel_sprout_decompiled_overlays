.class public final Lclg;
.super Landroid/app/Fragment;
.source "PG"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/android/setupcompat/logging/MetricKey;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lclg;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lclg;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lclg;->d:J

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lclg;->setRetainInstance(Z)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 5

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcne;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lclk;->a(Landroid/content/Context;)Lclk;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lchi;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    .line 7
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-static {p0}, Lchi;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "screenName"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intentAction"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1, v2}, Lclk;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    const-string v1, "lifecycle_monitor"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Lclg;

    .line 15
    invoke-direct {v3}, Lclg;-><init>()V

    .line 16
    :try_start_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitNow()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    sget-object v1, Lclg;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x27

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error occurred when attach to Activity:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 19
    :cond_0
    instance-of v0, v2, Lclg;

    if-eqz v0, :cond_1

    .line 20
    :goto_0
    check-cast v2, Lclg;

    return-void

    .line 19
    :cond_1
    sget-object v0, Lclg;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " Incorrect instance on lifecycle fragment."

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Lclg;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "ScreenDuration"

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/logging/MetricKey;->a(Ljava/lang/String;Landroid/app/Activity;)Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object p1

    iput-object p1, p0, Lclg;->b:Lcom/google/android/setupcompat/logging/MetricKey;

    return-void
.end method

.method public final onDetach()V
    .locals 7

    .line 25
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 26
    invoke-virtual {p0}, Lclg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lclg;->b:Lcom/google/android/setupcompat/logging/MetricKey;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lclg;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 27
    const-string v4, "Context cannot be null."

    invoke-static {v0, v4}, Lcln;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-string v4, "Timer name cannot be null."

    invoke-static {v1, v4}, Lcln;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 28
    :goto_0
    nop

    .line 29
    const-string v5, "Duration cannot be negative."

    invoke-static {v4, v5}, Lcln;->a(ZLjava/lang/String;)V

    .line 30
    invoke-static {v0}, Lclk;->a(Landroid/content/Context;)Lclk;

    move-result-object v0

    new-instance v4, Landroid/os/Bundle;

    .line 31
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 32
    invoke-static {v1}, Lcom/google/android/setupcompat/logging/MetricKey;->a(Lcom/google/android/setupcompat/logging/MetricKey;)Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "MetricKey_bundle"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    const-string v1, "timeMillis"

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x2

    .line 34
    invoke-virtual {v0, v1, v4}, Lclk;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final onPause()V
    .locals 6

    .line 35
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-wide v0, p0, Lclg;->d:J

    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lclg;->c:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lclg;->d:J

    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 37
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lclg;->c:J

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-string v3, "onScreenResume"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 42
    invoke-virtual {p0}, Lclg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lclg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ScreenActivity"

    invoke-static {v3, v2}, Lcom/google/android/setupcompat/logging/MetricKey;->a(Ljava/lang/String;Landroid/app/Activity;)Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/setupcompat/logging/CustomEvent;->a(Lcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;)Lcom/google/android/setupcompat/logging/CustomEvent;

    move-result-object v0

    .line 44
    invoke-static {v1, v0}, Lcls;->a(Landroid/content/Context;Lcom/google/android/setupcompat/logging/CustomEvent;)V

    :cond_0
    return-void
.end method
