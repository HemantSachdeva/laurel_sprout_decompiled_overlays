.class public Lcde;
.super Lcdh;
.source "PG"


# instance fields
.field private a:Ljava/lang/Runnable;

.field b:Landroid/widget/OverScroller;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcdh;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcde;->d:I

    iput v0, p0, Lcde;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcdh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcde;->d:I

    iput p1, p0, Lcde;->f:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget v0, p0, Lcde;->f:I

    if-gez v0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcde;->f:I

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcde;->c:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcde;->d:I

    if-ne v0, v3, :cond_1

    return v4

    .line 3
    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    return v4

    .line 4
    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcde;->e:I

    sub-int v1, v0, v1

    .line 5
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v5, p0, Lcde;->f:I

    if-gt v1, v5, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    iput v0, p0, Lcde;->e:I

    return v2

    .line 6
    :cond_4
    :goto_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_8

    iput v3, p0, Lcde;->d:I

    .line 7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 9
    invoke-virtual {p0, p2}, Lcde;->g(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    .line 14
    :cond_5
    const/4 p1, 0x0

    .line 9
    :goto_1
    iput-boolean p1, p0, Lcde;->c:Z

    if-eqz p1, :cond_8

    iput v1, p0, Lcde;->e:I

    .line 10
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcde;->d:I

    iget-object p1, p0, Lcde;->g:Landroid/view/VelocityTracker;

    if-nez p1, :cond_6

    .line 11
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcde;->g:Landroid/view/VelocityTracker;

    :cond_6
    iget-object p1, p0, Lcde;->b:Landroid/widget/OverScroller;

    if-eqz p1, :cond_8

    .line 12
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    .line 13
    :cond_7
    iget-object p1, p0, Lcde;->b:Landroid/widget/OverScroller;

    .line 14
    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    return v2

    .line 12
    :cond_8
    :goto_2
    iget-object p1, p0, Lcde;->g:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_9

    .line 13
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_9
    return v4
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19

    .line 15
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v0, v8, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_2

    .line 16
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Lcde;->d:I

    .line 18
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Lcde;->e:I

    const/4 v0, 0x0

    goto/16 :goto_2

    .line 37
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 18
    :cond_3
    iget v0, v6, Lcde;->d:I

    .line 19
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    return v9

    .line 20
    :cond_4
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, v6, Lcde;->e:I

    iput v0, v6, Lcde;->e:I

    .line 21
    invoke-virtual {v6, v2}, Lcde;->f(Landroid/view/View;)I

    move-result v4

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcde;->b()I

    move-result v3

    sub-int/2addr v1, v0

    sub-int/2addr v3, v1

    const/4 v5, 0x0

    .line 23
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcde;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)V

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_5
    iget-object v0, v6, Lcde;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 24
    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v6, Lcde;->g:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 25
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, v6, Lcde;->g:Landroid/view/VelocityTracker;

    iget v4, v6, Lcde;->d:I

    .line 26
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    .line 27
    invoke-virtual {v6, v2}, Lcde;->e(Landroid/view/View;)I

    move-result v4

    neg-int v4, v4

    iget-object v5, v6, Lcde;->a:Ljava/lang/Runnable;

    if-eqz v5, :cond_6

    .line 28
    invoke-virtual {v2, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, v6, Lcde;->a:Ljava/lang/Runnable;

    :cond_6
    iget-object v5, v6, Lcde;->b:Landroid/widget/OverScroller;

    if-nez v5, :cond_7

    new-instance v5, Landroid/widget/OverScroller;

    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v5, v6, Lcde;->b:Landroid/widget/OverScroller;

    :cond_7
    iget-object v10, v6, Lcde;->b:Landroid/widget/OverScroller;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcdh;->c()I

    move-result v12

    const/4 v13, 0x0

    .line 30
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 31
    move/from16 v17, v4

    invoke-virtual/range {v10 .. v18}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v0, v6, Lcde;->b:Landroid/widget/OverScroller;

    .line 32
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcdd;

    .line 33
    move-object/from16 v4, p1

    invoke-direct {v0, v6, v4, v2}, Lcdd;-><init>(Lcde;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v0, v6, Lcde;->a:Ljava/lang/Runnable;

    .line 34
    invoke-static {v2, v0}, Lge;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_1

    .line 35
    :cond_8
    invoke-virtual {v6, v2}, Lcde;->h(Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    .line 37
    :goto_1
    iput-boolean v9, v6, Lcde;->c:Z

    iput v3, v6, Lcde;->d:I

    iget-object v2, v6, Lcde;->g:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_a

    .line 36
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, v6, Lcde;->g:Landroid/view/VelocityTracker;

    .line 15
    :cond_a
    :goto_2
    iget-object v1, v6, Lcde;->g:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_b

    .line 37
    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_b
    iget-boolean v1, v6, Lcde;->c:Z

    if-nez v1, :cond_d

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    return v9

    :cond_d
    :goto_3
    return v8
.end method

.method public e(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public f(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public g(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public h(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
