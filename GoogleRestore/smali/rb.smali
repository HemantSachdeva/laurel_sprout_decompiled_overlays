.class public Lrb;
.super Lfl;
.source "PG"


# instance fields
.field final b:Landroid/support/v7/widget/RecyclerView;

.field public final c:Lra;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfl;-><init>()V

    iput-object p1, p0, Lrb;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p0, Lrb;->c:Lra;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lrb;->c:Lra;

    return-void

    :cond_0
    new-instance p1, Lra;

    .line 2
    invoke-direct {p1, p0}, Lra;-><init>(Lrb;)V

    iput-object p1, p0, Lrb;->c:Lra;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lgz;)V
    .locals 4

    .line 7
    invoke-super {p0, p1, p2}, Lfl;->a(Landroid/view/View;Lgz;)V

    .line 8
    invoke-virtual {p0}, Lrb;->a()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lrb;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 9
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 10
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    .line 11
    invoke-virtual {p2, v0}, Lgz;->a(I)V

    .line 12
    invoke-virtual {p2}, Lgz;->a()V

    :cond_1
    iget-object v0, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 13
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    .line 14
    invoke-virtual {p2, v0}, Lgz;->a(I)V

    .line 15
    invoke-virtual {p2}, Lgz;->a()V

    .line 16
    :cond_3
    invoke-virtual {p1, v1, v2}, Lqk;->a(Lqq;Lqx;)I

    move-result v0

    .line 17
    invoke-virtual {p1, v1, v2}, Lqk;->b(Lqq;Lqx;)I

    move-result p1

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Lgx;

    .line 19
    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-direct {v1, p1}, Lgx;-><init>(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p2, v1}, Lgz;->a(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method final a()Z
    .locals 1

    iget-object v0, p0, Lrb;->b:Landroid/support/v7/widget/RecyclerView;

    .line 33
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->s()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .line 21
    invoke-super {p0, p1, p2, p3}, Lfl;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    .line 22
    :cond_0
    invoke-virtual {p0}, Lrb;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    iget-object p1, p0, Lrb;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz p1, :cond_a

    iget-object v1, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 23
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    if-nez v1, :cond_2

    :cond_1
    goto/16 :goto_3

    :cond_2
    const/16 v2, 0x1000

    if-eq p2, v2, :cond_6

    const/16 v2, 0x2000

    if-eq p2, v2, :cond_3

    const/4 p2, 0x0

    const/4 v1, 0x0

    goto :goto_2

    .line 31
    :cond_3
    nop

    .line 24
    const/4 p2, -0x1

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p1, Lqk;->C:I

    .line 25
    invoke-virtual {p1}, Lqk;->u()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lqk;->w()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    goto :goto_0

    .line 27
    :cond_4
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v2, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 26
    invoke-virtual {v2, p2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p1, Lqk;->B:I

    .line 27
    invoke-virtual {p1}, Lqk;->t()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Lqk;->v()I

    move-result v2

    sub-int/2addr p2, v2

    neg-int p2, p2

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    goto :goto_2

    .line 32
    :cond_6
    nop

    .line 28
    invoke-virtual {v1, p3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_7

    iget p2, p1, Lqk;->C:I

    .line 29
    invoke-virtual {p1}, Lqk;->u()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Lqk;->w()I

    move-result v1

    sub-int/2addr p2, v1

    move v1, p2

    goto :goto_1

    .line 31
    :cond_7
    const/4 v1, 0x0

    .line 29
    :goto_1
    iget-object p2, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 30
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_8

    iget p2, p1, Lqk;->B:I

    .line 31
    invoke-virtual {p1}, Lqk;->t()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Lqk;->v()I

    move-result v2

    sub-int/2addr p2, v2

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    .line 23
    :goto_2
    if-nez v1, :cond_9

    if-eqz p2, :cond_1

    goto :goto_4

    :goto_3
    return v0

    :cond_9
    move v0, v1

    :goto_4
    iget-object p1, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 32
    invoke-virtual {p1, p2, v0, p3}, Landroid/support/v7/widget/RecyclerView;->b(IIZ)V

    return p3

    .line 27
    :cond_a
    return v0
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 3
    invoke-super {p0, p1, p2}, Lfl;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Lqk;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method
