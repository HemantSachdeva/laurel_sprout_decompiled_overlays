.class public Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridDividerItemDecoration.java"


# instance fields
.field private final mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private mNumColumns:I

.field private final mVerticalDivider:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 50
    iput-object p2, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 51
    iput p3, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    return-void
.end method

.method private drawHorizontalDividers(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 10

    .line 92
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 93
    iget v1, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    div-int v2, v0, v1

    .line 94
    rem-int v3, v0, v1

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    if-ge v1, v3, :cond_0

    .line 100
    iget v4, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    mul-int/2addr v4, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v2, -0x1

    .line 102
    iget v5, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    mul-int/2addr v4, v5

    :goto_1
    add-int/2addr v4, v1

    .line 105
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 106
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 109
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/car/ui/R$dimen;->car_ui_recyclerview_divider_top_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 111
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 112
    iget-object v7, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v7, v5, v7

    .line 113
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 114
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/car/ui/R$dimen;->car_ui_recyclerview_divider_bottom_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v4, v8

    .line 117
    iget-object v8, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7, v6, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawVerticalDividers(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 10

    .line 133
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    int-to-double v0, v0

    .line 134
    iget v2, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    int-to-double v4, v3

    cmpg-double v6, v4, v0

    if-gtz v6, :cond_2

    if-ne v3, v2, :cond_0

    goto :goto_2

    :cond_0
    cmpl-double v4, v4, v0

    if-nez v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 142
    iget v5, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    mul-int/2addr v4, v5

    goto :goto_1

    .line 144
    :cond_1
    iget v4, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    mul-int/2addr v4, v3

    :goto_1
    sub-int/2addr v4, v2

    .line 147
    iget v5, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    add-int/lit8 v6, v3, -0x1

    mul-int/2addr v5, v6

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 148
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 152
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/car/ui/R$dimen;->car_ui_recyclerview_divider_start_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 154
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 155
    iget-object v7, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v5, v7

    .line 156
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 157
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/car/ui/R$dimen;->car_ui_recyclerview_divider_end_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v4, v8

    .line 160
    iget-object v8, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v6, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 80
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    const/4 p3, 0x0

    .line 80
    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->drawVerticalDividers(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->drawHorizontalDividers(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public setNumOfColumns(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    return-void
.end method
