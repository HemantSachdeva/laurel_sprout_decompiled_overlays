.class public final Lqb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lqz;
    .locals 3

    iget-object v0, p0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    .line 5
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Lqz;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    iget-object v2, p1, Lqz;->a:Landroid/view/View;

    .line 6
    invoke-virtual {v1, v2}, Lnu;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    iget-object p1, p0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, p1, Landroid/support/v7/widget/RecyclerView;->H:Z

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 25
    iget v0, p1, Lqx;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lqx;->c:I

    return-void
.end method

.method final a(Lmh;)V
    .locals 2

    .line 1
    iget v0, p1, Lmh;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 2
    iget v1, p1, Lmh;->b:I

    iget v1, p1, Lmh;->d:I

    iget-object p1, p1, Lmh;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lqk;->f()V

    return-void

    :cond_1
    iget-object v0, p0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 3
    iget v1, p1, Lmh;->b:I

    iget p1, p1, Lmh;->d:I

    invoke-virtual {v0}, Lqk;->e()V

    return-void

    :cond_2
    iget-object v0, p0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 4
    iget v1, p1, Lmh;->b:I

    iget p1, p1, Lmh;->d:I

    invoke-virtual {v0}, Lqk;->c()V

    return-void
.end method

.method public final b(II)V
    .locals 7

    iget-object v0, p0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 17
    invoke-virtual {v1}, Lnu;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 18
    invoke-virtual {v5, v3}, Lnu;->c(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lqz;->w()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Lqz;->c:I

    if-lt v6, p1, :cond_0

    .line 19
    invoke-virtual {v5, p2, v2}, Lqz;->a(IZ)V

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput-boolean v4, v5, Lqx;->f:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v3, v1, Lqq;->c:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v5, v1, Lqq;->c:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lqz;

    if-eqz v5, :cond_2

    iget v6, v5, Lqz;->c:I

    if-lt v6, p1, :cond_2

    .line 22
    invoke-virtual {v5, p2, v4}, Lqz;->a(IZ)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    iget-object p1, p0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v4, p1, Landroid/support/v7/widget/RecyclerView;->H:Z

    return-void
.end method

.method public final c(II)V
    .locals 8

    iget-object v0, p0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 7
    invoke-virtual {v1}, Lnu;->b()I

    move-result v1

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 8
    invoke-virtual {v5, v2}, Lnu;->c(I)Landroid/view/View;

    move-result-object v5

    .line 9
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lqz;->w()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    iget v7, v6, Lqz;->c:I

    if-lt v7, p1, :cond_1

    if-ge v7, p2, :cond_1

    .line 10
    invoke-virtual {v6, v3}, Lqz;->b(I)V

    .line 11
    invoke-virtual {v6}, Lqz;->u()V

    .line 12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lql;

    iput-boolean v4, v3, Lql;->e:Z

    .line 9
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v1, v0, Lqq;->c:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_5

    iget-object v2, v0, Lqq;->c:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqz;

    if-nez v2, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    iget v5, v2, Lqz;->c:I

    if-lt v5, p1, :cond_3

    if-ge v5, p2, :cond_3

    .line 15
    invoke-virtual {v2, v3}, Lqz;->b(I)V

    .line 16
    invoke-virtual {v0, v1}, Lqq;->b(I)V

    .line 14
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 16
    :cond_5
    iget-object p1, p0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v4, p1, Landroid/support/v7/widget/RecyclerView;->I:Z

    return-void
.end method
