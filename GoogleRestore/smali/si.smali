.class public Lsi;
.super Ldj;
.source "PG"

# interfaces
.implements Ll;
.implements Lak;
.implements Lg;
.implements Lxa;
.implements Lsm;


# instance fields
.field private final a:Lwz;

.field private b:Laj;

.field private c:Lae;

.field private final d:Lsp;

.field private final e:Lj;

.field public final i:Lsl;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ldj;-><init>()V

    new-instance v0, Lj;

    .line 2
    invoke-direct {v0, p0}, Lj;-><init>(Ll;)V

    iput-object v0, p0, Lsi;->e:Lj;

    .line 3
    invoke-static {p0}, Lwz;->a(Lxa;)Lwz;

    move-result-object v1

    iput-object v1, p0, Lsi;->a:Lwz;

    new-instance v1, Lsl;

    new-instance v2, Lsg;

    .line 4
    invoke-direct {v2, p0}, Lsg;-><init>(Lsi;)V

    invoke-direct {v1, v2}, Lsl;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lsi;->i:Lsl;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v1, Lsp;

    .line 6
    invoke-direct {v1}, Lsp;-><init>()V

    iput-object v1, p0, Lsi;->d:Lsp;

    if-eqz v0, :cond_0

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Landroidx/activity/ComponentActivity$3;

    .line 9
    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Lsi;)V

    invoke-virtual {v0, v1}, Lj;->a(Lvx;)V

    new-instance v1, Landroidx/activity/ComponentActivity$4;

    .line 10
    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$4;-><init>(Lsi;)V

    invoke-virtual {v0, v1}, Lj;->a(Lvx;)V

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lsi;)V
    .locals 0

    invoke-super {p0}, Ldj;->onBackPressed()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lsi;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Ley;->a(Landroid/view/View;Ll;)V

    .line 24
    invoke-virtual {p0}, Lsi;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Ley;->a(Landroid/view/View;Lak;)V

    .line 25
    invoke-virtual {p0}, Lsi;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lyj;->a(Landroid/view/View;Lxa;)V

    return-void
.end method


# virtual methods
.method public final R()Lae;
    .locals 3

    .line 14
    invoke-virtual {p0}, Lsi;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lsi;->c:Lae;

    if-nez v0, :cond_1

    .line 16
    new-instance v0, Lab;

    .line 17
    invoke-virtual {p0}, Lsi;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lsi;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lsi;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, p0, v2}, Lab;-><init>(Landroid/app/Application;Lxa;Landroid/os/Bundle;)V

    iput-object v0, p0, Lsi;->c:Lae;

    :cond_1
    iget-object v0, p0, Lsi;->c:Lae;

    return-object v0

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ab()Lj;
    .locals 1

    iget-object v0, p0, Lsi;->e:Lj;

    return-object v0
.end method

.method public final ac()Laj;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lsi;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lsi;->b:Laj;

    if-nez v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lsi;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsh;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lsh;->a:Laj;

    iput-object v0, p0, Lsi;->b:Laj;

    :cond_0
    iget-object v0, p0, Lsi;->b:Laj;

    if-nez v0, :cond_1

    new-instance v0, Laj;

    .line 22
    invoke-direct {v0}, Laj;-><init>()V

    iput-object v0, p0, Lsi;->b:Laj;

    :cond_1
    iget-object v0, p0, Lsi;->b:Laj;

    return-object v0

    .line 19
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lsi;->d()V

    .line 13
    invoke-super {p0, p1, p2}, Ldj;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final m()Lwy;
    .locals 1

    iget-object v0, p0, Lsi;->a:Lwz;

    iget-object v0, v0, Lwz;->a:Lwy;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lsi;->d:Lsp;

    .line 26
    invoke-virtual {v0, p1, p2, p3}, Lsp;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-super {p0, p1, p2, p3}, Ldj;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lsi;->i:Lsl;

    .line 28
    invoke-virtual {v0}, Lsl;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 29
    invoke-super {p0, p1}, Ldj;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lsi;->a:Lwz;

    .line 30
    invoke-virtual {v0, p1}, Lwz;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lsi;->d:Lsp;

    if-nez p1, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    nop

    .line 31
    const-string v1, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 32
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 34
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Lsp;->b:Ljava/util/Map;

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lsp;->c:Ljava/util/Map;

    .line 36
    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lsp;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, v0, Lsp;->d:Landroid/os/Bundle;

    .line 38
    const-string v1, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 40
    :cond_2
    :goto_1
    invoke-static {p0}, Lwe;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lsi;->d:Lsp;

    new-instance v1, Landroid/content/Intent;

    .line 41
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 42
    const-string v2, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 43
    const-string v2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    .line 41
    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Lsp;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    invoke-super {p0, p1, p2, p3}, Ldj;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lsi;->b:Laj;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lsi;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsh;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lsh;->a:Laj;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Lsh;

    invoke-direct {v1}, Lsh;-><init>()V

    iput-object v0, v1, Lsh;->a:Laj;

    return-object v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lsi;->e:Lj;

    .line 47
    instance-of v1, v0, Lj;

    if-eqz v1, :cond_0

    .line 48
    sget-object v1, Li;->c:Li;

    .line 49
    invoke-virtual {v0, v1}, Lj;->a(Li;)V

    .line 50
    :cond_0
    invoke-super {p0, p1}, Ldj;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lsi;->a:Lwz;

    .line 51
    invoke-virtual {v0, p1}, Lwz;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lsi;->d:Lsp;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lsp;->b:Ljava/util/Map;

    .line 52
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lsp;->b:Ljava/util/Map;

    .line 54
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, v0, Lsp;->d:Landroid/os/Bundle;

    .line 56
    const-string v1, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lsi;->d()V

    .line 58
    invoke-super {p0, p1}, Ldj;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lsi;->d()V

    .line 60
    invoke-super {p0, p1}, Ldj;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lsi;->d()V

    .line 62
    invoke-super {p0, p1, p2}, Ldj;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
