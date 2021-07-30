.class public final Lwb;
.super Lvu;
.source "PG"


# instance fields
.field final synthetic a:Lwc;


# direct methods
.method public constructor <init>(Lwc;)V
    .locals 0

    iput-object p1, p0, Lwb;->a:Lwc;

    invoke-direct {p0}, Lvu;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    .line 2
    sget p2, Lwe;->b:I

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lwe;

    iget-object p2, p0, Lwb;->a:Lwc;

    iget-object p2, p2, Lwc;->g:Lvz;

    iput-object p2, p1, Lwe;->a:Lvz;

    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    iget-object p1, p0, Lwb;->a:Lwc;

    iget v0, p1, Lwc;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lwc;->b:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lwc;->d:Landroid/os/Handler;

    iget-object p1, p1, Lwc;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    new-instance p2, Lwa;

    .line 5
    invoke-direct {p2, p0}, Lwa;-><init>(Lwb;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lwb;->a:Lwc;

    iget v0, p1, Lwc;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lwc;->a:I

    .line 6
    invoke-virtual {p1}, Lwc;->d()V

    return-void
.end method
