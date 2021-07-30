.class public Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridOffsetItemDecoration.java"


# instance fields
.field private mNumColumns:I

.field private mOffsetDrawable:Landroid/graphics/drawable/Drawable;

.field private final mOffsetPosition:I

.field private mOffsetPx:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 63
    iput p1, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetPx:I

    .line 64
    iput p2, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mNumColumns:I

    .line 65
    iput p3, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetPosition:I

    return-void
.end method

.method private getLastRowChildCount(I)I
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mNumColumns:I

    rem-int/2addr p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 99
    iget v0, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 100
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget p3, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mNumColumns:I

    if-ge p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 102
    iget p2, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetPx:I

    if-lez p2, :cond_1

    .line 103
    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 104
    :cond_1
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_2

    .line 105
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_1
    return-void

    .line 111
    :cond_3
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    .line 112
    invoke-direct {p0, p4}, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->getLastRowChildCount(I)I

    move-result v0

    .line 115
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p4, v0

    if-lt p2, p4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_6

    .line 117
    iget p2, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetPx:I

    if-lez p2, :cond_5

    .line 118
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 119
    :cond_5
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_6

    .line 120
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_6
    :goto_3
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 129
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 134
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 136
    iget v2, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetPosition:I

    if-nez v2, :cond_1

    .line 138
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    .line 139
    iget-object p3, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    add-int/2addr p3, p2

    .line 141
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, p2, v1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 146
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p3

    .line 147
    invoke-direct {p0, p3}, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->getLastRowChildCount(I)I

    move-result v2

    sub-int v2, p3, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v2, p3, :cond_2

    .line 153
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 155
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_2
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setNumOfColumns(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->mNumColumns:I

    return-void
.end method
