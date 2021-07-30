.class public final Lxg;
.super Landroid/graphics/drawable/Drawable;
.source "PG"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final e:Landroid/view/animation/Interpolator;

.field private static final f:Landroid/view/animation/Interpolator;

.field private static final g:[I


# instance fields
.field public final a:Lxf;

.field public final b:Landroid/content/res/Resources;

.field c:F

.field d:Z

.field private h:F

.field private final i:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 1
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lxg;->e:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Lvr;

    invoke-direct {v0}, Lvr;-><init>()V

    sput-object v0, Lxg;->f:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    sput-object v0, Lxg;->g:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    invoke-static {p1}, Ley;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lxg;->b:Landroid/content/res/Resources;

    new-instance p1, Lxf;

    .line 5
    invoke-direct {p1}, Lxf;-><init>()V

    iput-object p1, p0, Lxg;->a:Lxf;

    sget-object v0, Lxg;->g:[I

    iput-object v0, p1, Lxf;->i:[I

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lxf;->a(I)V

    .line 7
    const/high16 v0, 0x40200000    # 2.5f

    invoke-virtual {p1, v0}, Lxf;->a(F)V

    .line 8
    invoke-virtual {p0}, Lxg;->invalidateSelf()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 9
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 10
    new-instance v1, Lxd;

    invoke-direct {v1, p0, p1}, Lxd;-><init>(Lxg;Lxf;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 12
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    sget-object v1, Lxg;->e:Landroid/view/animation/Interpolator;

    .line 13
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lxe;

    .line 14
    invoke-direct {v1, p0, p1}, Lxe;-><init>(Lxg;Lxf;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lxg;->i:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static final a(FLxf;)V
    .locals 6

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 v0, -0x40c00000    # -0.75f

    add-float/2addr p0, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p0, v0

    .line 72
    invoke-virtual {p1}, Lxf;->b()I

    move-result v0

    iget-object v1, p1, Lxf;->i:[I

    .line 73
    invoke-virtual {p1}, Lxf;->a()I

    move-result v2

    aget v1, v1, v2

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v5, v2

    int-to-float v5, v5

    mul-float v5, v5, p0

    float-to-int v5, v5

    add-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x18

    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v5, v3

    int-to-float v5, v5

    mul-float v5, v5, p0

    float-to-int v5, v5

    add-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, p0

    float-to-int v3, v3

    add-int/2addr v4, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float p0, p0, v1

    float-to-int p0, p0

    add-int/2addr v0, p0

    or-int p0, v2, v0

    iput p0, p1, Lxf;->u:I

    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lxf;->b()I

    move-result p0

    iput p0, p1, Lxf;->u:I

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    iget-object v0, p0, Lxg;->a:Lxf;

    iget v1, v0, Lxf;->p:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    iput p1, v0, Lxf;->p:F

    .line 55
    :cond_0
    invoke-virtual {p0}, Lxg;->invalidateSelf()V

    return-void
.end method

.method final a(FLxf;Z)V
    .locals 7

    iget-boolean v0, p0, Lxg;->d:Z

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p1, p2}, Lxg;->a(FLxf;)V

    iget p3, p2, Lxf;->m:F

    const v0, 0x3f4ccccd    # 0.8f

    div-float/2addr p3, v0

    float-to-double v0, p3

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iget p3, p2, Lxf;->k:F

    iget v2, p2, Lxf;->l:F

    const v3, -0x43dc28f6    # -0.01f

    add-float/2addr v3, v2

    sub-float/2addr v3, p3

    mul-float v3, v3, p1

    add-float/2addr p3, v3

    iput p3, p2, Lxf;->e:F

    iput v2, p2, Lxf;->f:F

    iget p3, p2, Lxf;->m:F

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    sub-float/2addr v0, p3

    mul-float v0, v0, p1

    add-float/2addr p3, v0

    iput p3, p2, Lxf;->g:F

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    return-void

    .line 16
    :cond_2
    :goto_0
    iget p3, p2, Lxf;->m:F

    const v1, 0x3c23d70a    # 0.01f

    const v2, 0x3f4a3d71    # 0.79f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, p1, v3

    if-gez v4, :cond_3

    iget v0, p2, Lxf;->k:F

    sget-object v4, Lxg;->f:Landroid/view/animation/Interpolator;

    div-float v3, p1, v3

    .line 17
    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    add-float/2addr v3, v0

    goto :goto_1

    :cond_3
    iget v4, p2, Lxf;->k:F

    add-float/2addr v4, v2

    sget-object v5, Lxg;->f:Landroid/view/animation/Interpolator;

    const/high16 v6, -0x41000000    # -0.5f

    add-float/2addr v6, p1

    div-float/2addr v6, v3

    .line 18
    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v0, v3

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    sub-float v0, v4, v0

    move v3, v4

    .line 17
    :goto_1
    iget v1, p0, Lxg;->c:F

    iput v0, p2, Lxf;->e:F

    iput v3, p2, Lxf;->f:F

    const v0, 0x3e570a3c    # 0.20999998f

    mul-float v0, v0, p1

    add-float/2addr p3, v0

    iput p3, p2, Lxf;->g:F

    add-float/2addr p1, v1

    const/high16 p2, 0x43580000    # 216.0f

    mul-float p1, p1, p2

    iput p1, p0, Lxg;->h:F

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lxg;->a:Lxf;

    .line 53
    invoke-virtual {v0, p1}, Lxf;->a(Z)V

    .line 54
    invoke-virtual {p0}, Lxg;->invalidateSelf()V

    return-void
.end method

.method public final b(F)V
    .locals 2

    iget-object v0, p0, Lxg;->a:Lxf;

    const/4 v1, 0x0

    iput v1, v0, Lxf;->e:F

    iput p1, v0, Lxf;->f:F

    .line 58
    invoke-virtual {p0}, Lxg;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 19
    invoke-virtual {p0}, Lxg;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lxg;->h:F

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lxg;->a:Lxf;

    iget-object v8, v1, Lxf;->a:Landroid/graphics/RectF;

    iget v2, v1, Lxf;->q:F

    iget v3, v1, Lxf;->h:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v3, v9

    add-float/2addr v3, v2

    const/4 v10, 0x0

    cmpg-float v2, v2, v10

    if-gtz v2, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget v3, v1, Lxf;->r:I

    int-to-float v3, v3

    iget v4, v1, Lxf;->p:F

    mul-float v3, v3, v4

    div-float/2addr v3, v9

    iget v4, v1, Lxf;->h:F

    div-float/2addr v4, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v3, v2, v3

    goto :goto_0

    .line 35
    :cond_0
    nop

    .line 23
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v3

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    .line 25
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    .line 23
    invoke-virtual {v8, v2, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, v1, Lxf;->e:F

    iget v2, v1, Lxf;->g:F

    add-float/2addr v0, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v0, v0, v3

    iget v4, v1, Lxf;->f:F

    add-float/2addr v4, v2

    mul-float v4, v4, v3

    sub-float v11, v4, v0

    iget-object v2, v1, Lxf;->b:Landroid/graphics/Paint;

    iget v3, v1, Lxf;->u:I

    .line 27
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v1, Lxf;->b:Landroid/graphics/Paint;

    iget v3, v1, Lxf;->t:I

    .line 28
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, v1, Lxf;->h:F

    div-float/2addr v2, v9

    .line 29
    invoke-virtual {v8, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 30
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v9

    iget-object v6, v1, Lxf;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    neg-float v2, v2

    .line 31
    invoke-virtual {v8, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v6, 0x0

    iget-object v7, v1, Lxf;->b:Landroid/graphics/Paint;

    .line 32
    move-object v2, p1

    move-object v3, v8

    move v4, v0

    move v5, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v2, v1, Lxf;->n:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lxf;->o:Landroid/graphics/Path;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Path;

    .line 33
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v1, Lxf;->o:Landroid/graphics/Path;

    iget-object v2, v1, Lxf;->o:Landroid/graphics/Path;

    .line 34
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 36
    :goto_1
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, v1, Lxf;->r:I

    iget v4, v1, Lxf;->p:F

    iget-object v5, v1, Lxf;->o:Landroid/graphics/Path;

    .line 37
    invoke-virtual {v5, v10, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v1, Lxf;->o:Landroid/graphics/Path;

    iget v6, v1, Lxf;->r:I

    int-to-float v6, v6

    iget v7, v1, Lxf;->p:F

    mul-float v6, v6, v7

    .line 38
    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v1, Lxf;->o:Landroid/graphics/Path;

    iget v6, v1, Lxf;->r:I

    iget v7, v1, Lxf;->p:F

    int-to-float v6, v6

    mul-float v6, v6, v7

    div-float/2addr v6, v9

    iget v10, v1, Lxf;->s:I

    int-to-float v10, v10

    mul-float v10, v10, v7

    .line 39
    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v1, Lxf;->o:Landroid/graphics/Path;

    div-float/2addr v2, v9

    .line 40
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    add-float/2addr v2, v6

    int-to-float v3, v3

    mul-float v3, v3, v4

    div-float/2addr v3, v9

    sub-float/2addr v2, v3

    .line 41
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, v1, Lxf;->h:F

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    .line 40
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->offset(FF)V

    iget-object v2, v1, Lxf;->o:Landroid/graphics/Path;

    .line 42
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, v1, Lxf;->c:Landroid/graphics/Paint;

    iget v3, v1, Lxf;->u:I

    .line 43
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v1, Lxf;->c:Landroid/graphics/Paint;

    iget v3, v1, Lxf;->t:I

    .line 44
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-float/2addr v0, v11

    .line 46
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 47
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 46
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, v1, Lxf;->o:Landroid/graphics/Path;

    iget-object v1, v1, Lxf;->c:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget-object v0, p0, Lxg;->a:Lxf;

    iget v0, v0, Lxf;->t:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    iget-object v0, p0, Lxg;->i:Landroid/animation/Animator;

    .line 51
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lxg;->a:Lxf;

    iput p1, v0, Lxf;->t:I

    .line 52
    invoke-virtual {p0}, Lxg;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lxg;->a:Lxf;

    iget-object v0, v0, Lxf;->b:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 57
    invoke-virtual {p0}, Lxg;->invalidateSelf()V

    return-void
.end method

.method public final start()V
    .locals 3

    iget-object v0, p0, Lxg;->i:Landroid/animation/Animator;

    .line 59
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Lxg;->a:Lxf;

    .line 60
    invoke-virtual {v0}, Lxf;->c()V

    iget-object v0, p0, Lxg;->a:Lxf;

    iget v1, v0, Lxf;->f:F

    iget v2, v0, Lxf;->e:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxg;->d:Z

    iget-object v0, p0, Lxg;->i:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lxg;->i:Landroid/animation/Animator;

    .line 62
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Lxf;->a(I)V

    iget-object v0, p0, Lxg;->a:Lxf;

    .line 64
    invoke-virtual {v0}, Lxf;->d()V

    iget-object v0, p0, Lxg;->i:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lxg;->i:Landroid/animation/Animator;

    .line 66
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lxg;->i:Landroid/animation/Animator;

    .line 67
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lxg;->h:F

    iget-object v0, p0, Lxg;->a:Lxf;

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxf;->a(Z)V

    iget-object v0, p0, Lxg;->a:Lxf;

    .line 69
    invoke-virtual {v0, v1}, Lxf;->a(I)V

    iget-object v0, p0, Lxg;->a:Lxf;

    .line 70
    invoke-virtual {v0}, Lxf;->d()V

    .line 71
    invoke-virtual {p0}, Lxg;->invalidateSelf()V

    return-void
.end method
