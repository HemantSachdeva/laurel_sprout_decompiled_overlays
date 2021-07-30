.class public Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
.super Lr;
.source "PG"

# interfaces
.implements Lk;


# instance fields
.field final a:Ll;

.field final synthetic b:Ls;


# direct methods
.method public constructor <init>(Ls;Ll;Lw;)V
    .locals 0

    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->b:Ls;

    .line 1
    invoke-direct {p0, p1, p3}, Lr;-><init>(Ls;Lw;)V

    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Ll;

    return-void
.end method


# virtual methods
.method public final a(Ll;Lh;)V
    .locals 1

    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Ll;

    .line 3
    invoke-interface {p1}, Ll;->ab()Lj;

    move-result-object p1

    iget-object p1, p1, Lj;->a:Li;

    .line 4
    sget-object p2, Li;->a:Li;

    if-eq p1, p2, :cond_1

    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a()Z

    move-result p2

    invoke-virtual {p0, p2}, Lr;->a(Z)V

    iget-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Ll;

    .line 6
    invoke-interface {p2}, Ll;->ab()Lj;

    move-result-object p2

    iget-object p2, p2, Lj;->a:Li;

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->b:Ls;

    iget-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->c:Lw;

    .line 7
    invoke-virtual {p1, p2}, Ls;->b(Lw;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Ll;

    .line 8
    invoke-interface {v0}, Ll;->ab()Lj;

    move-result-object v0

    iget-object v0, v0, Lj;->a:Li;

    sget-object v1, Li;->d:Li;

    invoke-virtual {v0, v1}, Li;->a(Li;)Z

    move-result v0

    return v0
.end method

.method public final a(Ll;)Z
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Ll;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Ll;

    .line 2
    invoke-interface {v0}, Ll;->ab()Lj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj;->b(Lvx;)V

    return-void
.end method
