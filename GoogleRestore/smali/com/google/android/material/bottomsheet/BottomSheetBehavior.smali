.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Ltt;
.source "PG"


# instance fields
.field private A:Z

.field private B:Lchq;

.field private C:Z

.field private D:Lcdv;

.field private E:Landroid/animation/ValueAnimator;

.field private F:Z

.field private G:I

.field private H:Z

.field private final I:Ljava/util/ArrayList;

.field private J:Landroid/view/VelocityTracker;

.field private K:I

.field private L:Ljava/util/Map;

.field private final M:Lvo;

.field public a:Z

.field public b:I

.field public c:Lchl;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field h:F

.field public i:I

.field j:F

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Lvp;

.field p:I

.field public q:I

.field public r:Ljava/lang/ref/WeakReference;

.field public s:Ljava/lang/ref/WeakReference;

.field public t:I

.field public u:Z

.field private v:I

.field private w:F

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ltt;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcdv;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:F

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Ljava/util/ArrayList;

    new-instance v0, Lcdq;

    .line 2
    invoke-direct {v0, p0}, Lcdq;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Lvo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Ltt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcdv;

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:F

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:F

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    const/4 v5, 0x4

    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    new-instance v6, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Ljava/util/ArrayList;

    new-instance v6, Lcdq;

    .line 4
    invoke-direct {v6, p0}, Lcdq;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Lvo;

    .line 5
    sget-object v6, Lcdw;->a:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 6
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Z

    .line 7
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9
    invoke-static {p1, v6, v1}, Lcsy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 10
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 19
    :cond_0
    nop

    .line 8
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    .line 10
    :goto_0
    const/4 p2, 0x2

    new-array v2, p2, [F

    fill-array-data v2, :array_0

    .line 11
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x1f4

    .line 12
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    .line 13
    new-instance v7, Lcdo;

    invoke-direct {v7, p0}, Lcdo;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:F

    .line 16
    const/4 v2, 0x7

    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    const/4 v7, -0x1

    if-eqz v4, :cond_1

    .line 17
    iget v8, v4, Landroid/util/TypedValue;->data:I

    if-ne v8, v7, :cond_1

    .line 20
    iget v2, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(I)V

    goto :goto_1

    .line 28
    :cond_1
    nop

    .line 18
    invoke-virtual {v6, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 19
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(I)V

    .line 20
    :goto_1
    nop

    .line 21
    const/4 v2, 0x6

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iget-boolean v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    const/4 v8, 0x5

    if-eq v7, v4, :cond_3

    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    if-ne v4, v8, :cond_2

    .line 22
    invoke-virtual {p0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(I)V

    .line 23
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i()V

    :cond_3
    const/16 v4, 0xa

    .line 24
    invoke-virtual {v6, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Z

    .line 25
    invoke-virtual {v6, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    const/4 v7, 0x3

    if-ne v5, v4, :cond_4

    goto :goto_3

    .line 38
    :cond_4
    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_5

    .line 26
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f()V

    :cond_5
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    if-ne v4, v2, :cond_6

    const/4 v2, 0x3

    goto :goto_2

    .line 28
    :cond_6
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    .line 27
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    .line 28
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i()V

    .line 25
    :goto_3
    const/16 v2, 0x9

    .line 29
    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Z

    .line 30
    invoke-virtual {v6, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    const/16 p2, 0x8

    .line 31
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:I

    .line 32
    invoke-virtual {v6, v8, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-lez v1, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-gez v1, :cond_9

    .line 33
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:F

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_7

    .line 34
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g()V

    :cond_7
    nop

    .line 35
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 36
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_8

    .line 39
    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(I)V

    goto :goto_4

    .line 42
    :cond_8
    nop

    .line 37
    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 38
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(I)V

    .line 40
    :goto_4
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:F

    return-void

    .line 32
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string p2, "ratio must be a float value between 0 and 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final a(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Z

    if-eqz v0, :cond_1

    const v0, 0x7f040058

    const v1, 0x7f12035a

    .line 47
    invoke-static {p1, p2, v0, v1}, Lchq;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lchp;

    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lchp;->a()Lchq;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Lchq;

    .line 49
    new-instance p2, Lchl;

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Lchq;

    invoke-direct {p2, v0}, Lchl;-><init>(Lchq;)V

    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:Lchl;

    .line 50
    invoke-virtual {p2, p1}, Lchl;->a(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:Lchl;

    .line 54
    invoke-virtual {p1, p4}, Lchl;->a(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    new-instance p2, Landroid/util/TypedValue;

    .line 51
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x1010031

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:Lchl;

    .line 53
    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, p2}, Lchl;->setTint(I)V

    :cond_1
    return-void
.end method

.method private final a(Landroid/view/View;Lgw;I)V
    .locals 1

    new-instance v0, Lcdr;

    .line 43
    invoke-direct {v0, p0, p3}, Lcdr;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    invoke-static {p1, p2, v0}, Lge;->a(Landroid/view/View;Lgw;Lhi;)V

    return-void
.end method

.method private final a(Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 201
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    return-void

    .line 202
    :cond_1
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 203
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 204
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:Ljava/util/Map;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    .line 205
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:Ljava/util/Map;

    goto :goto_0

    .line 209
    :cond_2
    return-void

    :cond_3
    nop

    .line 205
    :goto_0
    if-ge v2, v1, :cond_6

    .line 206
    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    .line 207
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_5

    :cond_4
    goto :goto_1

    :cond_5
    if-eqz p1, :cond_4

    .line 208
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:Ljava/util/Map;

    .line 209
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_6
    if-nez p1, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:Ljava/util/Map;

    :cond_7
    return-void
.end method

.method private final e()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:I

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private final e(I)V
    .locals 6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v4, 0x0

    .line 0
    :goto_0
    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    if-eq v5, v4, :cond_4

    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:Lchl;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_4

    .line 196
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    .line 197
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    return-void

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    if-ne p1, v3, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 199
    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 197
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    sub-float/2addr v4, p1

    aput v4, v0, v2

    aput p1, v0, v1

    .line 198
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    .line 199
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method private final f()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:I

    .line 45
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    return-void
.end method

.method private final g()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    return-void
.end method

.method private final h()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:I

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private final i()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v1, 0x80000

    .line 188
    invoke-static {v0, v1}, Lge;->b(Landroid/view/View;I)V

    const/high16 v1, 0x40000

    .line 189
    invoke-static {v0, v1}, Lge;->b(Landroid/view/View;I)V

    const/high16 v1, 0x100000

    .line 190
    invoke-static {v0, v1}, Lge;->b(Landroid/view/View;I)V

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 191
    sget-object v1, Lgw;->e:Lgw;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Lgw;I)V

    :cond_2
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    const/4 v2, 0x1

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    .line 194
    return-void

    .line 192
    :cond_3
    sget-object v1, Lgw;->d:Lgw;

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Lgw;I)V

    sget-object v1, Lgw;->c:Lgw;

    .line 193
    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Lgw;I)V

    return-void

    .line 195
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    if-eq v2, v1, :cond_5

    goto :goto_0

    .line 194
    :cond_5
    const/4 v3, 0x3

    :goto_0
    sget-object v1, Lgw;->c:Lgw;

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Lgw;I)V

    return-void

    .line 193
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    if-eq v2, v1, :cond_7

    goto :goto_1

    .line 195
    :cond_7
    const/4 v3, 0x4

    :goto_1
    sget-object v1, Lgw;->d:Lgw;

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Lgw;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Lvp;

    return-void
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Z

    goto :goto_1

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Z

    .line 158
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    .line 159
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c()V

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    goto :goto_0

    .line 173
    :cond_0
    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:I

    if-gt v0, v2, :cond_3

    move v0, v2

    const/4 p2, 0x3

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    if-eqz v1, :cond_4

    if-ne p2, v0, :cond_4

    .line 172
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    move v0, p2

    const/4 p2, 0x5

    .line 0
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;IIZ)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    .line 172
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Illegal state argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/view/View;IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Lvp;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {v0, p4, p3}, Lvp;->a(II)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p4

    iput-object p1, v0, Lvp;->d:Landroid/view/View;

    const/4 v1, -0x1

    iput v1, v0, Lvp;->c:I

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, p4, p3, v1, v1}, Lvp;->a(IIII)Z

    move-result p3

    if-nez p3, :cond_1

    iget p1, v0, Lvp;->a:I

    if-nez p1, :cond_4

    iget-object p1, v0, Lvp;->d:Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-object p1, v0, Lvp;->d:Landroid/view/View;

    goto :goto_1

    .line 178
    :cond_1
    :goto_0
    const/4 p3, 0x2

    .line 181
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    .line 182
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcdv;

    if-nez p3, :cond_2

    new-instance p3, Lcdv;

    .line 183
    invoke-direct {p3, p0, p1, p2}, Lcdv;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcdv;

    :cond_2
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcdv;

    .line 184
    iget-boolean p4, p3, Lcdv;->a:Z

    if-nez p4, :cond_3

    iput p2, p3, Lcdv;->b:I

    .line 185
    invoke-static {p1, p3}, Lge;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcdv;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcdv;->a:Z

    return-void

    :cond_3
    iput p2, p3, Lcdv;->b:I

    return-void

    .line 186
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 5

    .line 131
    check-cast p2, Lcdu;

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:I

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    and-int/lit8 v4, p1, 0x1

    if-ne v4, v2, :cond_3

    :cond_2
    iget v4, p2, Lcdu;->b:I

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    :cond_3
    if-eq p1, v3, :cond_4

    and-int/lit8 v4, p1, 0x2

    if-ne v4, v0, :cond_5

    :cond_4
    iget-boolean v4, p2, Lcdu;->e:Z

    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    :cond_5
    if-eq p1, v3, :cond_6

    and-int/lit8 v4, p1, 0x4

    if-ne v4, v1, :cond_7

    :cond_6
    iget-boolean v4, p2, Lcdu;->f:Z

    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    :cond_7
    if-eq p1, v3, :cond_8

    const/16 v3, 0x8

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_0

    :cond_8
    iget-boolean p1, p2, Lcdu;->g:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Z

    :goto_0
    iget p1, p2, Lcdu;->a:I

    if-eq p1, v2, :cond_a

    if-ne p1, v0, :cond_9

    goto :goto_1

    :cond_9
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    return-void

    :cond_a
    :goto_1
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;I)V
    .locals 4

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne p3, v0, :cond_0

    .line 135
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_f

    .line 136
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    if-ne p2, p3, :cond_f

    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I

    const/4 p3, 0x4

    const/4 v0, 0x6

    if-lez p2, :cond_4

    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:I

    goto/16 :goto_1

    .line 137
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    if-le p2, p3, :cond_3

    move p2, p3

    const/4 v1, 0x6

    goto/16 :goto_1

    :cond_3
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    goto/16 :goto_1

    :cond_4
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Landroid/view/VelocityTracker;

    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_0

    .line 140
    :cond_5
    const/16 v2, 0x3e8

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:F

    .line 138
    invoke-virtual {p2, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:I

    .line 139
    invoke-virtual {p2, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p2

    .line 140
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;F)Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    const/4 v1, 0x5

    goto/16 :goto_1

    .line 139
    :cond_6
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I

    if-nez p2, :cond_b

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    if-eqz v2, :cond_8

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:I

    sub-int v0, p2, v0

    .line 142
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge v0, p2, :cond_7

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:I

    goto :goto_1

    :cond_7
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    const/4 v1, 0x4

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    if-ge p2, v2, :cond_a

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    sub-int p3, p2, p3

    .line 143
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_9

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    goto :goto_1

    :cond_9
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    const/4 v1, 0x6

    goto :goto_1

    :cond_a
    sub-int v1, p2, v2

    .line 144
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge v1, p2, :cond_c

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    const/4 v1, 0x6

    goto :goto_1

    :cond_b
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    if-eqz p2, :cond_d

    :cond_c
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    const/4 v1, 0x4

    goto :goto_1

    .line 145
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    sub-int v1, p2, v1

    .line 146
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge v1, p2, :cond_e

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    const/4 v1, 0x6

    goto :goto_1

    :cond_e
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    const/4 v1, 0x4

    .line 136
    :goto_1
    nop

    .line 147
    const/4 p3, 0x0

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;IIZ)V

    iput-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    return-void

    .line 136
    :cond_f
    :goto_2
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;I[II)V
    .locals 3

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    return-void

    :cond_0
    iget-object p5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    if-eqz p5, :cond_1

    .line 115
    invoke-virtual {p5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    goto :goto_0

    .line 129
    :cond_1
    const/4 p5, 0x0

    .line 115
    :goto_0
    if-eq p2, p5, :cond_2

    return-void

    .line 116
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p5

    sub-int v1, p5, p3

    if-lez p3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result p2

    if-ge v1, p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result p2

    sub-int/2addr p5, p2

    .line 117
    aput p5, p4, v0

    neg-int p2, p5

    .line 118
    invoke-static {p1, p2}, Lge;->d(Landroid/view/View;I)V

    const/4 p2, 0x3

    .line 119
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    goto :goto_2

    .line 130
    :cond_3
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    if-nez p2, :cond_4

    return-void

    .line 120
    :cond_4
    aput p3, p4, v0

    neg-int p2, p3

    .line 121
    invoke-static {p1, p2}, Lge;->d(Landroid/view/View;I)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    goto :goto_2

    :cond_5
    if-gez p3, :cond_9

    const/4 v2, -0x1

    .line 123
    invoke-virtual {p2, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-nez p2, :cond_9

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    if-le v1, p2, :cond_7

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    if-eqz v1, :cond_6

    goto :goto_1

    .line 126
    :cond_6
    sub-int/2addr p5, p2

    .line 127
    aput p5, p4, v0

    neg-int p2, p5

    .line 128
    invoke-static {p1, p2}, Lge;->d(Landroid/view/View;I)V

    const/4 p2, 0x4

    .line 129
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    goto :goto_2

    .line 123
    :cond_7
    :goto_1
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    if-nez p2, :cond_8

    return-void

    .line 124
    :cond_8
    aput p3, p4, v0

    neg-int p2, p3

    .line 125
    invoke-static {p1, p2}, Lge;->d(Landroid/view/View;I)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    .line 130
    :cond_9
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d()V

    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    return-void
.end method

.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V
    .locals 0

    return-void
.end method

.method public final a(Ltw;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Lvp;

    return-void
.end method

.method public final a(Landroid/view/View;F)Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 174
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return v3

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e()I

    move-result v0

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float p2, p2, v2

    add-float/2addr p1, p2

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 177
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method public final a(Landroid/view/View;II)Z
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 9

    .line 79
    invoke-static {p1}, Lge;->r(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lge;->r(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v0, :cond_8

    .line 81
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07006d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Z

    if-nez v0, :cond_2

    new-instance v0, Lcdp;

    .line 83
    invoke-direct {v0, p0}, Lcdp;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    new-instance v4, Lcgu;

    .line 84
    invoke-static {p2}, Lge;->h(Landroid/view/View;)I

    move-result v5

    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 86
    invoke-static {p2}, Lge;->i(Landroid/view/View;)I

    move-result v7

    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcgu;-><init>(IIII)V

    new-instance v5, Lcgs;

    .line 88
    invoke-direct {v5, v0, v4}, Lcgs;-><init>(Lcdp;Lcgu;)V

    invoke-static {p2, v5}, Lge;->a(Landroid/view/View;Lfu;)V

    .line 89
    invoke-static {p2}, Lge;->C(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {p2}, Lge;->q(Landroid/view/View;)V

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Lcgt;

    invoke-direct {v0}, Lcgt;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 90
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 92
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:Lchl;

    if-eqz v0, :cond_3

    .line 93
    invoke-static {p2, v0}, Lge;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:Lchl;

    if-eqz v0, :cond_7

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_4

    .line 94
    invoke-static {p2}, Lge;->n(Landroid/view/View;)F

    move-result v4

    .line 95
    :cond_4
    invoke-virtual {v0, v4}, Lchl;->c(F)V

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    if-ne v0, v3, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    .line 111
    :cond_5
    const/4 v4, 0x0

    .line 95
    :goto_1
    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:Lchl;

    if-ne v0, v3, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    .line 111
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 96
    :goto_2
    invoke-virtual {v4, v0}, Lchl;->b(F)V

    .line 97
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i()V

    .line 98
    invoke-static {p2}, Lge;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_8

    .line 99
    invoke-static {p2, v1}, Lge;->a(Landroid/view/View;I)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Lvp;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Lvo;

    .line 100
    invoke-static {p1, v0}, Lvp;->a(Landroid/view/ViewGroup;Lvo;)Lvp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Lvp;

    .line 101
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 102
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    .line 103
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    .line 104
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:I

    .line 106
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g()V

    .line 107
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f()V

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    if-ne p1, v3, :cond_a

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result p1

    .line 108
    invoke-static {p2, p1}, Lge;->d(Landroid/view/View;I)V

    goto :goto_3

    .line 113
    :cond_a
    const/4 p3, 0x6

    if-ne p1, p3, :cond_b

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    .line 109
    invoke-static {p2, p1}, Lge;->d(Landroid/view/View;I)V

    goto :goto_3

    :cond_b
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    if-eqz p3, :cond_c

    const/4 p3, 0x5

    if-ne p1, p3, :cond_c

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    .line 112
    invoke-static {p2, p1}, Lge;->d(Landroid/view/View;I)V

    goto :goto_3

    :cond_c
    const/4 p3, 0x4

    if-ne p1, p3, :cond_d

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 110
    invoke-static {p2, p1}, Lge;->d(Landroid/view/View;I)V

    goto :goto_3

    :cond_d
    if-eq p1, v1, :cond_e

    const/4 p3, 0x2

    if-ne p1, p3, :cond_f

    .line 111
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Lge;->d(Landroid/view/View;I)V

    .line 108
    :cond_f
    :goto_3
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 113
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    return v1
.end method

.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 64
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 65
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h()V

    const/4 v0, 0x0

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 67
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Landroid/view/VelocityTracker;

    .line 68
    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    goto :goto_2

    .line 78
    :cond_3
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:I

    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    if-eqz p2, :cond_8

    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    return v2

    .line 69
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    .line 70
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:I

    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    if-eq v7, v5, :cond_6

    iget-object v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_5

    .line 71
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_0

    .line 74
    :cond_5
    move-object v7, v3

    .line 71
    :goto_0
    if-eqz v7, :cond_6

    iget v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:I

    .line 72
    invoke-virtual {p1, v7, v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 73
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:I

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    :cond_6
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:I

    if-ne v7, v4, :cond_7

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:I

    .line 74
    invoke-virtual {p1, p2, v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_1

    :cond_7
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    .line 68
    :cond_8
    :goto_2
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Lvp;

    if-eqz p2, :cond_a

    .line 75
    invoke-virtual {p2, p3}, Lvp;->a(Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_3

    .line 78
    :cond_9
    return v1

    .line 75
    :cond_a
    :goto_3
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_b

    .line 76
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/View;

    goto :goto_4

    .line 78
    :cond_b
    nop

    .line 76
    :goto_4
    if-ne v0, v5, :cond_c

    if-eqz v3, :cond_c

    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    if-nez p2, :cond_c

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    if-eq p2, v1, :cond_c

    .line 77
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Lvp;

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:I

    int-to-float p1, p1

    .line 78
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Lvp;

    iget p2, p2, Lvp;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_c

    return v1

    :cond_c
    return v2

    .line 64
    :cond_d
    :goto_5
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    return v2
.end method

.method public final b()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    :goto_0
    return v0
.end method

.method public final b(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 157
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 157
    const-string v0, "offset must be greater than or equal to 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public final b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 148
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 149
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    return v2

    .line 149
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Lvp;

    if-eqz v1, :cond_3

    .line 150
    invoke-virtual {v1, p3}, Lvp;->b(Landroid/view/MotionEvent;)V

    :cond_3
    if-nez p1, :cond_4

    .line 151
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h()V

    :cond_4
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Landroid/view/VelocityTracker;

    if-nez v1, :cond_5

    .line 152
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Landroid/view/VelocityTracker;

    :cond_5
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Landroid/view/VelocityTracker;

    .line 153
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Lvp;

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    if-nez p1, :cond_6

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:I

    .line 154
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Lvp;

    iget v3, v1, Lvp;->b:I

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_6

    .line 155
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-virtual {v1, p2, p1}, Lvp;->a(Landroid/view/View;I)V

    :cond_6
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f()V

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    .line 211
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const/4 v0, 0x4

    const/4 v1, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    return-void

    .line 160
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_4

    return-void

    .line 161
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 162
    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lge;->C(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcdn;

    .line 164
    invoke-direct {v1, p0, v0, p1}, Lcdn;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 163
    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;I)V

    return-void
.end method

.method public final d(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    .line 132
    new-instance p1, Lcdu;

    .line 133
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 132
    invoke-direct {p1, v0, p0}, Lcdu;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-object p1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    .line 55
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcds;

    invoke-virtual {v1}, Lcds;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    .line 165
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Z)V

    goto :goto_0

    .line 171
    :cond_3
    const/4 v0, 0x6

    const/4 v2, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    if-ne p1, v2, :cond_5

    const/4 p1, 0x4

    .line 167
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Z)V

    .line 168
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    :goto_1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcds;

    invoke-virtual {p1}, Lcds;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i()V

    return-void
.end method

.method final e(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 59
    invoke-static {p1}, Lge;->x(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 60
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 61
    check-cast p1, Landroid/view/ViewGroup;

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
