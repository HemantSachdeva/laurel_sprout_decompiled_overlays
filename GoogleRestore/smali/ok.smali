.class public Lok;
.super Landroid/widget/ListView;
.source "PG"


# instance fields
.field public a:Z

.field b:Loj;

.field private final c:Landroid/graphics/Rect;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/reflect/Field;

.field private j:Loi;

.field private final k:Z

.field private l:Z

.field private m:Lhl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const v1, 0x7f040112

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    .line 2
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lok;->c:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lok;->d:I

    iput p1, p0, Lok;->e:I

    iput p1, p0, Lok;->f:I

    iput p1, p0, Lok;->g:I

    iput-boolean p2, p0, Lok;->k:Z

    .line 3
    invoke-virtual {p0, p1}, Lok;->setCacheColorHint(I)V

    :try_start_0
    const-class p1, Landroid/widget/AbsListView;

    const-string p2, "mIsChildViewEnabled"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lok;->i:Ljava/lang/reflect/Field;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Ldat;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final a()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lok;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lok;->l:Z

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lok;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lok;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method private final a(Z)V
    .locals 1

    iget-object v0, p0, Lok;->j:Loi;

    if-eqz v0, :cond_0

    iput-boolean p1, v0, Loi;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 11

    .line 19
    invoke-virtual {p0}, Lok;->getListPaddingTop()I

    move-result v0

    .line 20
    invoke-virtual {p0}, Lok;->getListPaddingBottom()I

    move-result v1

    .line 21
    invoke-virtual {p0}, Lok;->getDividerHeight()I

    move-result v2

    .line 22
    invoke-virtual {p0}, Lok;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 23
    invoke-virtual {p0}, Lok;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    add-int/2addr v0, v1

    if-nez v4, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-lez v2, :cond_1

    if-eqz v3, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v5, 0x0

    move-object v8, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v3, :cond_8

    .line 25
    invoke-interface {v4, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v7, :cond_2

    move v10, v9

    goto :goto_2

    .line 32
    :cond_2
    move v10, v7

    .line 25
    :goto_2
    if-eq v9, v7, :cond_3

    move-object v8, v5

    .line 26
    :cond_3
    invoke-interface {v4, v6, v8, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 27
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_4

    .line 28
    invoke-virtual {p0}, Lok;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 29
    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    :cond_4
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v9, :cond_5

    .line 31
    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_3

    .line 35
    :cond_5
    nop

    .line 32
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 33
    :goto_3
    invoke-virtual {v8, p1, v7}, Landroid/view/View;->measure(II)V

    .line 34
    invoke-virtual {v8}, Landroid/view/View;->forceLayout()V

    if-lez v6, :cond_6

    add-int/2addr v0, v2

    .line 35
    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    if-lt v0, p2, :cond_7

    return p2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move v7, v10

    goto :goto_1

    .line 32
    :cond_8
    return v0
.end method

.method public final a(Landroid/view/MotionEvent;I)Z
    .locals 16

    .line 37
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    const/4 v0, 0x2

    if-eq v3, v0, :cond_1

    const/4 v0, 0x3

    if-eq v3, v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_6

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 86
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-gez v6, :cond_3

    const/4 v0, 0x0

    goto/16 :goto_6

    .line 39
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    .line 40
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 41
    invoke-virtual {v1, v7, v6}, Lok;->pointToPosition(II)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    const/4 v5, 0x1

    goto/16 :goto_6

    .line 42
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lok;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v8, v0

    invoke-virtual {v1, v0}, Lok;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    int-to-float v7, v7

    int-to-float v6, v6

    iput-boolean v4, v1, Lok;->l:Z

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    invoke-virtual {v1, v7, v6}, Lok;->drawableHotspotChanged(FF)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lok;->isPressed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 46
    invoke-virtual {v1, v4}, Lok;->setPressed(Z)V

    .line 47
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lok;->layoutChildren()V

    iget v0, v1, Lok;->h:I

    if-eq v0, v9, :cond_6

    .line 48
    invoke-virtual/range {p0 .. p0}, Lok;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v0, v11

    invoke-virtual {v1, v0}, Lok;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eq v0, v10, :cond_6

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 50
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_6
    iput v8, v1, Lok;->h:I

    .line 51
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 52
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    .line 53
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-float v0, v0

    sub-float v0, v7, v0

    int-to-float v11, v11

    sub-float v11, v6, v11

    .line 54
    invoke-virtual {v10, v0, v11}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 55
    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 56
    invoke-virtual {v10, v4}, Landroid/view/View;->setPressed(Z)V

    .line 57
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lok;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_9

    if-eq v8, v9, :cond_8

    move v12, v8

    const/4 v13, 0x1

    goto :goto_2

    .line 78
    :cond_8
    const/4 v8, -0x1

    const/4 v12, -0x1

    goto :goto_1

    :cond_9
    move v12, v8

    :goto_1
    const/4 v13, 0x0

    .line 57
    :goto_2
    if-eqz v13, :cond_a

    .line 58
    invoke-virtual {v11, v5, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_a
    iget-object v0, v1, Lok;->c:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v0, v14, v15, v5, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v9, v1, Lok;->d:I

    sub-int/2addr v5, v9

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 61
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v9, v1, Lok;->e:I

    sub-int/2addr v5, v9

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 62
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v9, v1, Lok;->f:I

    add-int/2addr v5, v9

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 63
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v1, Lok;->g:I

    add-int/2addr v5, v9

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    :try_start_0
    iget-object v0, v1, Lok;->i:Ljava/lang/reflect/Field;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 65
    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eq v5, v0, :cond_b

    iget-object v5, v1, Lok;->i:Ljava/lang/reflect/Field;

    xor-int/2addr v0, v4

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, -0x1

    if-eq v8, v5, :cond_b

    .line 67
    invoke-virtual/range {p0 .. p0}, Lok;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 78
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Ldat;->a(Ljava/lang/Throwable;)V

    .line 67
    :cond_b
    :goto_3
    if-eqz v13, :cond_d

    iget-object v0, v1, Lok;->c:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    .line 71
    invoke-virtual/range {p0 .. p0}, Lok;->getVisibility()I

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x1

    goto :goto_4

    .line 78
    :cond_c
    const/4 v8, 0x0

    .line 71
    :goto_4
    const/4 v9, 0x0

    invoke-virtual {v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 72
    invoke-static {v11, v5, v0}, Ley;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 73
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lok;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v5, -0x1

    if-eq v12, v5, :cond_e

    .line 74
    invoke-static {v0, v7, v6}, Ley;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_e
    nop

    .line 75
    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lok;->a(Z)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lok;->refreshDrawableState()V

    if-ne v3, v4, :cond_f

    .line 77
    invoke-virtual {v1, v12}, Lok;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 78
    invoke-virtual {v1, v10, v12, v5, v6}, Lok;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_5

    :cond_f
    nop

    :goto_5
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 37
    :goto_6
    if-eqz v0, :cond_10

    if-eqz v5, :cond_11

    :cond_10
    const/4 v3, 0x0

    iput-boolean v3, v1, Lok;->l:Z

    .line 79
    invoke-virtual {v1, v3}, Lok;->setPressed(Z)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lok;->drawableStateChanged()V

    iget v5, v1, Lok;->h:I

    .line 81
    invoke-virtual/range {p0 .. p0}, Lok;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lok;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 82
    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_11
    if-eqz v0, :cond_13

    iget-object v3, v1, Lok;->m:Lhl;

    if-nez v3, :cond_12

    .line 83
    new-instance v3, Lhl;

    invoke-direct {v3, v1}, Lhl;-><init>(Landroid/widget/ListView;)V

    iput-object v3, v1, Lok;->m:Lhl;

    :cond_12
    iget-object v3, v1, Lok;->m:Lhl;

    .line 84
    invoke-virtual {v3, v4}, Lhl;->a(Z)V

    iget-object v3, v1, Lok;->m:Lhl;

    .line 85
    invoke-virtual {v3, v1, v2}, Lhl;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_7

    :cond_13
    iget-object v2, v1, Lok;->m:Lhl;

    if-eqz v2, :cond_14

    .line 86
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lhl;->a(Z)V

    .line 85
    :cond_14
    :goto_7
    return v0
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lok;->c:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lok;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lok;->c:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final drawableStateChanged()V
    .locals 1

    iget-object v0, p0, Lok;->b:Loj;

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0}, Lok;->a(Z)V

    .line 14
    invoke-direct {p0}, Lok;->a()V

    return-void
.end method

.method public final hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Lok;->k:Z

    if-nez v0, :cond_1

    .line 15
    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Lok;->k:Z

    if-nez v0, :cond_1

    .line 16
    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lok;->k:Z

    if-nez v0, :cond_1

    .line 17
    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Lok;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lok;->a:Z

    if-nez v0, :cond_1

    .line 18
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lok;->b:Loj;

    .line 36
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lok;->b:Loj;

    if-nez v0, :cond_0

    new-instance v0, Loj;

    .line 89
    invoke-direct {v0, p0}, Loj;-><init>(Lok;)V

    iput-object v0, p0, Lok;->b:Loj;

    iget-object v2, v0, Loj;->a:Lok;

    .line 90
    invoke-virtual {v2, v0}, Lok;->post(Ljava/lang/Runnable;)Z

    const/16 v0, 0xa

    goto :goto_0

    .line 98
    :cond_0
    const/16 v0, 0xa

    .line 91
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    nop

    .line 98
    invoke-virtual {p0, v3}, Lok;->setSelection(I)V

    goto :goto_2

    .line 92
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lok;->pointToPosition(II)I

    move-result p1

    if-eq p1, v3, :cond_5

    .line 93
    invoke-virtual {p0}, Lok;->getSelectedItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 94
    invoke-virtual {p0}, Lok;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lok;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lok;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Lok;->setSelectionFromTop(II)V

    .line 97
    :cond_4
    invoke-direct {p0}, Lok;->a()V

    :cond_5
    :goto_2
    return v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lok;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lok;->h:I

    .line 99
    :goto_0
    iget-object v0, p0, Lok;->b:Loj;

    if-eqz v0, :cond_1

    iget-object v1, v0, Loj;->a:Lok;

    const/4 v2, 0x0

    iput-object v2, v1, Lok;->b:Loj;

    .line 101
    invoke-virtual {v1, v0}, Lok;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 102
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Loi;

    .line 103
    invoke-direct {v0, p1}, Loi;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    iput-object v0, p0, Lok;->j:Loi;

    .line 104
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Rect;

    .line 105
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 107
    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lok;->d:I

    .line 108
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lok;->e:I

    .line 109
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lok;->f:I

    .line 110
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lok;->g:I

    return-void
.end method
