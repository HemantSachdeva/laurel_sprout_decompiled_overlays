.class public final Lwe;
.super Landroid/app/Fragment;
.source "PG"


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Lvz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 11
    new-instance v0, Lwd;

    invoke-direct {v0}, Lwd;-><init>()V

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 14
    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lwe;

    invoke-direct {v2}, Lwe;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 16
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method

.method static a(Landroid/app/Activity;Lh;)V
    .locals 1

    .line 2
    instance-of v0, p0, Ln;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ln;

    invoke-interface {p0}, Ln;->a()Lj;

    move-result-object p0

    invoke-virtual {p0, p1}, Lj;->a(Lh;)V

    return-void

    .line 4
    :cond_0
    instance-of v0, p0, Ll;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ll;

    invoke-interface {p0}, Ll;->ab()Lj;

    move-result-object p0

    .line 6
    instance-of v0, p0, Lj;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lj;->a(Lh;)V

    :cond_1
    return-void
.end method

.method private final a(Lh;)V
    .locals 2

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Lwe;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lwe;->a(Landroid/app/Activity;Lh;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 18
    sget-object p1, Lh;->a:Lh;

    invoke-direct {p0, p1}, Lwe;->a(Lh;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 19
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 20
    sget-object v0, Lh;->f:Lh;

    invoke-direct {p0, v0}, Lwe;->a(Lh;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lwe;->a:Lvz;

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 21
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 22
    sget-object v0, Lh;->d:Lh;

    invoke-direct {p0, v0}, Lwe;->a(Lh;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 23
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lwe;->a:Lvz;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lvz;->a:Lwc;

    .line 24
    invoke-virtual {v0}, Lwc;->c()V

    .line 25
    :cond_0
    sget-object v0, Lh;->c:Lh;

    invoke-direct {p0, v0}, Lwe;->a(Lh;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lwe;->a:Lvz;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lvz;->a:Lwc;

    .line 27
    invoke-virtual {v0}, Lwc;->a()V

    .line 28
    :cond_0
    sget-object v0, Lh;->b:Lh;

    invoke-direct {p0, v0}, Lwe;->a(Lh;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 30
    sget-object v0, Lh;->e:Lh;

    invoke-direct {p0, v0}, Lwe;->a(Lh;)V

    return-void
.end method
