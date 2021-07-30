.class public final Lpz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lpz;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqz;)V
    .locals 4

    iget-object v0, p0, Lpz;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 24
    iget-object p1, p1, Lqz;->a:Landroid/view/View;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v1, v1, Lqk;->p:Lnu;

    iget-object v2, v1, Lnu;->c:Lqa;

    .line 25
    invoke-virtual {v2, p1}, Lqa;->a(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object v3, v1, Lnu;->a:Lnt;

    .line 26
    invoke-virtual {v3, v2}, Lnt;->d(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    invoke-virtual {v1, p1}, Lnu;->d(Landroid/view/View;)V

    :cond_1
    iget-object v1, v1, Lnu;->c:Lqa;

    .line 28
    invoke-virtual {v1, v2}, Lqa;->a(I)V

    .line 29
    :goto_0
    invoke-virtual {v0, p1}, Lqq;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lqz;Lqf;Lqf;)V
    .locals 8

    iget-object v0, p0, Lpz;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 8
    invoke-virtual {v0, p1}, Lqq;->b(Lqz;)V

    iget-object v0, p0, Lpz;->a:Landroid/support/v7/widget/RecyclerView;

    .line 9
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Lqz;)V

    .line 10
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lqz;->a(Z)V

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    .line 11
    iget v4, p2, Lqf;->a:I

    .line 12
    iget v5, p2, Lqf;->b:I

    .line 13
    iget-object p2, p1, Lqz;->a:Landroid/view/View;

    if-nez p3, :cond_0

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    move v6, v1

    goto :goto_0

    .line 22
    :cond_0
    iget v1, p3, Lqf;->a:I

    move v6, v1

    .line 14
    :goto_0
    if-nez p3, :cond_1

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    move v7, p3

    goto :goto_1

    .line 22
    :cond_1
    iget p3, p3, Lqf;->b:I

    move v7, p3

    .line 16
    :goto_1
    invoke-virtual {p1}, Lqz;->m()Z

    move-result p3

    if-nez p3, :cond_4

    if-ne v4, v6, :cond_2

    if-eq v5, v7, :cond_4

    .line 17
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v6

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    .line 19
    invoke-virtual {p2, v6, v7, p3, v1}, Landroid/view/View;->layout(IIII)V

    .line 20
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lqg;->a(Lqz;IIII)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    return-void

    .line 21
    :cond_4
    invoke-virtual {v2, p1}, Lqg;->e(Lqz;)V

    iget-object p2, v2, Lqg;->b:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :goto_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->o()V

    return-void
.end method

.method public final b(Lqz;Lqf;Lqf;)V
    .locals 8

    iget-object v0, p0, Lpz;->a:Landroid/support/v7/widget/RecyclerView;

    .line 1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lqz;->a(Z)V

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    if-eqz p2, :cond_2

    iget v4, p2, Lqf;->a:I

    .line 2
    iget v6, p3, Lqf;->a:I

    if-ne v4, v6, :cond_0

    iget v1, p2, Lqf;->b:I

    iget v3, p3, Lqf;->b:I

    if-eq v1, v3, :cond_2

    :cond_0
    iget v5, p2, Lqf;->b:I

    .line 6
    iget v7, p3, Lqf;->b:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lqg;->a(Lqz;IIII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    return-void

    .line 3
    :cond_2
    invoke-virtual {v2, p1}, Lqg;->e(Lqz;)V

    .line 4
    iget-object p2, p1, Lqz;->a:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, v2, Lqg;->c:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->o()V

    return-void
.end method
