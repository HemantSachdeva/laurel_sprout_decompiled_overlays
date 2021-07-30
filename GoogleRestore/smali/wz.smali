.class public final Lwz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lwy;

.field private final b:Lxa;


# direct methods
.method private constructor <init>(Lxa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwz;->b:Lxa;

    new-instance p1, Lwy;

    .line 1
    invoke-direct {p1}, Lwy;-><init>()V

    iput-object p1, p0, Lwz;->a:Lwy;

    return-void
.end method

.method public static a(Lxa;)Lwz;
    .locals 1

    new-instance v0, Lwz;

    .line 2
    invoke-direct {v0, p0}, Lwz;-><init>(Lxa;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lwz;->b:Lxa;

    .line 3
    invoke-interface {v0}, Lxa;->ab()Lj;

    move-result-object v0

    iget-object v1, v0, Lj;->a:Li;

    .line 4
    sget-object v2, Li;->b:Li;

    if-ne v1, v2, :cond_2

    .line 5
    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Lwz;->b:Lxa;

    .line 6
    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Lxa;)V

    invoke-virtual {v0, v1}, Lj;->a(Lvx;)V

    iget-object v1, p0, Lwz;->a:Lwy;

    iget-boolean v2, v1, Lwy;->c:Z

    if-nez v2, :cond_1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    const-string v2, "android.arch.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v1, Lwy;->b:Landroid/os/Bundle;

    :cond_0
    new-instance p1, Landroidx/savedstate/SavedStateRegistry$1;

    .line 9
    invoke-direct {p1, v1}, Landroidx/savedstate/SavedStateRegistry$1;-><init>(Lwy;)V

    invoke-virtual {v0, p1}, Lj;->a(Lvx;)V

    const/4 p1, 0x1

    iput-boolean p1, v1, Lwy;->c:Z

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    const-string v0, "SavedStateRegistry was already restored."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lwz;->a:Lwy;

    new-instance v1, Landroid/os/Bundle;

    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lwy;->b:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, v0, Lwy;->a:Lta;

    .line 12
    invoke-virtual {v0}, Lta;->a()Lsx;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v0}, Lsx;->a()Ljava/util/Map$Entry;

    move-result-object v2

    check-cast v2, Lsw;

    iget-object v3, v2, Lsw;->a:Ljava/lang/Object;

    .line 14
    check-cast v3, Ljava/lang/String;

    .line 13
    iget-object v2, v2, Lsw;->b:Ljava/lang/Object;

    .line 14
    check-cast v2, Lwx;

    invoke-interface {v2}, Lwx;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    nop

    .line 15
    const-string v0, "android.arch.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
