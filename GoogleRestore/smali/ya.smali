.class public final Lya;
.super Lyo;
.source "PG"


# static fields
.field private static final n:[Ljava/lang/String;

.field private static final o:Landroid/util/Property;

.field private static final p:Landroid/util/Property;

.field private static final q:Landroid/util/Property;

.field private static final r:Landroid/util/Property;

.field private static final s:Landroid/util/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:clip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Lya;->n:[Ljava/lang/String;

    new-instance v0, Lxr;

    const-class v1, Landroid/graphics/PointF;

    .line 1
    invoke-direct {v0, v1}, Lxr;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lxs;

    const-class v1, Landroid/graphics/PointF;

    .line 2
    invoke-direct {v0, v1}, Lxs;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lya;->o:Landroid/util/Property;

    new-instance v0, Lxt;

    const-class v1, Landroid/graphics/PointF;

    .line 3
    invoke-direct {v0, v1}, Lxt;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lya;->p:Landroid/util/Property;

    new-instance v0, Lxu;

    const-class v1, Landroid/graphics/PointF;

    .line 4
    invoke-direct {v0, v1}, Lxu;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lya;->q:Landroid/util/Property;

    new-instance v0, Lxv;

    const-class v1, Landroid/graphics/PointF;

    .line 5
    invoke-direct {v0, v1}, Lxv;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lya;->r:Landroid/util/Property;

    new-instance v0, Lxw;

    const-class v1, Landroid/graphics/PointF;

    .line 6
    invoke-direct {v0, v1}, Lxw;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lya;->s:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lyo;-><init>()V

    return-void
.end method

.method private static final d(Lyx;)V
    .locals 6

    iget-object v0, p0, Lyx;->b:Landroid/view/View;

    .line 10
    invoke-static {v0}, Lge;->z(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 10
    :cond_1
    :goto_0
    iget-object v1, p0, Lyx;->a:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    const-string v0, "android:changeBounds:bounds"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyx;->a:Ljava/util/Map;

    iget-object p0, p0, Lyx;->b:Landroid/view/View;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string v1, "android:changeBounds:parent"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lyx;Lyx;)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_13

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v3, v0, Lyx;->a:Ljava/util/Map;

    iget-object v4, v1, Lyx;->a:Ljava/util/Map;

    .line 14
    const-string v5, "android:changeBounds:parent"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 15
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v3, :cond_12

    if-nez v4, :cond_1

    move-object/from16 v1, p0

    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_1
    iget-object v3, v1, Lyx;->b:Landroid/view/View;

    iget-object v4, v0, Lyx;->a:Ljava/util/Map;

    .line 16
    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v6, v1, Lyx;->a:Ljava/util/Map;

    .line 17
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 18
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 19
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 20
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 21
    iget v9, v5, Landroid/graphics/Rect;->top:I

    .line 22
    iget v10, v4, Landroid/graphics/Rect;->right:I

    .line 23
    iget v11, v5, Landroid/graphics/Rect;->right:I

    .line 24
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 25
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v10, v6

    sub-int v13, v4, v8

    sub-int v14, v11, v7

    sub-int v15, v5, v9

    iget-object v0, v0, Lyx;->a:Ljava/util/Map;

    .line 26
    const-string v2, "android:changeBounds:clip"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, v1, Lyx;->a:Ljava/util/Map;

    .line 27
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    const/4 v2, 0x1

    const/16 v16, 0x0

    if-eqz v12, :cond_2

    if-nez v13, :cond_3

    const/4 v13, 0x0

    :cond_2
    if-eqz v14, :cond_7

    if-nez v15, :cond_3

    const/4 v15, 0x0

    const/16 v17, 0x0

    goto :goto_2

    .line 43
    :cond_3
    if-ne v6, v7, :cond_5

    if-eq v8, v9, :cond_4

    goto :goto_0

    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v17, 0x1

    :goto_1
    if-ne v10, v11, :cond_6

    if-eq v4, v5, :cond_8

    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_7
    const/16 v17, 0x0

    .line 27
    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_9
    if-nez v0, :cond_b

    if-eqz v1, :cond_b

    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 43
    :cond_b
    nop

    .line 28
    :goto_3
    move/from16 v0, v17

    if-lez v0, :cond_11

    .line 29
    invoke-static {v3, v6, v8, v10, v4}, Lzd;->a(Landroid/view/View;IIII)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    if-ne v12, v14, :cond_c

    if-ne v13, v15, :cond_c

    int-to-float v0, v6

    int-to-float v1, v8

    int-to-float v4, v7

    int-to-float v5, v9

    .line 38
    invoke-static {v0, v1, v4, v5}, Larw;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Lya;->s:Landroid/util/Property;

    .line 39
    invoke-static {v3, v1, v0}, Lyj;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_5

    .line 48
    :cond_c
    new-instance v0, Lxz;

    .line 30
    invoke-direct {v0, v3}, Lxz;-><init>(Landroid/view/View;)V

    int-to-float v6, v6

    int-to-float v8, v8

    int-to-float v7, v7

    int-to-float v9, v9

    .line 31
    invoke-static {v6, v8, v7, v9}, Larw;->a(FFFF)Landroid/graphics/Path;

    move-result-object v6

    sget-object v7, Lya;->o:Landroid/util/Property;

    .line 32
    invoke-static {v0, v7, v6}, Lyj;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    int-to-float v7, v10

    int-to-float v4, v4

    int-to-float v8, v11

    int-to-float v5, v5

    .line 33
    invoke-static {v7, v4, v8, v5}, Larw;->a(FFFF)Landroid/graphics/Path;

    move-result-object v4

    sget-object v5, Lya;->p:Landroid/util/Property;

    .line 34
    invoke-static {v0, v5, v4}, Lyj;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 35
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v6, v1, v16

    aput-object v4, v1, v2

    .line 36
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lxx;

    .line 37
    invoke-direct {v1, v0}, Lxx;-><init>(Lxz;)V

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v5

    goto :goto_5

    :cond_d
    if-ne v6, v7, :cond_f

    if-eq v8, v9, :cond_e

    goto :goto_4

    .line 41
    :cond_e
    int-to-float v0, v10

    int-to-float v1, v4

    int-to-float v4, v11

    int-to-float v5, v5

    .line 42
    invoke-static {v0, v1, v4, v5}, Larw;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Lya;->q:Landroid/util/Property;

    .line 43
    invoke-static {v3, v1, v0}, Lyj;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_5

    .line 37
    :cond_f
    :goto_4
    int-to-float v0, v6

    int-to-float v1, v8

    int-to-float v4, v7

    int-to-float v5, v9

    .line 40
    invoke-static {v0, v1, v4, v5}, Larw;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Lya;->r:Landroid/util/Property;

    .line 41
    invoke-static {v3, v1, v0}, Lyj;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 44
    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 46
    invoke-static {v1, v2}, Lza;->a(Landroid/view/ViewGroup;Z)V

    new-instance v2, Lxy;

    .line 47
    invoke-direct {v2, v1}, Lxy;-><init>(Landroid/view/ViewGroup;)V

    .line 48
    move-object/from16 v1, p0

    invoke-virtual {v1, v2}, Lyo;->a(Lyn;)V

    goto :goto_6

    .line 44
    :cond_10
    move-object/from16 v1, p0

    .line 48
    :goto_6
    return-object v0

    .line 43
    :cond_11
    move-object/from16 v1, p0

    const/4 v0, 0x0

    return-object v0

    .line 15
    :cond_12
    move-object/from16 v1, p0

    const/4 v0, 0x0

    :goto_7
    return-object v0

    .line 0
    :cond_13
    :goto_8
    move-object/from16 v1, p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lyx;)V
    .locals 0

    .line 9
    invoke-static {p1}, Lya;->d(Lyx;)V

    return-void
.end method

.method public final a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lya;->n:[Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lyx;)V
    .locals 0

    .line 8
    invoke-static {p1}, Lya;->d(Lyx;)V

    return-void
.end method
