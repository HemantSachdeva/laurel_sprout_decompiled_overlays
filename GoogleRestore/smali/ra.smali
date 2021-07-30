.class public final Lra;
.super Lfl;
.source "PG"


# instance fields
.field final b:Lrb;

.field public final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lrb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfl;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lra;->c:Ljava/util/Map;

    iput-object p1, p0, Lra;->b:Lrb;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lha;
    .locals 1

    iget-object v0, p0, Lra;->c:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfl;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lfl;->a(Landroid/view/View;)Lha;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lfl;->a(Landroid/view/View;)Lha;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lra;->c:Ljava/util/Map;

    .line 31
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfl;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p1, p2}, Lfl;->a(Landroid/view/View;I)V

    return-void

    .line 33
    :cond_0
    invoke-super {p0, p1, p2}, Lfl;->a(Landroid/view/View;I)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lra;->c:Ljava/util/Map;

    .line 34
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfl;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1, p2}, Lfl;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    .line 36
    :cond_0
    invoke-super {p0, p1, p2}, Lfl;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final a(Landroid/view/View;Lgz;)V
    .locals 1

    iget-object v0, p0, Lra;->b:Lrb;

    .line 12
    invoke-virtual {v0}, Lrb;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lra;->b:Lrb;

    iget-object v0, v0, Lrb;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0, p1, p2}, Lqk;->a(Landroid/view/View;Lgz;)V

    iget-object v0, p0, Lra;->c:Ljava/util/Map;

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfl;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, p1, p2}, Lfl;->a(Landroid/view/View;Lgz;)V

    return-void

    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Lfl;->a(Landroid/view/View;Lgz;)V

    return-void

    .line 13
    :cond_1
    invoke-super {p0, p1, p2}, Lfl;->a(Landroid/view/View;Lgz;)V

    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lra;->b:Lrb;

    .line 24
    invoke-virtual {v0}, Lrb;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lra;->b:Lrb;

    iget-object v0, v0, Lrb;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lra;->c:Ljava/util/Map;

    .line 26
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1, p2, p3}, Lfl;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 28
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lfl;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 27
    :cond_1
    iget-object p1, p0, Lra;->b:Lrb;

    .line 29
    iget-object p1, p1, Lrb;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object p1, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 30
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lfl;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lra;->c:Ljava/util/Map;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfl;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1, p2, p3}, Lfl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 23
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lfl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lra;->c:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfl;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lfl;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Lfl;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lra;->c:Ljava/util/Map;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfl;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, p1, p2}, Lfl;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    .line 20
    :cond_0
    invoke-super {p0, p1, p2}, Lfl;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lra;->c:Ljava/util/Map;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfl;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1, p2}, Lfl;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    .line 11
    :cond_0
    invoke-super {p0, p1, p2}, Lfl;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
