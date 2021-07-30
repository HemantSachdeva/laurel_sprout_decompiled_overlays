.class public abstract Lqk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field private final a:Lrz;

.field private final b:Lrz;

.field p:Lnu;

.field public q:Landroid/support/v7/widget/RecyclerView;

.field final r:Lsa;

.field final s:Lsa;

.field public t:Lqw;

.field public u:Z

.field public final v:Z

.field public final w:Z

.field public x:I

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqi;

    .line 1
    invoke-direct {v0, p0}, Lqi;-><init>(Lqk;)V

    iput-object v0, p0, Lqk;->a:Lrz;

    new-instance v1, Lqj;

    .line 2
    invoke-direct {v1, p0}, Lqj;-><init>(Lqk;)V

    iput-object v1, p0, Lqk;->b:Lrz;

    new-instance v2, Lsa;

    .line 3
    invoke-direct {v2, v0}, Lsa;-><init>(Lrz;)V

    iput-object v2, p0, Lqk;->r:Lsa;

    new-instance v0, Lsa;

    .line 4
    invoke-direct {v0, v1}, Lsa;-><init>(Lrz;)V

    iput-object v0, p0, Lqk;->s:Lsa;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqk;->u:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqk;->v:Z

    iput-boolean v0, p0, Lqk;->w:Z

    return-void
.end method

