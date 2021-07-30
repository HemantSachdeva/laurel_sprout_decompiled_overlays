.class public Lcmg;
.super Lyj;
.source "PG"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyj;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lyj;-><init>()V

    .line 2
    sget-object v0, Lcmi;->d:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 5
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-virtual {p0, v0}, Lcmg;->a(Landroid/graphics/drawable/Drawable;)V

    iput v2, p0, Lcmg;->b:I

    iput v1, p0, Lcmg;->d:I

    return-void
.end method

.method private final a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 5

    .line 19
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Lqz;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lqz;->c()I

    move-result v0

    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 21
    invoke-virtual {v1}, Lqc;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 22
    instance-of v2, p1, Lcmf;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    check-cast p1, Lcmf;

    .line 23
    invoke-interface {p1}, Lcmf;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget p1, p0, Lcmg;->d:I

    if-eq p1, v4, :cond_1

    if-ne v0, v1, :cond_3

    :cond_1
    return v3

    .line 23
    :cond_2
    :goto_0
    iget p1, p0, Lcmg;->d:I

    if-eqz p1, :cond_4

    :cond_3
    if-ge v0, v1, :cond_4

    add-int/2addr v0, v4

    .line 24
    invoke-virtual {p2, v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Lqz;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcmg;->a(Lqz;)Z

    move-result p1

    if-nez p1, :cond_4

    return v3

    :cond_4
    return v4
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 8

    iget-object v0, p0, Lcmg;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 12
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    iget v2, p0, Lcmg;->b:I

    if-nez v2, :cond_1

    iget v2, p0, Lcmg;->c:I

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 13
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 14
    invoke-direct {p0, v5, p2}, Lcmg;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 15
    invoke-static {v5}, Lge;->m(Landroid/view/View;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v6, v5

    iget-object v5, p0, Lcmg;->a:Landroid/graphics/drawable/Drawable;

    add-int v7, v6, v2

    .line 16
    invoke-virtual {v5, v3, v6, v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcmg;->a:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 8
    invoke-direct {p0, p2, p3}, Lcmg;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcmg;->b:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcmg;->c:I

    :goto_0
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcmg;->c:I

    iput-object p1, p0, Lcmg;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected a(Lqz;)Z
    .locals 1

    .line 9
    instance-of v0, p1, Lcmf;

    if-eqz v0, :cond_1

    check-cast p1, Lcmf;

    .line 10
    invoke-interface {p1}, Lcmf;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
