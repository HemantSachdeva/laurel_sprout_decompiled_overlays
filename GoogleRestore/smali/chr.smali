.class public final Lchr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:[Lchz;

.field private final b:[Landroid/graphics/Matrix;

.field private final c:[Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/PointF;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Path;

.field private final g:Lchz;

.field private final h:[F

.field private final i:[F

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lchz;

    iput-object v1, p0, Lchr;->a:[Lchz;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lchr;->b:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lchr;->c:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/PointF;

    .line 1
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lchr;->d:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/Path;

    .line 2
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lchr;->e:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    .line 3
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lchr;->f:Landroid/graphics/Path;

    new-instance v1, Lchz;

    .line 4
    invoke-direct {v1}, Lchz;-><init>()V

    iput-object v1, p0, Lchr;->g:Lchz;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lchr;->h:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lchr;->i:[F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lchr;->j:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lchr;->a:[Lchz;

    new-instance v3, Lchz;

    .line 5
    invoke-direct {v3}, Lchz;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lchr;->b:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    .line 6
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lchr;->c:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    .line 7
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final a(I)F
    .locals 0

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x5a

    int-to-float p0, p0

    return p0
.end method

.method private final a(Landroid/graphics/Path;I)Z
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    .line 70
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lchr;->a:[Lchz;

    .line 71
    aget-object v1, v1, p2

    iget-object v2, p0, Lchr;->b:[Landroid/graphics/Matrix;

    aget-object p2, v2, p2

    invoke-virtual {v1, p2, v0}, Lchz;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance p2, Landroid/graphics/RectF;

    .line 72
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 74
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 75
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 76
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 77
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Lchq;FLandroid/graphics/RectF;Lchj;Landroid/graphics/Path;)V
    .locals 16

    .line 8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    iget-object v5, v0, Lchr;->e:Landroid/graphics/Path;

    .line 9
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    iget-object v5, v0, Lchr;->f:Landroid/graphics/Path;

    .line 10
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    iget-object v5, v0, Lchr;->f:Landroid/graphics/Path;

    .line 11
    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ge v6, v8, :cond_9

    const/4 v8, 0x2

    if-eq v6, v9, :cond_2

    if-eq v6, v8, :cond_1

    if-eq v6, v7, :cond_0

    iget-object v10, v1, Lchq;->b:Lchg;

    goto :goto_1

    .line 17
    :cond_0
    iget-object v10, v1, Lchq;->a:Lchg;

    goto :goto_1

    :cond_1
    iget-object v10, v1, Lchq;->d:Lchg;

    goto :goto_1

    :cond_2
    iget-object v10, v1, Lchq;->c:Lchg;

    .line 11
    :goto_1
    if-eq v6, v9, :cond_5

    if-eq v6, v8, :cond_4

    if-eq v6, v7, :cond_3

    iget-object v11, v1, Lchq;->j:Ldab;

    goto :goto_2

    .line 17
    :cond_3
    iget-object v11, v1, Lchq;->i:Ldab;

    goto :goto_2

    :cond_4
    iget-object v11, v1, Lchq;->l:Ldab;

    goto :goto_2

    :cond_5
    iget-object v11, v1, Lchq;->k:Ldab;

    .line 11
    :goto_2
    iget-object v12, v0, Lchr;->a:[Lchz;

    .line 12
    aget-object v12, v12, v6

    .line 13
    invoke-interface {v10, v2}, Lchg;->a(Landroid/graphics/RectF;)F

    move-result v10

    move/from16 v13, p2

    invoke-virtual {v11, v12, v13, v10}, Ldab;->a(Lchz;FF)V

    invoke-static {v6}, Lchr;->a(I)F

    move-result v10

    iget-object v11, v0, Lchr;->b:[Landroid/graphics/Matrix;

    .line 14
    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    iget-object v11, v0, Lchr;->d:Landroid/graphics/PointF;

    if-eq v6, v9, :cond_8

    if-eq v6, v8, :cond_7

    if-eq v6, v7, :cond_6

    .line 18
    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v11, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    .line 15
    :cond_6
    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v11, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    .line 16
    :cond_7
    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v11, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    .line 17
    :cond_8
    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v11, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 18
    :goto_3
    iget-object v7, v0, Lchr;->b:[Landroid/graphics/Matrix;

    .line 19
    aget-object v7, v7, v6

    iget-object v8, v0, Lchr;->d:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v11, v0, Lchr;->d:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v7, v0, Lchr;->b:[Landroid/graphics/Matrix;

    .line 20
    aget-object v7, v7, v6

    invoke-virtual {v7, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v7, v0, Lchr;->h:[F

    iget-object v8, v0, Lchr;->a:[Lchz;

    .line 21
    aget-object v8, v8, v6

    iget v10, v8, Lchz;->b:F

    aput v10, v7, v5

    iget v8, v8, Lchz;->c:F

    .line 22
    aput v8, v7, v9

    iget-object v8, v0, Lchr;->b:[Landroid/graphics/Matrix;

    .line 23
    aget-object v8, v8, v6

    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v7, v0, Lchr;->c:[Landroid/graphics/Matrix;

    .line 24
    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget-object v7, v0, Lchr;->c:[Landroid/graphics/Matrix;

    .line 25
    aget-object v7, v7, v6

    iget-object v8, v0, Lchr;->h:[F

    aget v10, v8, v5

    aget v8, v8, v9

    invoke-virtual {v7, v10, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v7, v0, Lchr;->c:[Landroid/graphics/Matrix;

    .line 26
    aget-object v7, v7, v6

    invoke-static {v6}, Lchr;->a(I)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 17
    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v8, :cond_10

    iget-object v6, v0, Lchr;->h:[F

    iget-object v10, v0, Lchr;->a:[Lchz;

    .line 27
    aget-object v10, v10, v1

    const/4 v11, 0x0

    aput v11, v6, v5

    iget v10, v10, Lchz;->a:F

    .line 28
    aput v10, v6, v9

    iget-object v10, v0, Lchr;->b:[Landroid/graphics/Matrix;

    .line 29
    aget-object v10, v10, v1

    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v1, :cond_a

    iget-object v6, v0, Lchr;->h:[F

    .line 30
    aget v10, v6, v5

    aget v6, v6, v9

    invoke-virtual {v4, v10, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    .line 47
    :cond_a
    iget-object v6, v0, Lchr;->h:[F

    .line 31
    aget v10, v6, v5

    aget v6, v6, v9

    invoke-virtual {v4, v10, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 30
    :goto_5
    iget-object v6, v0, Lchr;->a:[Lchz;

    .line 32
    aget-object v6, v6, v1

    iget-object v10, v0, Lchr;->b:[Landroid/graphics/Matrix;

    aget-object v10, v10, v1

    invoke-virtual {v6, v10, v4}, Lchz;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz v3, :cond_b

    iget-object v6, v0, Lchr;->a:[Lchz;

    .line 33
    aget-object v6, v6, v1

    iget-object v10, v0, Lchr;->b:[Landroid/graphics/Matrix;

    aget-object v10, v10, v1

    iget-object v12, v3, Lchj;->a:Lchl;

    iget-object v12, v12, Lchl;->d:Ljava/util/BitSet;

    .line 34
    invoke-virtual {v12, v1, v5}, Ljava/util/BitSet;->set(IZ)V

    iget-object v12, v3, Lchj;->a:Lchl;

    iget-object v12, v12, Lchl;->b:[Lchy;

    .line 35
    invoke-virtual {v6, v10}, Lchz;->a(Landroid/graphics/Matrix;)Lchy;

    move-result-object v6

    aput-object v6, v12, v1

    :cond_b
    add-int/lit8 v6, v1, 0x1

    rem-int/lit8 v10, v6, 0x4

    iget-object v12, v0, Lchr;->h:[F

    iget-object v13, v0, Lchr;->a:[Lchz;

    .line 36
    aget-object v13, v13, v1

    iget v14, v13, Lchz;->b:F

    aput v14, v12, v5

    iget v13, v13, Lchz;->c:F

    .line 37
    aput v13, v12, v9

    iget-object v13, v0, Lchr;->b:[Landroid/graphics/Matrix;

    .line 38
    aget-object v13, v13, v1

    invoke-virtual {v13, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v12, v0, Lchr;->i:[F

    iget-object v13, v0, Lchr;->a:[Lchz;

    .line 39
    aget-object v13, v13, v10

    aput v11, v12, v5

    iget v13, v13, Lchz;->a:F

    .line 40
    aput v13, v12, v9

    iget-object v13, v0, Lchr;->b:[Landroid/graphics/Matrix;

    .line 41
    aget-object v13, v13, v10

    invoke-virtual {v13, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v12, v0, Lchr;->h:[F

    .line 42
    aget v13, v12, v5

    iget-object v14, v0, Lchr;->i:[F

    aget v15, v14, v5

    sub-float/2addr v13, v15

    float-to-double v7, v13

    aget v12, v12, v9

    aget v13, v14, v9

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const v8, -0x457ced91    # -0.001f

    add-float/2addr v7, v8

    .line 43
    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, v0, Lchr;->h:[F

    iget-object v12, v0, Lchr;->a:[Lchz;

    .line 44
    aget-object v12, v12, v1

    iget v13, v12, Lchz;->b:F

    aput v13, v8, v5

    .line 45
    iget v12, v12, Lchz;->c:F

    aput v12, v8, v9

    iget-object v12, v0, Lchr;->b:[Landroid/graphics/Matrix;

    .line 46
    aget-object v12, v12, v1

    invoke-virtual {v12, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v8, 0x3

    if-eq v1, v9, :cond_c

    if-eq v1, v8, :cond_c

    .line 48
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    iget-object v13, v0, Lchr;->h:[F

    aget v13, v13, v9

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    goto :goto_6

    .line 47
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    iget-object v13, v0, Lchr;->h:[F

    aget v13, v13, v5

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 48
    :goto_6
    iget-object v12, v0, Lchr;->g:Lchz;

    .line 49
    invoke-virtual {v12}, Lchz;->a()V

    iget-object v12, v0, Lchr;->g:Lchz;

    .line 50
    invoke-virtual {v12, v7, v11}, Lchz;->a(FF)V

    new-instance v7, Landroid/graphics/Path;

    .line 51
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iget-object v12, v0, Lchr;->g:Lchz;

    iget-object v13, v0, Lchr;->c:[Landroid/graphics/Matrix;

    .line 52
    aget-object v13, v13, v1

    invoke-virtual {v12, v13, v7}, Lchz;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-boolean v12, v0, Lchr;->j:Z

    if-eqz v12, :cond_e

    .line 53
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    invoke-direct {v0, v7, v1}, Lchr;->a(Landroid/graphics/Path;I)Z

    move-result v12

    if-nez v12, :cond_d

    .line 55
    invoke-direct {v0, v7, v10}, Lchr;->a(Landroid/graphics/Path;I)Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_d
    iget-object v10, v0, Lchr;->f:Landroid/graphics/Path;

    .line 57
    sget-object v12, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v7, v7, v10, v12}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v7, v0, Lchr;->h:[F

    .line 58
    aput v11, v7, v5

    iget-object v10, v0, Lchr;->g:Lchz;

    iget v10, v10, Lchz;->a:F

    .line 59
    aput v10, v7, v9

    iget-object v10, v0, Lchr;->c:[Landroid/graphics/Matrix;

    .line 60
    aget-object v10, v10, v1

    invoke-virtual {v10, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v7, v0, Lchr;->e:Landroid/graphics/Path;

    iget-object v10, v0, Lchr;->h:[F

    .line 61
    aget v11, v10, v5

    aget v10, v10, v9

    invoke-virtual {v7, v11, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, v0, Lchr;->g:Lchz;

    iget-object v10, v0, Lchr;->c:[Landroid/graphics/Matrix;

    .line 62
    aget-object v10, v10, v1

    iget-object v11, v0, Lchr;->e:Landroid/graphics/Path;

    invoke-virtual {v7, v10, v11}, Lchz;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_7

    .line 65
    :cond_e
    iget-object v7, v0, Lchr;->g:Lchz;

    iget-object v10, v0, Lchr;->c:[Landroid/graphics/Matrix;

    .line 56
    aget-object v10, v10, v1

    invoke-virtual {v7, v10, v4}, Lchz;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 62
    :goto_7
    if-eqz v3, :cond_f

    iget-object v7, v0, Lchr;->g:Lchz;

    iget-object v10, v0, Lchr;->c:[Landroid/graphics/Matrix;

    .line 63
    aget-object v10, v10, v1

    iget-object v11, v3, Lchj;->a:Lchl;

    iget-object v11, v11, Lchl;->d:Ljava/util/BitSet;

    add-int/lit8 v12, v1, 0x4

    .line 64
    invoke-virtual {v11, v12, v5}, Ljava/util/BitSet;->set(IZ)V

    iget-object v11, v3, Lchj;->a:Lchl;

    iget-object v11, v11, Lchl;->c:[Lchy;

    .line 65
    invoke-virtual {v7, v10}, Lchz;->a(Landroid/graphics/Matrix;)Lchy;

    move-result-object v7

    aput-object v7, v11, v1

    :cond_f
    move v1, v6

    const/4 v7, 0x3

    const/4 v8, 0x4

    goto/16 :goto_4

    .line 66
    :cond_10
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lchr;->e:Landroid/graphics/Path;

    .line 67
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, v0, Lchr;->e:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lchr;->e:Landroid/graphics/Path;

    .line 69
    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_11
    return-void
.end method