.method public static a(III)I
    .locals 2

    .line 39
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 40
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    .line 41
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static a(IIIIZ)I
    .locals 4

    sub-int/2addr p0, p2

    .line 53
    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_1

    if-ltz p3, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_3

    .line 54
    :cond_0
    if-ne p3, v1, :cond_7

    if-eq p1, v2, :cond_3

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_1
    if-ltz p3, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_3

    :cond_2
    if-ne p3, v1, :cond_4

    :cond_3
    :goto_0
    move p3, p0

    goto :goto_3

    :cond_4
    if-ne p3, v0, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_0

    :cond_6
    :goto_1
    const/high16 p1, -0x80000000

    goto :goto_0

    :cond_7
    :goto_2
    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_3
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static final a(Landroid/view/View;IIII)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    .line 94
    iget-object v1, v0, Lql;->d:Landroid/graphics/Rect;

    .line 95
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v0, Lql;->leftMargin:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v0, Lql;->topMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v2

    iget v2, v0, Lql;->rightMargin:I

    sub-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    iget v0, v0, Lql;->bottomMargin:I

    sub-int/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private final a(Landroid/view/View;IZ)V
    .locals 6

    .line 9
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v0

    if-nez p3, :cond_1

    .line 10
    invoke-virtual {v0}, Lqz;->m()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object p3, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 12
    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    invoke-virtual {p3, v0}, Lsc;->c(Lqz;)V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-object p3, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 11
    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    invoke-virtual {p3, v0}, Lsc;->b(Lqz;)V

    .line 13
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lql;

    .line 14
    invoke-virtual {v0}, Lqz;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lqz;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 19
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lqk;->p:Lnu;

    .line 20
    invoke-virtual {v1, p1}, Lnu;->b(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    iget-object p2, p0, Lqk;->p:Lnu;

    .line 21
    invoke-virtual {p2}, Lnu;->a()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_6

    .line 23
    if-eq v1, p2, :cond_a

    iget-object p1, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 24
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 25
    invoke-virtual {p1, v1}, Lqk;->g(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 28
    invoke-virtual {p1, v1}, Lqk;->f(I)V

    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lql;

    .line 30
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lqz;->m()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 32
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    invoke-virtual {v5, v4}, Lsc;->b(Lqz;)V

    goto :goto_2

    .line 34
    :cond_4
    iget-object v5, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 33
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    invoke-virtual {v5, v4}, Lsc;->c(Lqz;)V

    .line 32
    :goto_2
    iget-object p1, p1, Lqk;->p:Lnu;

    .line 34
    invoke-virtual {v4}, Lqz;->m()Z

    move-result v4

    invoke-virtual {p1, v3, p2, v1, v4}, Lnu;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_5

    .line 25
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot move a child from non-existing index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 27
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 23
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 33
    :cond_7
    iget-object v1, p0, Lqk;->p:Lnu;

    .line 35
    invoke-virtual {v1, p1, p2, v2}, Lnu;->a(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    iput-boolean p2, p3, Lql;->e:Z

    iget-object p2, p0, Lqk;->t:Lqw;

    if-eqz p2, :cond_a

    iget-boolean v1, p2, Lqw;->e:Z

    if-eqz v1, :cond_a

    .line 36
    invoke-static {p1}, Lqw;->a(Landroid/view/View;)I

    move-result v1

    iget v3, p2, Lqw;->a:I

    if-ne v1, v3, :cond_a

    iput-object p1, p2, Lqw;->f:Landroid/view/View;

    goto :goto_5

    .line 15
    :cond_8
    :goto_3
    invoke-virtual {v0}, Lqz;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 16
    invoke-virtual {v0}, Lqz;->f()V

    goto :goto_4

    .line 17
    :cond_9
    invoke-virtual {v0}, Lqz;->h()V

    .line 16
    :goto_4
    iget-object v1, p0, Lqk;->p:Lnu;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Lnu;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 37
    :cond_a
    :goto_5
    iget-boolean p1, p3, Lql;->f:Z

    if-eqz p1, :cond_b

    .line 38
    iget-object p1, v0, Lqz;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iput-boolean v2, p3, Lql;->f:Z

    :cond_b
    return-void
.end method

.method public static b(III)Z
    .locals 3

    .line 91
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_1

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_5

    if-eqz v0, :cond_4

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_2

    return v1

    :cond_2
    if-ne p1, p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    return v2

    :cond_5
    if-lt p1, p0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public static final c(Landroid/view/View;)I
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lql;

    iget-object p0, p0, Lql;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public static final d(Landroid/view/View;)I
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lql;

    iget-object p0, p0, Lql;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public static final e(Landroid/view/View;)I
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    iget-object v0, v0, Lql;->d:Landroid/graphics/Rect;

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static final f(Landroid/view/View;)I
    .locals 2

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    iget-object v0, v0, Lql;->d:Landroid/graphics/Rect;

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static final g(Landroid/view/View;)I
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lql;

    iget-object p0, p0, Lql;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    return v0
.end method

.method public static final h(Landroid/view/View;)I
    .locals 1

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lql;

    iget-object p0, p0, Lql;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public static final i(Landroid/view/View;)I
    .locals 0

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lql;

    invoke-virtual {p0}, Lql;->c()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(ILqq;Lqx;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lqq;Lqx;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public a(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Landroid/view/View;ILqq;Lqx;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract a()Lql;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Lql;
    .locals 1

    new-instance v0, Lql;

    .line 45
    invoke-direct {v0, p1, p2}, Lql;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Lql;
    .locals 1

    .line 46
    instance-of v0, p1, Lql;

    if-eqz v0, :cond_0

    new-instance v0, Lql;

    .line 47
    check-cast p1, Lql;

    invoke-direct {v0, p1}, Lql;-><init>(Lql;)V

    return-object v0

    .line 48
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lql;

    .line 49
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lql;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lql;

    .line 50
    invoke-direct {v0, p1}, Lql;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(IILqx;Lou;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public a(ILou;)V
    .locals 0

    return-void
.end method

.method public final a(ILqq;)V
    .locals 1

    .line 118
    invoke-virtual {p0, p1}, Lqk;->g(I)Landroid/view/View;

    move-result-object v0

    .line 119
    invoke-virtual {p0, p1}, Lqk;->e(I)V

    .line 120
    invoke-virtual {p2, v0}, Lqq;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 5

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lqk;->t()I

    move-result v1

    invoke-virtual {p0}, Lqk;->v()I

    move-result v2

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Lqk;->u()I

    move-result v3

    invoke-virtual {p0}, Lqk;->w()I

    move-result v4

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 166
    invoke-virtual {p0}, Lqk;->y()I

    move-result v1

    invoke-static {p2, v0, v1}, Lqk;->a(III)I

    move-result p2

    add-int/2addr p1, v3

    add-int/2addr p1, v4

    .line 167
    invoke-virtual {p0}, Lqk;->z()I

    move-result v0

    invoke-static {p3, p1, v0}, Lqk;->a(III)I

    move-result p1

    .line 168
    invoke-virtual {p0, p2, p1}, Lqk;->e(II)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lqk;->p:Lnu;

    const/4 p1, 0x0

    iput p1, p0, Lqk;->B:I

    iput p1, p0, Lqk;->C:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    iput-object v0, p0, Lqk;->p:Lnu;

    .line 184
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lqk;->B:I

    .line 185
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Lqk;->C:I

    .line 0
    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lqk;->z:I

    iput p1, p0, Lqk;->A:I

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .line 5
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lqk;->a(Landroid/view/View;I)V

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    .line 6
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lqk;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    iget-object v0, v0, Lql;->d:Landroid/graphics/Rect;

    .line 78
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    .line 78
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 82
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/RectF;

    .line 83
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 85
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    .line 87
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    .line 88
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 85
    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method final a(Landroid/view/View;Lgz;)V
    .locals 2

    .line 96
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lqz;->m()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lqk;->p:Lnu;

    iget-object v0, v0, Lqz;->a:Landroid/view/View;

    .line 97
    invoke-virtual {v1, v0}, Lnu;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 98
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    invoke-virtual {p0, v1, v0, p1, p2}, Lqk;->a(Lqq;Lqx;Landroid/view/View;Lgz;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lqq;)V
    .locals 6

    iget-object v0, p1, Lqq;->a:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p1, Lqq;->a:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqz;

    iget-object v2, v2, Lqz;->a:Landroid/view/View;

    .line 106
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Lqz;->w()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lqz;->a(Z)V

    .line 109
    invoke-virtual {v3}, Lqz;->n()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 110
    invoke-virtual {v5, v2, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v4, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 111
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    if-eqz v4, :cond_2

    .line 112
    invoke-virtual {v4, v3}, Lqg;->d(Lqz;)V

    :cond_2
    const/4 v4, 0x1

    .line 113
    invoke-virtual {v3, v4}, Lqz;->a(Z)V

    .line 114
    invoke-virtual {p1, v2}, Lqq;->b(Landroid/view/View;)V

    .line 107
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 114
    :cond_3
    iget-object v1, p1, Lqq;->a:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Lqq;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    iget-object p1, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 117
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_5
    return-void
.end method

.method public a(Lqq;Lqx;Landroid/view/View;Lgz;)V
    .locals 0

    return-void
.end method

.method public final a(Lqw;)V
    .locals 3

    iget-object v0, p0, Lqk;->t:Lqw;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    iget-boolean v1, v0, Lqw;->e:Z

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Lqw;->a()V

    :cond_0
    iput-object p1, p0, Lqk;->t:Lqw;

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 190
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->D:Lqy;

    invoke-virtual {v1}, Lqy;->b()V

    iget-boolean v1, p1, Lqw;->g:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was started more than once. Each instance of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p1, Lqw;->b:Landroid/support/v7/widget/RecyclerView;

    iput-object p0, p1, Lqw;->c:Lqk;

    iget v0, p1, Lqw;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 193
    iget-object v1, p1, Lqw;->b:Landroid/support/v7/widget/RecyclerView;

    .line 194
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput v0, v2, Lqx;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lqw;->e:Z

    iput-boolean v0, p1, Lqw;->d:Z

    iget v2, p1, Lqw;->a:I

    .line 195
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    invoke-virtual {v1, v2}, Lqk;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lqw;->f:Landroid/view/View;

    iget-object v1, p1, Lqw;->b:Landroid/support/v7/widget/RecyclerView;

    .line 196
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->D:Lqy;

    invoke-virtual {v1}, Lqy;->a()V

    iput-boolean v0, p1, Lqw;->g:Z

    return-void

    .line 191
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 193
    const-string v0, "Invalid target position"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lqx;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 127
    invoke-virtual/range {p0 .. p0}, Lqk;->t()I

    move-result v4

    .line 128
    invoke-virtual/range {p0 .. p0}, Lqk;->u()I

    move-result v5

    iget v6, v0, Lqk;->B:I

    .line 129
    invoke-virtual/range {p0 .. p0}, Lqk;->v()I

    move-result v7

    iget v8, v0, Lqk;->C:I

    .line 130
    invoke-virtual/range {p0 .. p0}, Lqk;->w()I

    move-result v9

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v10

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v11

    sub-int/2addr v10, v11

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v12

    sub-int/2addr v11, v12

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v4, v10, v4

    .line 135
    const/4 v13, 0x0

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int v5, v11, v5

    .line 136
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    add-int/2addr v10, v12

    sub-int/2addr v6, v7

    sub-int/2addr v10, v6

    .line 137
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v11, v2

    sub-int/2addr v8, v9

    sub-int/2addr v11, v8

    .line 138
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 139
    invoke-virtual/range {p0 .. p0}, Lqk;->r()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    if-eqz v6, :cond_0

    move v14, v6

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_0

    :cond_1
    if-eqz v14, :cond_2

    goto :goto_0

    .line 141
    :cond_2
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 139
    :goto_0
    if-eqz v15, :cond_3

    goto :goto_1

    .line 142
    :cond_3
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 139
    :goto_1
    aput v14, v3, v13

    aput v15, v3, v8

    aget v2, v3, v13

    aget v3, v3, v8

    if-eqz p5, :cond_5

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 144
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lqk;->t()I

    move-result v5

    .line 145
    invoke-virtual/range {p0 .. p0}, Lqk;->u()I

    move-result v6

    iget v7, v0, Lqk;->B:I

    .line 146
    invoke-virtual/range {p0 .. p0}, Lqk;->v()I

    move-result v9

    iget v10, v0, Lqk;->C:I

    .line 147
    invoke-virtual/range {p0 .. p0}, Lqk;->w()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, v0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 148
    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 149
    invoke-static {v4, v11}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 150
    iget v4, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v2

    sub-int/2addr v7, v9

    if-ge v4, v7, :cond_6

    iget v4, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    if-le v4, v5, :cond_6

    iget v4, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    if-ge v4, v10, :cond_6

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v3

    if-le v4, v6, :cond_6

    :cond_5
    if-nez v2, :cond_7

    if-eqz v3, :cond_6

    goto :goto_3

    .line 143
    :cond_6
    :goto_2
    return v13

    .line 152
    :cond_7
    move v13, v2

    .line 150
    :goto_3
    if-eqz p4, :cond_8

    .line 151
    invoke-virtual {v1, v13, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_4

    .line 152
    :cond_8
    invoke-virtual {v1, v13, v3}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    .line 151
    :goto_4
    return v8
.end method

.method final a(Landroid/view/View;IILql;)Z
    .locals 2

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lqk;->v:Z

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Lql;->width:I

    invoke-static {v0, p2, v1}, Lqk;->b(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Lql;->height:I

    invoke-static {p1, p3, p2}, Lqk;->b(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lql;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(ILqq;Lqx;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Lqq;Lqx;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public b(Lqx;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 154
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 155
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 156
    invoke-virtual {p0, v0, p1}, Lqk;->c(II)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    .line 7
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lqk;->b(Landroid/view/View;I)V

    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 1

    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lqk;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public final b(Lqq;)V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 101
    invoke-virtual {p0, v0}, Lqk;->g(I)Landroid/view/View;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v1

    invoke-virtual {v1}, Lqz;->w()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0, v0, p1}, Lqk;->a(ILqq;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public c(Lqx;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(II)V
    .locals 1

    .line 157
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lqk;->B:I

    .line 158
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lqk;->z:I

    if-nez p1, :cond_0

    .line 159
    sget p1, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 160
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lqk;->C:I

    .line 161
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lqk;->A:I

    if-nez p1, :cond_1

    .line 162
    sget p1, Landroid/support/v7/widget/RecyclerView;->O:I

    :cond_1
    return-void
.end method

.method public c(Lqq;Lqx;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Lqx;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final d(II)V
    .locals 8

    .line 169
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    :goto_0
    if-ge v1, v0, :cond_4

    .line 170
    invoke-virtual {p0, v1}, Lqk;->g(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 171
    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 172
    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 173
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v4, :cond_0

    .line 174
    iget v4, v7, Landroid/graphics/Rect;->left:I

    .line 175
    :cond_0
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v2, :cond_1

    .line 176
    iget v2, v7, Landroid/graphics/Rect;->right:I

    .line 177
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v5, :cond_2

    .line 178
    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 179
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_3

    .line 180
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 181
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 182
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lqk;->a(Landroid/graphics/Rect;II)V

    return-void

    :cond_5
    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 183
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    return-void
.end method

.method public e(Lqx;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public final e(I)V
    .locals 3

    .line 121
    invoke-virtual {p0, p1}, Lqk;->g(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqk;->p:Lnu;

    .line 122
    invoke-virtual {v0, p1}, Lnu;->a(I)I

    move-result p1

    iget-object v1, v0, Lnu;->c:Lqa;

    .line 123
    invoke-virtual {v1, p1}, Lqa;->b(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lnu;->a:Lnt;

    .line 124
    invoke-virtual {v2, p1}, Lnt;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {v0, v1}, Lnu;->d(Landroid/view/View;)V

    :cond_1
    iget-object v0, v0, Lnu;->c:Lqa;

    .line 126
    invoke-virtual {v0, p1}, Lqa;->a(I)V

    return-void

    .line 123
    :cond_2
    :goto_0
    return-void
.end method

.method public final e(II)V
    .locals 1

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 163
    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method public f(Lqx;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final f(I)V
    .locals 1

    .line 43
    invoke-virtual {p0, p1}, Lqk;->g(I)Landroid/view/View;

    iget-object v0, p0, Lqk;->p:Lnu;

    .line 44
    invoke-virtual {v0, p1}, Lnu;->d(I)V

    return-void
.end method

.method public final f(II)V
    .locals 1

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 99
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    return-void
.end method

.method public g(Lqx;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final g(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lqk;->p:Lnu;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Lnu;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public h()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 69
    invoke-static {v0}, Lge;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final s()I
    .locals 1

    iget-object v0, p0, Lqk;->p:Lnu;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lnu;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u()I
    .locals 1

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()I
    .locals 1

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 67
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lqk;->p:Lnu;

    .line 68
    invoke-virtual {v2, v0}, Lnu;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 71
    invoke-static {v0}, Lge;->j(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final z()I
    .locals 1

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 70
    invoke-static {v0}, Lge;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method
