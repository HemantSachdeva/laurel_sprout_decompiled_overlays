.class final Lpt;
.super Lpv;
.source "PG"


# direct methods
.method public constructor <init>(Lqk;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lpv;-><init>(Lqk;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lpt;->a:Lqk;

    iget v1, v0, Lqk;->B:I

    .line 10
    invoke-virtual {v0}, Lqk;->v()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final a(Landroid/view/View;)I
    .locals 2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    .line 5
    invoke-static {p1}, Lqk;->f(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Lql;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Lql;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lpt;->a:Lqk;

    iget-object v0, v0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 19
    invoke-virtual {v1}, Lnu;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 20
    invoke-virtual {v3, v2}, Lnu;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lpt;->a:Lqk;

    iget v0, v0, Lqk;->B:I

    return v0
.end method

.method public final b(Landroid/view/View;)I
    .locals 2

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    .line 7
    invoke-static {p1}, Lqk;->e(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Lql;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Lql;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lpt;->a:Lqk;

    .line 12
    invoke-virtual {v0}, Lqk;->t()I

    move-result v0

    return v0
.end method

.method public final c(Landroid/view/View;)I
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    .line 3
    invoke-static {p1}, Lqk;->g(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lql;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lpt;->a:Lqk;

    iget v1, v0, Lqk;->B:I

    .line 13
    invoke-virtual {v0}, Lqk;->t()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lpt;->a:Lqk;

    .line 14
    invoke-virtual {v0}, Lqk;->v()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final d(Landroid/view/View;)I
    .locals 1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    .line 9
    invoke-static {p1}, Lqk;->d(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lql;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lpt;->a:Lqk;

    .line 11
    invoke-virtual {v0}, Lqk;->v()I

    move-result v0

    return v0
.end method

.method public final e(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lpt;->a:Lqk;

    iget-object v1, p0, Lpt;->c:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {v0, p1, v1}, Lqk;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lpt;->c:Landroid/graphics/Rect;

    .line 16
    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lpt;->a:Lqk;

    iget v0, v0, Lqk;->z:I

    return v0
.end method

.method public final f(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lpt;->a:Lqk;

    iget-object v1, p0, Lpt;->c:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {v0, p1, v1}, Lqk;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lpt;->c:Landroid/graphics/Rect;

    .line 18
    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lpt;->a:Lqk;

    iget v0, v0, Lqk;->A:I

    return v0
.end method
