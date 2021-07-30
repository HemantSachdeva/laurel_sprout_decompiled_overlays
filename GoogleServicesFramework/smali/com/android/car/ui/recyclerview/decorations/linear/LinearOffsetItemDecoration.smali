.class public Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LinearOffsetItemDecoration.java"


# instance fields
.field private mOffsetDrawable:Landroid/graphics/drawable/Drawable;

.field private mOffsetPosition:I

.field private mOffsetPx:I

.field private mOrientation:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 70
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 71
    iput p1, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetPx:I

    .line 72
    iput p2, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetPosition:I

    return-void
.end method

.method private drawOffsetHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 164
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 165
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 169
    iget v2, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetPosition:I

    if-nez v2, :cond_0

    .line 170
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 174
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 175
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p2, v2

    .line 177
    :goto_0
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p2

    .line 179
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p2, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawOffsetVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 184
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 185
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 190
    iget v2, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetPosition:I

    if-nez v2, :cond_0

    .line 191
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 195
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 196
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p2, v2

    .line 198
    :goto_0
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, p2

    .line 200
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 201
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 98
    iget v0, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetPosition:I

    if-nez v0, :cond_0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    .line 103
    iget v0, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 104
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p4, v1

    if-eq p2, p4, :cond_1

    return-void

    .line 109
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 108
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 109
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOrientation:I

    if-nez p2, :cond_5

    .line 111
    iget p2, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetPx:I

    if-lez p2, :cond_3

    .line 112
    iget p0, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetPosition:I

    if-nez p0, :cond_2

    .line 113
    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 115
    :cond_2
    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 117
    :cond_3
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_9

    .line 118
    iget p0, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetPosition:I

    if-nez p0, :cond_4

    .line 119
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_5
    if-ne p2, v1, :cond_9

    .line 125
    iget p2, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetPx:I

    if-lez p2, :cond_7

    .line 126
    iget p0, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetPosition:I

    if-nez p0, :cond_6

    .line 127
    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 129
    :cond_6
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 131
    :cond_7
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_9

    .line 132
    iget p0, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetPosition:I

    if-nez p0, :cond_8

    .line 133
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 135
    :cond_8
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_9
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 151
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 152
    iget-object p3, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOffsetDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    return-void

    .line 156
    :cond_0
    iget p3, p0, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->mOrientation:I

    if-nez p3, :cond_1

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->drawOffsetHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;->drawOffsetVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_2
    :goto_0
    return-void
.end method
