.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->b:I

    .line 2
    sget-object v0, Ljh;->k:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget-object v3, Ljh;->k:[I

    .line 3
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Lge;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 4
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->a:Z

    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final a(I)I
    .locals 2

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private final a(Z)V
    .locals 2

    .line 31
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x5

    .line 32
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    const v1, 0x7f0a0163

    .line 33
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    .line 36
    :cond_1
    const/16 p1, 0x8

    .line 34
    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_2
    if-ltz p1, :cond_3

    .line 36
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private final a()Z
    .locals 2

    .line 9
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getMinimumHeight()I
    .locals 2

    .line 6
    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final onMeasure(II)V
    .locals 5

    .line 10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v7/widget/ButtonBarLayout;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/ButtonBarLayout;->b:I

    if-le v0, v1, :cond_0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->a(Z)V

    :cond_0
    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->b:I

    .line 13
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->a()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_2

    const/high16 v1, -0x80000000

    .line 14
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x1

    goto :goto_0

    .line 28
    :cond_2
    move v0, p1

    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->a:Z

    if-eqz v0, :cond_3

    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v0

    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    const/high16 v4, 0x1000000

    if-ne v0, v4, :cond_3

    .line 18
    invoke-direct {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->a(Z)V

    goto :goto_1

    .line 28
    :cond_3
    if-eqz v1, :cond_4

    .line 19
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_4
    nop

    .line 20
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->a(I)I

    move-result p1

    if-ltz p1, :cond_7

    .line 21
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v2, v1, p2

    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    add-int/2addr p1, v3

    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->a(I)I

    move-result p1

    if-ltz p1, :cond_5

    .line 26
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    .line 27
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    add-int/2addr p1, p2

    add-int/2addr v2, p1

    goto :goto_2

    .line 30
    :cond_5
    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_2

    :cond_7
    nop

    .line 29
    :goto_2
    invoke-static {p0}, Lge;->k(Landroid/view/View;)I

    move-result p1

    if-eq p1, v2, :cond_8

    .line 30
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->setMinimumHeight(I)V

    :cond_8
    return-void
.end method
