.class public final Landroid/arch/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lk;


# instance fields
.field public final a:Lz;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/SavedStateHandleController;->c:Z

    iput-object p1, p0, Landroid/arch/lifecycle/SavedStateHandleController;->b:Ljava/lang/String;

    iput-object p2, p0, Landroid/arch/lifecycle/SavedStateHandleController;->a:Lz;

    return-void
.end method

.method public static a(Lac;Lwy;Lj;)V
    .locals 2

    iget-object v0, p0, Lac;->b:Ljava/util/Map;

    const-string v1, "android.arch.lifecycle.savedstate.vm.tag"

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lac;->b:Ljava/util/Map;

    .line 1
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    check-cast p0, Landroid/arch/lifecycle/SavedStateHandleController;

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/arch/lifecycle/SavedStateHandleController;->c:Z

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/arch/lifecycle/SavedStateHandleController;->a(Lwy;Lj;)V

    .line 5
    invoke-static {p1, p2}, Landroid/arch/lifecycle/SavedStateHandleController;->b(Lwy;Lj;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static b(Lwy;Lj;)V
    .locals 2

    iget-object v0, p1, Lj;->a:Li;

    .line 11
    sget-object v1, Li;->b:Li;

    if-eq v0, v1, :cond_1

    sget-object v1, Li;->d:Li;

    invoke-virtual {v0, v1}, Li;->a(Li;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Landroid/arch/lifecycle/SavedStateHandleController$1;

    .line 13
    invoke-direct {v0, p1, p0}, Landroid/arch/lifecycle/SavedStateHandleController$1;-><init>(Lj;Lwy;)V

    invoke-virtual {p1, v0}, Lj;->a(Lvx;)V

    return-void

    .line 11
    :cond_1
    :goto_0
    const-class p1, Laa;

    .line 12
    invoke-virtual {p0, p1}, Lwy;->a(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Ll;Lh;)V
    .locals 1

    .line 9
    sget-object v0, Lh;->f:Lh;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/arch/lifecycle/SavedStateHandleController;->c:Z

    .line 10
    invoke-interface {p1}, Ll;->ab()Lj;

    move-result-object p1

    invoke-virtual {p1, p0}, Lj;->b(Lvx;)V

    :cond_0
    return-void
.end method

.method public final a(Lwy;Lj;)V
    .locals 1

    iget-boolean v0, p0, Landroid/arch/lifecycle/SavedStateHandleController;->c:Z

    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/lifecycle/SavedStateHandleController;->c:Z

    .line 7
    invoke-virtual {p2, p0}, Lj;->a(Lvx;)V

    iget-object p2, p0, Landroid/arch/lifecycle/SavedStateHandleController;->b:Ljava/lang/String;

    iget-object v0, p0, Landroid/arch/lifecycle/SavedStateHandleController;->a:Lz;

    iget-object v0, v0, Lz;->d:Lwx;

    .line 8
    invoke-virtual {p1, p2, v0}, Lwy;->a(Ljava/lang/String;Lwx;)V

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 6
    const-string p2, "Already attached to lifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
