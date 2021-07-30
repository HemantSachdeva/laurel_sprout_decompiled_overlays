.class public Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;
.super Landroid/view/View;
.source "PG"


# instance fields
.field private final A:Landroid/view/animation/Interpolator;

.field private B:Lafn;

.field private C:I

.field public final a:I

.field public final b:I

.field public final c:[[Z

.field public d:Z

.field public e:F

.field public f:F

.field public g:F

.field public final h:Landroid/view/animation/Interpolator;

.field public i:Lajj;

.field private final j:[[Lafl;

.field private final k:I

.field private final l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/Paint;

.field private final n:Ljava/util/ArrayList;

.field private o:F

.field private p:F

.field private q:[J

.field private r:Z

.field private s:Z

.field private t:Z

.field private final u:Landroid/graphics/Path;

.field private final v:Landroid/graphics/Rect;

.field private final w:Landroid/graphics/Rect;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Paint;

    .line 3
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    .line 4
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->m:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    .line 5
    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->n:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    const-class v4, Z

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c:[[Z

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->o:F

    iput v3, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->p:F

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->q:[J

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->C:I

    iput-boolean v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->r:Z

    iput-boolean v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->s:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d:Z

    iput-boolean v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->t:Z

    const v4, 0x3f19999a    # 0.6f

    iput v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->e:F

    new-instance v4, Landroid/graphics/Path;

    .line 6
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->u:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Rect;

    .line 7
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->v:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    .line 8
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->w:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p0, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->setClickable(Z)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 13
    const v5, 0x7f06016c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->x:I

    .line 14
    const v5, 0x7f06016b

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->y:I

    .line 15
    const v5, 0x7f06016d

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->z:I

    iget v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->x:I

    .line 16
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 19
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 20
    const v5, 0x7f07010c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->k:I

    int-to-float v5, v5

    .line 21
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    const v0, 0x7f07010d

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a:I

    .line 23
    const v0, 0x7f07010e

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b:I

    .line 24
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setDither(Z)V

    new-array p2, v1, [I

    fill-array-data p2, :array_1

    const-class v0, Lafl;

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Lafl;

    iput-object p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->j:[[Lafl;

    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->j:[[Lafl;

    .line 26
    aget-object v4, v4, p2

    new-instance v5, Lafl;

    invoke-direct {v5}, Lafl;-><init>()V

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->j:[[Lafl;

    .line 27
    aget-object v4, v4, p2

    aget-object v4, v4, v2

    iget v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a:I

    div-int/2addr v5, v1

    int-to-float v5, v5

    iput v5, v4, Lafl;->c:F

    iput p2, v4, Lafl;->a:I

    iput v2, v4, Lafl;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const p2, 0x10c000d

    .line 28
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->h:Landroid/view/animation/Interpolator;

    const p2, 0x10c000e

    .line 29
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->A:Landroid/view/animation/Interpolator;

    .line 30
    new-instance p1, Lafn;

    .line 31
    invoke-direct {p1, p0, p0}, Lafn;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->B:Lafn;

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private static final a(II)I
    .locals 2

    .line 226
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 227
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_0

    return v0

    .line 228
    :cond_0
    return p1

    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final a(FF)Lafk;
    .locals 8

    .line 48
    invoke-virtual {p0, p2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(F)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(F)I

    move-result p1

    if-gez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c:[[Z

    .line 50
    aget-object v1, v1, p2

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_2

    move-object p1, v0

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {p2, p1}, Lafk;->a(II)Lafk;

    move-result-object p1

    .line 48
    :goto_0
    if-eqz p1, :cond_a

    iget-object p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->n:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_7

    .line 53
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lafk;

    iget v0, p1, Lafk;->a:I

    .line 54
    iget v3, p2, Lafk;->a:I

    sub-int/2addr v0, v3

    iget v4, p1, Lafk;->b:I

    .line 55
    iget v5, p2, Lafk;->b:I

    sub-int/2addr v4, v5

    .line 56
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-eq v6, v2, :cond_4

    .line 57
    iget v3, p2, Lafk;->a:I

    if-lez v0, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    .line 64
    :cond_3
    const/4 v6, -0x1

    .line 57
    :goto_1
    add-int/2addr v3, v6

    goto :goto_2

    .line 64
    :cond_4
    nop

    .line 58
    :goto_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ne v6, v7, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    .line 59
    iget p2, p2, Lafk;->b:I

    if-lez v4, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    .line 64
    :cond_5
    nop

    .line 59
    :goto_3
    add-int v5, p2, v1

    goto :goto_4

    .line 64
    :cond_6
    nop

    .line 60
    :goto_4
    invoke-static {v3, v5}, Lafk;->a(II)Lafk;

    move-result-object v0

    goto :goto_5

    .line 64
    :cond_7
    nop

    .line 60
    :goto_5
    if-eqz v0, :cond_8

    iget-object p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c:[[Z

    iget v1, v0, Lafk;->a:I

    .line 61
    aget-object p2, p2, v1

    iget v1, v0, Lafk;->b:I

    aget-boolean p2, p2, v1

    if-nez p2, :cond_8

    .line 62
    invoke-direct {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(Lafk;)V

    .line 63
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(Lafk;)V

    iget-boolean p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->s:Z

    if-eqz p2, :cond_9

    const/4 p2, 0x3

    .line 64
    invoke-virtual {p0, v2, p2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->performHapticFeedback(II)Z

    :cond_9
    return-object p1

    :cond_a
    return-object v0
.end method

.method private final a(Lafk;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c:[[Z

    iget v1, p1, Lafk;->a:I

    .line 33
    aget-object v0, v0, v1

    iget v1, p1, Lafk;->b:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->n:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->j:[[Lafl;

    iget v1, p1, Lafk;->a:I

    .line 35
    aget-object v0, v0, v1

    iget v1, p1, Lafk;->b:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a:I

    iget v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b:I

    iget-object v7, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->A:Landroid/view/animation/Interpolator;

    new-instance v9, Laff;

    .line 36
    invoke-direct {v9, p0, v0}, Laff;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;Lafl;)V

    const/4 v10, 0x2

    div-int/2addr v1, v10

    int-to-float v3, v1

    div-int/2addr v2, v10

    int-to-float v4, v2

    const-wide/16 v5, 0x60

    move-object v2, p0

    move-object v8, v0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(FFJLandroid/view/animation/Interpolator;Lafl;Ljava/lang/Runnable;)V

    iget v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->o:F

    iget v7, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->p:F

    iget v1, p1, Lafk;->b:I

    .line 37
    invoke-virtual {p0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(I)F

    move-result v6

    iget p1, p1, Lafk;->a:I

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(I)F

    move-result v8

    new-array p1, v10, [F

    fill-array-data p1, :array_0

    .line 39
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 40
    new-instance v1, Lafg;

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lafg;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;Lafl;FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lafi;

    .line 41
    invoke-direct {v1, v0}, Lafi;-><init>(Lafl;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->h:Landroid/view/animation/Interpolator;

    .line 42
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 43
    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, v0, Lafl;->h:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->B:Lafn;

    .line 45
    invoke-virtual {p1}, Lafe;->a()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d:Z

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->B:Lafn;

    .line 230
    invoke-virtual {p1}, Lafe;->a()V

    return-void
.end method

.method private final b(Z)I
    .locals 3

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d:Z

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    iget p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->C:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->y:I

    return p1

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    if-eq p1, v0, :cond_3

    const-string p1, "null"

    goto :goto_0

    .line 78
    :cond_3
    const-string p1, "Correct"

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x15

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "unknown display mode "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 0
    :cond_4
    :goto_1
    iget p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->z:I

    return p1

    :cond_5
    :goto_2
    iget p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->x:I

    return p1
.end method

.method private final b()V
    .locals 2

    .line 81
    const v0, 0x7f11010b

    invoke-direct {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c(I)V

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->i:Lajj;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lajj;->a:Lajk;

    iget-object v0, v0, Lajk;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final c()V
    .locals 1

    .line 80
    const v0, 0x7f110109

    invoke-direct {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c(I)V

    return-void
.end method

.method private final c(I)V
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final d()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c:[[Z

    .line 46
    aget-object v4, v4, v1

    aput-boolean v0, v4, v3

    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->q:[J

    add-int v5, v1, v3

    const-wide/16 v6, 0x0

    .line 47
    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->f:F

    int-to-float v0, v0

    int-to-float p1, p1

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public final a(F)I
    .locals 6

    iget v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->g:F

    iget v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->e:F

    mul-float v1, v1, v0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    int-to-float v4, v3

    mul-float v4, v4, v0

    add-float/2addr v4, v2

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_1

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    return v3

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->n:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 224
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->C:I

    .line 225
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->invalidate()V

    return-void
.end method

.method public final a(FFJLandroid/view/animation/Interpolator;Lafl;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 231
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 232
    new-instance p2, Lafh;

    invoke-direct {p2, p0, p6}, Lafh;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;Lafl;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p7, :cond_0

    new-instance p2, Lafj;

    .line 233
    invoke-direct {p2, p7}, Lafj;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    :cond_0
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final b(I)F
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->g:F

    int-to-float v0, v0

    int-to-float p1, p1

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public final b(F)I
    .locals 6

    iget v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->f:F

    iget v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->e:F

    mul-float v1, v1, v0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    int-to-float v4, v3

    mul-float v4, v4, v0

    add-float/2addr v4, v2

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_1

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    return v3

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->B:Lafn;

    iget-object v2, v1, Lafe;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 66
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    iget-object v2, v1, Lafe;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x7

    const/high16 v6, -0x80000000

    if-eq v2, v5, :cond_2

    const/16 v5, 0x9

    if-eq v2, v5, :cond_2

    const/16 p1, 0xa

    if-eq v2, p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 73
    :cond_1
    iget p1, v1, Lafe;->k:I

    if-eq p1, v6, :cond_7

    .line 68
    invoke-virtual {v1, v6}, Lafe;->a(I)V

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v5, v1, Lafn;->l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    .line 70
    invoke-virtual {v5, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(F)I

    move-result p1

    if-gez p1, :cond_3

    const/high16 v5, -0x80000000

    goto :goto_0

    .line 74
    :cond_3
    iget-object v5, v1, Lafn;->l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    .line 71
    invoke-virtual {v5, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(F)I

    move-result v2

    if-gez v2, :cond_4

    const/high16 v5, -0x80000000

    goto :goto_0

    :cond_4
    mul-int/lit8 v5, p1, 0x3

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    iget-object v7, v1, Lafn;->l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    .line 72
    iget-object v7, v7, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c:[[Z

    .line 73
    aget-object p1, v7, p1

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/high16 v5, -0x80000000

    .line 74
    :goto_0
    invoke-virtual {v1, v5}, Lafe;->a(I)V

    if-eq v5, v6, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 68
    :cond_7
    const/4 v3, 0x0

    .line 66
    :goto_1
    or-int p1, v0, v3

    return p1
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->n:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c:[[Z

    iget v5, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->C:I

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-ne v5, v6, :cond_2

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    long-to-int v5, v9

    add-int/lit8 v9, v3, 0x1

    mul-int/lit16 v9, v9, 0x2bc

    rem-int/2addr v5, v9

    div-int/lit16 v9, v5, 0x2bc

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d()V

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_0

    .line 86
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lafk;

    iget v12, v11, Lafk;->a:I

    .line 87
    aget-object v12, v4, v12

    iget v11, v11, Lafk;->b:I

    aput-boolean v8, v12, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    if-lez v9, :cond_1

    if-ge v9, v3, :cond_1

    rem-int/lit16 v5, v5, 0x2bc

    int-to-float v5, v5

    const/high16 v10, 0x442f0000    # 700.0f

    div-float/2addr v5, v10

    add-int/lit8 v10, v9, -0x1

    .line 88
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lafk;

    .line 89
    iget v11, v10, Lafk;->b:I

    invoke-virtual {v0, v11}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(I)F

    move-result v11

    .line 90
    iget v10, v10, Lafk;->a:I

    invoke-virtual {v0, v10}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(I)F

    move-result v10

    .line 91
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lafk;

    .line 92
    iget v12, v9, Lafk;->b:I

    invoke-virtual {v0, v12}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(I)F

    move-result v12

    .line 93
    iget v9, v9, Lafk;->a:I

    invoke-virtual {v0, v9}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(I)F

    move-result v9

    sub-float/2addr v12, v11

    mul-float v12, v12, v5

    add-float/2addr v11, v12

    iput v11, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->o:F

    sub-float/2addr v9, v10

    mul-float v5, v5, v9

    add-float/2addr v10, v5

    iput v10, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->p:F

    .line 94
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->invalidate()V

    :cond_2
    iget-object v5, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->u:Landroid/graphics/Path;

    .line 95
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x3

    const/4 v11, 0x0

    const/16 v12, 0xff

    if-ge v9, v10, :cond_4

    .line 96
    invoke-virtual {v0, v9}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(I)F

    move-result v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v10, :cond_3

    iget-object v15, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->j:[[Lafl;

    .line 97
    aget-object v15, v15, v9

    aget-object v15, v15, v14

    .line 98
    invoke-virtual {v0, v14}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(I)F

    move-result v7

    .line 99
    iget v10, v15, Lafl;->d:F

    .line 100
    iget v10, v15, Lafl;->c:F

    aget-object v17, v4, v9

    aget-boolean v6, v17, v14

    iget v15, v15, Lafl;->e:F

    iget-object v15, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->l:Landroid/graphics/Paint;

    .line 101
    invoke-direct {v0, v6}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(Z)I

    move-result v6

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->l:Landroid/graphics/Paint;

    .line 102
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    float-to-int v6, v7

    int-to-float v6, v6

    float-to-int v7, v13

    int-to-float v7, v7

    add-float/2addr v7, v11

    iget-object v15, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->l:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {v1, v6, v7, v10, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x2

    const/4 v10, 0x3

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x2

    goto :goto_1

    :cond_4
    iget-object v6, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->m:Landroid/graphics/Paint;

    .line 104
    invoke-direct {v0, v8}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(Z)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v9, v3, :cond_b

    .line 106
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lafk;

    .line 107
    iget v8, v15, Lafk;->a:I

    aget-object v8, v4, v8

    iget v11, v15, Lafk;->b:I

    aget-boolean v8, v8, v11

    if-nez v8, :cond_5

    goto/16 :goto_6

    .line 130
    :cond_5
    iget-object v8, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->q:[J

    .line 108
    aget-wide v18, v8, v9

    const-wide/16 v20, 0x0

    cmp-long v11, v18, v20

    if-nez v11, :cond_6

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    aput-wide v18, v8, v9

    .line 110
    :cond_6
    iget v8, v15, Lafk;->b:I

    invoke-virtual {v0, v8}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(I)F

    move-result v8

    .line 111
    iget v11, v15, Lafk;->a:I

    invoke-virtual {v0, v11}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(I)F

    move-result v11

    if-eqz v9, :cond_a

    iget-object v12, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->q:[J

    .line 112
    aget-wide v19, v12, v9

    move-object/from16 v21, v15

    sub-long v14, v6, v19

    long-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    const/high16 v12, 0x437f0000    # 255.0f

    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    float-to-int v12, v12

    iget-object v14, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->j:[[Lafl;

    .line 113
    move-object/from16 v19, v2

    move-object/from16 v15, v21

    iget v2, v15, Lafk;->a:I

    aget-object v2, v14, v2

    iget v14, v15, Lafk;->b:I

    aget-object v2, v2, v14

    .line 114
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 115
    invoke-virtual {v5, v10, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 116
    iget v10, v2, Lafl;->f:F

    const/4 v13, 0x1

    cmpl-float v14, v10, v13

    if-eqz v14, :cond_8

    iget v2, v2, Lafl;->g:F

    cmpl-float v13, v2, v13

    if-eqz v13, :cond_8

    .line 120
    invoke-virtual {v5, v10, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->t:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->m:Landroid/graphics/Paint;

    rsub-int v10, v12, 0xff

    .line 121
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v14, 0xff

    goto :goto_4

    .line 123
    :cond_7
    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->m:Landroid/graphics/Paint;

    .line 122
    const/16 v10, 0xff

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v14, 0xff

    goto :goto_4

    .line 117
    :cond_8
    invoke-virtual {v5, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->t:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->m:Landroid/graphics/Paint;

    rsub-int v10, v12, 0xff

    .line 118
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v14, 0xff

    goto :goto_4

    :cond_9
    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->m:Landroid/graphics/Paint;

    .line 119
    const/16 v14, 0xff

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    :goto_4
    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->m:Landroid/graphics/Paint;

    .line 123
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 111
    :cond_a
    move-object/from16 v19, v2

    const/16 v14, 0xff

    .line 123
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v10, v8

    move v13, v11

    move-object/from16 v2, v19

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/16 v12, 0xff

    const/16 v16, 0x1

    goto/16 :goto_3

    .line 107
    :cond_b
    :goto_6
    iget-boolean v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d:Z

    if-nez v2, :cond_c

    iget v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->C:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    :cond_c
    if-eqz v16, :cond_d

    .line 124
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 125
    invoke-virtual {v5, v10, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->o:F

    iget v3, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->p:F

    .line 126
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->m:Landroid/graphics/Paint;

    iget v3, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->o:F

    sub-float/2addr v3, v10

    iget v4, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->p:F

    sub-float/2addr v4, v13

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v3, v3, v3

    mul-float v4, v4, v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    .line 127
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->f:F

    div-float/2addr v3, v4

    const v4, -0x41666666    # -0.3f

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v3, v3, v4

    .line 128
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 129
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->m:Landroid/graphics/Paint;

    .line 130
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    const/4 v1, 0x1

    .line 134
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 137
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 139
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected final onMeasure(II)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 142
    invoke-static {p1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(II)I

    move-result p1

    .line 143
    invoke-static {p2, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(II)I

    move-result p2

    .line 144
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 145
    invoke-virtual {p0, p1, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8

    .line 146
    check-cast p1, Lafp;

    .line 147
    invoke-virtual {p1}, Lafp;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lafp;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 159
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 148
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x0

    .line 150
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 151
    aget-byte v5, v0, v4

    add-int/lit8 v5, v5, -0x31

    int-to-byte v5, v5

    div-int/lit8 v6, v5, 0x3

    rem-int/2addr v5, v2

    .line 152
    invoke-static {v6, v5}, Lafk;->a(II)Lafk;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 147
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->n:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->n:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 156
    check-cast v5, Lafk;

    iget-object v6, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c:[[Z

    iget v7, v5, Lafk;->a:I

    .line 157
    aget-object v6, v6, v7

    iget v5, v5, Lafk;->b:I

    aput-boolean v4, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iput v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->C:I

    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->invalidate()V

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iget v1, p1, Lafp;->b:I

    .line 159
    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->C:I

    iget-boolean v0, p1, Lafp;->c:Z

    iput-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->r:Z

    iget-boolean p1, p1, Lafp;->d:Z

    iput-boolean p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->s:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 160
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v6, Lafp;

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->n:Ljava/util/ArrayList;

    .line 161
    invoke-static {v0}, Lbjf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->C:I

    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_0

    .line 162
    iget-boolean v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->r:Z

    iget-boolean v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->s:Z

    .line 163
    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lafp;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZ)V

    return-object v6

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 162
    throw v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->f:F

    .line 165
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->g:F

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->B:Lafn;

    .line 166
    invoke-virtual {p1}, Lafe;->a()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    const/4 v3, 0x3

    if-eq v0, v2, :cond_d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_1

    .line 222
    return v1

    .line 219
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d:Z

    if-eqz p1, :cond_2

    .line 220
    invoke-direct {p0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a()V

    .line 222
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c()V

    :cond_2
    return v2

    .line 188
    :cond_3
    iget v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->k:I

    int-to-float v0, v0

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->w:Landroid/graphics/Rect;

    .line 191
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, 0x1

    if-ge v1, v5, :cond_b

    if-ge v1, v3, :cond_4

    .line 192
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    :goto_1
    if-ge v1, v3, :cond_5

    .line 193
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v6

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 194
    :goto_2
    invoke-direct {p0, v5, v6}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(FF)Lafk;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->n:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v7, :cond_6

    if-ne v8, v2, :cond_6

    .line 196
    invoke-direct {p0, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(Z)V

    .line 197
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b()V

    const/4 v8, 0x1

    :cond_6
    iget v9, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->o:F

    sub-float v9, v5, v9

    .line 198
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->p:F

    sub-float v10, v6, v10

    .line 199
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-gtz v9, :cond_7

    cmpl-float v9, v10, v11

    if-lez v9, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    .line 214
    :cond_7
    const/4 v4, 0x1

    .line 199
    :cond_8
    :goto_3
    iget-boolean v9, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d:Z

    if-eqz v9, :cond_a

    if-lez v8, :cond_a

    iget-object v9, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->n:Ljava/util/ArrayList;

    add-int/lit8 v8, v8, -0x1

    .line 200
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lafk;

    .line 201
    iget v9, v8, Lafk;->b:I

    invoke-virtual {p0, v9}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(I)F

    move-result v9

    .line 202
    iget v8, v8, Lafk;->a:I

    invoke-virtual {p0, v8}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(I)F

    move-result v8

    .line 203
    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float/2addr v10, v0

    .line 204
    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v0

    .line 205
    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float/2addr v9, v0

    .line 206
    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v6, v0

    if-eqz v7, :cond_9

    iget v8, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->f:F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v8, v8, v11

    iget v12, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->g:F

    mul-float v12, v12, v11

    iget v11, v7, Lafk;->b:I

    .line 207
    invoke-virtual {p0, v11}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(I)F

    move-result v11

    iget v7, v7, Lafk;->a:I

    .line 208
    invoke-virtual {p0, v7}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(I)F

    move-result v7

    sub-float v13, v11, v8

    .line 209
    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    add-float/2addr v11, v8

    .line 210
    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float v8, v7, v12

    .line 211
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    add-float/2addr v7, v12

    .line 212
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_4

    .line 214
    :cond_9
    nop

    .line 212
    :goto_4
    iget-object v7, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->w:Landroid/graphics/Rect;

    .line 213
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 214
    invoke-virtual {v7, v8, v9, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 215
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->o:F

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->p:F

    if-eqz v4, :cond_c

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->v:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->w:Landroid/graphics/Rect;

    .line 217
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->v:Landroid/graphics/Rect;

    .line 218
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->v:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->w:Landroid/graphics/Rect;

    .line 219
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_c
    return v2

    .line 176
    :cond_d
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->n:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    .line 181
    invoke-direct {p0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(Z)V

    const/4 p1, 0x0

    :goto_5
    if-ge p1, v3, :cond_10

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v3, :cond_f

    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->j:[[Lafl;

    .line 182
    aget-object v4, v4, p1

    aget-object v4, v4, v0

    .line 183
    iget-object v5, v4, Lafl;->h:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_e

    .line 184
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v5, 0x1

    iput v5, v4, Lafl;->f:F

    iput v5, v4, Lafl;->g:F

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_10
    const p1, 0x7f11010a

    .line 185
    invoke-direct {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c(I)V

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->i:Lajj;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->n:Ljava/util/ArrayList;

    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget-object v3, Land;->O:Lccv;

    invoke-virtual {v3}, Lccv;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v1, v3, :cond_11

    iget-object p1, p1, Lajj;->a:Lajk;

    .line 187
    sget-object v0, Lauu;->c:Lauu;

    invoke-virtual {p1, v0}, Lajk;->a(Lauu;)V

    goto :goto_7

    .line 189
    :cond_11
    iget-object p1, p1, Lajj;->a:Lajk;

    iget-object p1, p1, Lajk;->a:Lajg;

    .line 188
    invoke-interface {p1, v0}, Lajg;->a(Ljava/util/List;)V

    .line 189
    :cond_12
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->invalidate()V

    :cond_13
    return v2

    .line 169
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a()V

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 172
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(FF)Lafk;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 173
    invoke-direct {p0, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(Z)V

    iput v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->C:I

    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b()V

    goto :goto_8

    .line 179
    :cond_15
    iget-boolean v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d:Z

    if-eqz v4, :cond_16

    .line 175
    invoke-direct {p0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(Z)V

    .line 176
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c()V

    .line 174
    :cond_16
    :goto_8
    if-eqz v3, :cond_17

    iget v1, v3, Lafk;->b:I

    .line 177
    invoke-virtual {p0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(I)F

    move-result v1

    iget v3, v3, Lafk;->a:I

    .line 178
    invoke-virtual {p0, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(I)F

    move-result v3

    iget v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->f:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v6, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->g:F

    div-float/2addr v6, v5

    sub-float v5, v1, v4

    float-to-int v5, v5

    sub-float v7, v3, v6

    float-to-int v7, v7

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    .line 179
    invoke-virtual {p0, v5, v7, v1, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->invalidate(IIII)V

    :cond_17
    iput v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->o:F

    iput p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->p:F

    return v2

    .line 167
    :cond_18
    :goto_9
    return v1
.end method
