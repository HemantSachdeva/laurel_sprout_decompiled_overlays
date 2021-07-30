.class public final Lop;
.super Lyj;
.source "PG"

# interfaces
.implements Lqn;


# static fields
.field private static final r:[I

.field private static final s:[I


# instance fields
.field private A:I

.field private final B:[I

.field private final C:[I

.field private final D:Ljava/lang/Runnable;

.field private final E:Laqc;

.field public final a:I

.field final b:Landroid/graphics/drawable/StateListDrawable;

.field final c:Landroid/graphics/drawable/Drawable;

.field d:I

.field e:I

.field f:F

.field g:I

.field h:I

.field i:F

.field public j:I

.field public k:I

.field public l:Landroid/support/v7/widget/RecyclerView;

.field public m:Z

.field public n:Z

.field public o:I

.field final p:Landroid/animation/ValueAnimator;

.field q:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:Landroid/graphics/drawable/StateListDrawable;

.field private final x:Landroid/graphics/drawable/Drawable;

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lop;->r:[I

    new-array v0, v2, [I

    sput-object v0, Lop;->s:[I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    invoke-direct {p0}, Lyj;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lop;->j:I

    iput v0, p0, Lop;->k:I

    iput-boolean v0, p0, Lop;->m:Z

    iput-boolean v0, p0, Lop;->n:Z

    iput v0, p0, Lop;->o:I

    iput v0, p0, Lop;->A:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lop;->B:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lop;->C:[I

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 1
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lop;->p:Landroid/animation/ValueAnimator;

    iput v0, p0, Lop;->q:I

    new-instance v0, Lol;

    .line 2
    invoke-direct {v0, p0}, Lol;-><init>(Lop;)V

    iput-object v0, p0, Lop;->D:Ljava/lang/Runnable;

    new-instance v0, Lom;

    .line 3
    invoke-direct {v0, p0}, Lom;-><init>(Lop;)V

    iput-object v0, p0, Lop;->E:Laqc;

    iput-object p2, p0, Lop;->b:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Lop;->c:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lop;->w:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Lop;->x:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {p6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lop;->u:I

    .line 5
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {p6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lop;->v:I

    .line 6
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lop;->y:I

    .line 7
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lop;->z:I

    iput p7, p0, Lop;->a:I

    iput p8, p0, Lop;->t:I

    .line 8
    const/16 p4, 0xff

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 9
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance p2, Lon;

    .line 10
    invoke-direct {p2, p0}, Lon;-><init>(Lop;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    new-instance p2, Loo;

    invoke-direct {p2, p0}, Loo;-><init>(Lop;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 12
    invoke-virtual {p2, p0}, Landroid/support/v7/widget/RecyclerView;->b(Lyj;)V

    iget-object p2, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p2, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p3, p2, Landroid/support/v7/widget/RecyclerView;->n:Lqn;

    if-ne p3, p0, :cond_1

    const/4 p3, 0x0

    iput-object p3, p2, Landroid/support/v7/widget/RecyclerView;->n:Lqn;

    :cond_1
    iget-object p2, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 14
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->b(Laqc;)V

    .line 15
    invoke-direct {p0}, Lop;->e()V

    :cond_2
    iput-object p1, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->a(Lyj;)V

    iget-object p1, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 18
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Laqc;)V

    return-void

    .line 11
    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final a(FF[IIII)I
    .locals 2

    .line 85
    const/4 v0, 0x1

    aget v0, p2, v0

    const/4 v1, 0x0

    aget p2, p2, v1

    sub-int/2addr v0, p2

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-int/2addr p3, p5

    sub-float/2addr p1, p0

    int-to-float p0, v0

    div-float/2addr p1, p0

    int-to-float p0, p3

    mul-float p1, p1, p0

    float-to-int p0, p1

    add-int/2addr p4, p0

    if-ge p4, p3, :cond_1

    if-ltz p4, :cond_1

    return p0

    :cond_1
    return v1
.end method

.method private final b(I)V
    .locals 4

    .line 83
    invoke-direct {p0}, Lop;->e()V

    iget-object v0, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lop;->D:Ljava/lang/Runnable;

    int-to-long v2, p1

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final d()Z
    .locals 2

    iget-object v0, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 20
    invoke-static {v0}, Lge;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final e()V
    .locals 2

    iget-object v0, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lop;->D:Ljava/lang/Runnable;

    .line 19
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 82
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    return-void
.end method

.method final a(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v1, p0, Lop;->o:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lop;->b:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lop;->r:[I

    .line 86
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 87
    invoke-direct {p0}, Lop;->e()V

    :cond_0
    if-nez p1, :cond_1

    .line 88
    invoke-virtual {p0}, Lop;->a()V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lop;->b()V

    .line 88
    :goto_0
    iget v1, p0, Lop;->o:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lop;->b:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lop;->s:[I

    .line 91
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/16 v0, 0x4b0

    .line 92
    invoke-direct {p0, v0}, Lop;->b(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/16 v0, 0x5dc

    .line 90
    invoke-direct {p0, v0}, Lop;->b(I)V

    .line 92
    :cond_3
    :goto_1
    iput p1, p0, Lop;->o:I

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lop;->j:I

    iget-object v1, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 22
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lop;->k:I

    iget-object v1, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 23
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 26
    :cond_0
    iget v0, p0, Lop;->q:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lop;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lop;->j:I

    iget v3, p0, Lop;->u:I

    sub-int/2addr v0, v3

    iget v4, p0, Lop;->e:I

    iget v5, p0, Lop;->d:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    iget-object v6, p0, Lop;->b:Landroid/graphics/drawable/StateListDrawable;

    .line 27
    invoke-virtual {v6, v2, v2, v3, v5}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v3, p0, Lop;->c:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lop;->v:I

    iget v6, p0, Lop;->k:I

    .line 28
    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    invoke-direct {p0}, Lop;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lop;->c:Landroid/graphics/drawable/Drawable;

    .line 30
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lop;->u:I

    int-to-float v0, v0

    int-to-float v3, v4

    .line 31
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v5, p0, Lop;->b:Landroid/graphics/drawable/StateListDrawable;

    .line 33
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 34
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lop;->u:I

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v3, v4

    int-to-float v3, v3

    .line 35
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 47
    :cond_1
    int-to-float v3, v0

    .line 36
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lop;->c:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v3, v4

    .line 38
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lop;->b:Landroid/graphics/drawable/StateListDrawable;

    .line 39
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v3, v4

    int-to-float v3, v3

    .line 40
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 35
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lop;->n:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lop;->k:I

    iget v3, p0, Lop;->y:I

    sub-int/2addr v0, v3

    iget v4, p0, Lop;->h:I

    iget v5, p0, Lop;->g:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    iget-object v6, p0, Lop;->w:Landroid/graphics/drawable/StateListDrawable;

    .line 41
    invoke-virtual {v6, v2, v2, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v3, p0, Lop;->x:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lop;->j:I

    iget v6, p0, Lop;->z:I

    .line 42
    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v2, v0

    .line 43
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lop;->x:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v4

    .line 45
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lop;->w:Landroid/graphics/drawable/StateListDrawable;

    .line 46
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v4

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    .line 40
    :cond_3
    return-void

    .line 23
    :cond_4
    :goto_1
    iget-object p1, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 24
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p1

    iput p1, p0, Lop;->j:I

    iget-object p1, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 25
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Lop;->k:I

    .line 26
    invoke-virtual {p0, v2}, Lop;->a(I)V

    return-void
.end method

.method final a(FF)Z
    .locals 2

    .line 21
    invoke-direct {p0}, Lop;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lop;->u:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    :goto_0
    goto :goto_1

    :cond_0
    iget v0, p0, Lop;->j:I

    iget v1, p0, Lop;->u:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    goto :goto_0

    :goto_1
    iget p1, p0, Lop;->e:I

    iget v0, p0, Lop;->d:I

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p1, v0

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 6

    iget v0, p0, Lop;->o:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v0, v4}, Lop;->a(FF)Z

    move-result v0

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lop;->b(FF)Z

    move-result v4

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    if-nez v0, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    iput v2, p0, Lop;->A:I

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lop;->f:F

    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    iput v3, p0, Lop;->A:I

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lop;->i:F

    :goto_1
    nop

    .line 53
    invoke-virtual {p0, v2}, Lop;->a(I)V

    const/4 v1, 0x1

    goto :goto_2

    .line 51
    :cond_3
    if-eq v0, v2, :cond_5

    :cond_4
    nop

    .line 53
    :goto_2
    return v1

    .line 51
    :cond_5
    return v3
.end method

.method public final b()V
    .locals 5

    iget v0, p0, Lop;->q:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 97
    return-void

    .line 0
    :cond_0
    iget-object v0, p0, Lop;->p:Landroid/animation/ValueAnimator;

    .line 93
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lop;->q:I

    iget-object v1, p0, Lop;->p:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 94
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lop;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lop;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lop;->p:Landroid/animation/ValueAnimator;

    .line 97
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 11

    iget v0, p0, Lop;->o:I

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lop;->a(FF)Z

    move-result v0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lop;->b(FF)Z

    move-result v3

    if-nez v0, :cond_1

    if-eqz v3, :cond_a

    goto :goto_0

    .line 59
    :cond_1
    if-nez v3, :cond_2

    iput v1, p0, Lop;->A:I

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lop;->f:F

    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    iput v2, p0, Lop;->A:I

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lop;->i:F

    :goto_1
    nop

    .line 59
    invoke-virtual {p0, v1}, Lop;->a(I)V

    return-void

    .line 60
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    iget v0, p0, Lop;->o:I

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 71
    :cond_4
    const/4 p1, 0x0

    iput p1, p0, Lop;->f:F

    iput p1, p0, Lop;->i:F

    .line 81
    invoke-virtual {p0, v2}, Lop;->a(I)V

    iput v3, p0, Lop;->A:I

    return-void

    .line 61
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget v0, p0, Lop;->o:I

    if-ne v0, v1, :cond_a

    .line 62
    invoke-virtual {p0}, Lop;->b()V

    iget v0, p0, Lop;->A:I

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_8

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v7, p0, Lop;->C:[I

    iget v5, p0, Lop;->t:I

    .line 64
    aput v5, v7, v3

    iget v6, p0, Lop;->j:I

    sub-int/2addr v6, v5

    .line 65
    aput v6, v7, v2

    .line 66
    aget v5, v7, v3

    int-to-float v5, v5

    aget v6, v7, v2

    int-to-float v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v5, p0, Lop;->h:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    .line 67
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_6

    goto :goto_3

    .line 80
    :cond_6
    iget v5, p0, Lop;->i:F

    iget-object v6, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 68
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v8

    iget-object v6, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 69
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v9

    iget v10, p0, Lop;->j:I

    .line 70
    move v6, v0

    invoke-static/range {v5 .. v10}, Lop;->a(FF[IIII)I

    move-result v5

    if-eqz v5, :cond_7

    iget-object v6, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 71
    invoke-virtual {v6, v5, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_7
    iput v0, p0, Lop;->i:F

    .line 67
    :cond_8
    :goto_3
    iget v0, p0, Lop;->A:I

    if-ne v0, v1, :cond_a

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v7, p0, Lop;->B:[I

    iget v0, p0, Lop;->t:I

    .line 73
    aput v0, v7, v3

    iget v1, p0, Lop;->k:I

    sub-int/2addr v1, v0

    .line 74
    aput v1, v7, v2

    .line 75
    aget v0, v7, v3

    int-to-float v0, v0

    aget v1, v7, v2

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lop;->e:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 76
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_a

    iget v5, p0, Lop;->f:F

    iget-object v0, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 77
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v8

    iget-object v0, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 78
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v9

    iget v10, p0, Lop;->k:I

    .line 79
    move v6, p1

    invoke-static/range {v5 .. v10}, Lop;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lop;->l:Landroid/support/v7/widget/RecyclerView;

    .line 80
    invoke-virtual {v1, v3, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_9
    iput p1, p0, Lop;->f:F

    return-void

    .line 59
    :cond_a
    return-void
.end method

.method final b(FF)Z
    .locals 2

    iget v0, p0, Lop;->k:I

    iget v1, p0, Lop;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Lop;->h:I

    iget v0, p0, Lop;->g:I

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p2, v0

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
