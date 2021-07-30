.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "PG"

# interfaces
.implements Lfr;
.implements Lfs;


# static fields
.field static final a:Ljava/lang/String;

.field static final b:[Ljava/lang/Class;

.field static final c:Ljava/lang/ThreadLocal;

.field static final d:Ljava/util/Comparator;

.field private static final x:Lfi;


# instance fields
.field public e:Lgu;

.field public f:Z

.field public g:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private final h:Ljava/util/List;

.field private final i:Lub;

.field private final j:Ljava/util/List;

.field private final k:Ljava/util/List;

.field private final l:[I

.field private final m:[I

.field private n:Z

.field private o:Z

.field private p:[I

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Ltx;

.field private t:Z

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Lfu;

.field private final w:Lft;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/lang/String;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    new-instance v0, Lua;

    invoke-direct {v0}, Lua;-><init>()V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d:Ljava/util/Comparator;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:[Ljava/lang/Class;

    new-instance v0, Ljava/lang/ThreadLocal;

    .line 5
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Lfj;

    .line 6
    invoke-direct {v0}, Lfj;-><init>()V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lfi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 8
    const v0, 0x7f0400e5

    invoke-direct {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Ljava/util/List;

    new-instance v0, Lub;

    .line 11
    invoke-direct {v0}, Lub;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lub;

    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Ljava/util/List;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:[I

    new-instance v0, Lft;

    invoke-direct {v0}, Lft;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:Lft;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 14
    sget-object v1, Ltq;->a:[I

    const v2, 0x7f120438

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Ltq;->a:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 14
    :goto_0
    if-nez p3, :cond_1

    sget-object v4, Ltq;->a:[I

    const/4 v7, 0x0

    const v8, 0x7f120438

    .line 16
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v1

    invoke-static/range {v2 .. v8}, Lge;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto :goto_1

    .line 29
    :cond_1
    sget-object v4, Ltq;->a:[I

    const/4 v8, 0x0

    .line 17
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v1

    move v7, p3

    invoke-static/range {v2 .. v8}, Lge;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 16
    :goto_1
    nop

    .line 18
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_2

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:[I

    .line 21
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:[I

    .line 22
    array-length p2, p2

    :goto_2
    if-ge v0, p2, :cond_2

    iget-object p3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:[I

    .line 23
    aget v2, p3, v0

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int v2, v2

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 24
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c()V

    new-instance p2, Ltv;

    .line 27
    invoke-direct {p2, p0}, Ltv;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    invoke-super {p0, p2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 28
    invoke-static {p0}, Lge;->e(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_3

    .line 29
    invoke-static {p0, p1}, Lge;->a(Landroid/view/View;I)V

    :cond_3
    return-void
.end method

.method private static a()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lfi;

    .line 30
    invoke-virtual {v0}, Lfi;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    .line 31
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    return-object v0
.end method

.method private static final a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    .line 92
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    .line 93
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Ltt;
    .locals 5

    .line 437
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 438
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 439
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 451
    :cond_1
    nop

    .line 440
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/lang/String;

    .line 441
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 442
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 439
    :cond_2
    :goto_0
    :try_start_0
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Ljava/lang/ThreadLocal;

    .line 443
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    .line 444
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 446
    :cond_3
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:[Ljava/lang/Class;

    .line 448
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 449
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 450
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 451
    :cond_4
    nop

    .line 450
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v2

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 442
    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 452
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not inflate Behavior subclass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ltw;II)V
    .locals 6

    .line 60
    iget v0, p3, Ltw;->c:I

    if-nez v0, :cond_0

    const/16 v0, 0x11

    :cond_0
    invoke-static {v0, p0}, Ley;->a(II)I

    move-result v0

    .line 61
    iget p3, p3, Ltw;->d:I

    invoke-static {p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(I)I

    move-result p3

    invoke-static {p3, p0}, Ley;->a(II)I

    move-result p0

    and-int/lit8 p3, v0, 0x7

    and-int/lit8 v0, v0, 0x70

    and-int/lit8 v1, p0, 0x70

    and-int/lit8 p0, p0, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    .line 64
    iget p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 62
    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 63
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr p0, v4

    .line 64
    :goto_0
    const/16 v4, 0x50

    const/16 v5, 0x10

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    .line 67
    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 65
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 66
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    .line 67
    :goto_1
    if-eq p3, v3, :cond_5

    if-eq p3, v2, :cond_6

    sub-int/2addr p0, p4

    goto :goto_2

    .line 68
    :cond_5
    div-int/lit8 p3, p4, 0x2

    sub-int/2addr p0, p3

    .line 67
    :cond_6
    :goto_2
    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_8

    sub-int/2addr p1, p5

    goto :goto_3

    .line 68
    :cond_7
    div-int/lit8 p3, p5, 0x2

    sub-int/2addr p1, p3

    .line 67
    :cond_8
    :goto_3
    add-int/2addr p4, p0

    add-int/2addr p5, p1

    .line 68
    invoke-virtual {p2, p0, p1, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private static a(Landroid/graphics/Rect;)V
    .locals 1

    .line 475
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lfi;

    .line 476
    invoke-virtual {v0, p0}, Lfi;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method private final a(Ltw;Landroid/graphics/Rect;II)V
    .locals 5

    .line 33
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    .line 34
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    .line 35
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Ltw;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 36
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Ltw;->rightMargin:I

    sub-int/2addr v0, v4

    .line 37
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 35
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 38
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, p1, Ltw;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 39
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p4

    iget p1, p1, Ltw;->bottomMargin:I

    sub-int/2addr v1, p1

    .line 40
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 38
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p3, v0

    add-int/2addr p4, p1

    .line 41
    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private final a(Landroid/view/MotionEvent;I)Z
    .locals 11

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

    .line 456
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 457
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    .line 458
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_0
    if-ltz v4, :cond_1

    if-eqz v2, :cond_0

    .line 459
    invoke-virtual {p0, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v5

    goto :goto_1

    .line 461
    :cond_0
    move v5, v4

    .line 460
    :goto_1
    invoke-virtual {p0, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 461
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d:Ljava/util/Comparator;

    if-eqz v2, :cond_2

    .line 462
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 463
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v2, :cond_b

    .line 464
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 465
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Ltw;

    iget-object v9, v8, Ltw;->a:Ltt;

    if-nez v6, :cond_3

    goto :goto_3

    .line 470
    :cond_3
    if-eqz v0, :cond_6

    if-eqz v9, :cond_5

    if-nez v3, :cond_4

    .line 471
    invoke-static {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 472
    :cond_4
    invoke-direct {p0, v9, v7, v3, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Ltt;Landroid/view/View;Landroid/view/MotionEvent;I)Z

    goto :goto_5

    :cond_5
    goto :goto_5

    .line 465
    :cond_6
    :goto_3
    if-nez v6, :cond_9

    if-eqz v9, :cond_9

    .line 466
    invoke-direct {p0, v9, v7, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Ltt;Landroid/view/View;Landroid/view/MotionEvent;I)Z

    move-result v6

    if-eqz v6, :cond_9

    iput-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Landroid/view/View;

    const/4 v7, 0x3

    if-eq v0, v7, :cond_9

    const/4 v7, 0x1

    if-eq v0, v7, :cond_9

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v5, :cond_9

    .line 467
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 468
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Ltw;

    iget-object v10, v10, Ltw;->a:Ltt;

    if-eqz v10, :cond_8

    if-nez v3, :cond_7

    .line 469
    invoke-static {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 470
    :cond_7
    invoke-direct {p0, v10, v9, v3, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Ltt;Landroid/view/View;Landroid/view/MotionEvent;I)Z

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    iget-object v7, v8, Ltw;->a:Ltt;

    if-nez v7, :cond_a

    iput-boolean v4, v8, Ltw;->m:Z

    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 473
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v3, :cond_c

    .line 474
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_c
    return v6
.end method

.method private final a(Ltt;Landroid/view/View;Landroid/view/MotionEvent;I)Z
    .locals 0

    if-eqz p4, :cond_0

    .line 453
    invoke-virtual {p1, p0, p2, p3}, Ltt;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 454
    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Ltt;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private final b(I)I
    .locals 4

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:[I

    const/4 v1, 0x0

    const-string v2, "CoordinatorLayout"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - attempted index lookup "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-ltz p1, :cond_2

    array-length v3, v0

    if-lt p1, v3, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    aget p1, v0, p1

    return p1

    .line 69
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static final b(Landroid/view/View;)Ltw;
    .locals 6

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltw;

    .line 74
    iget-boolean v1, v0, Ltw;->b:Z

    if-nez v1, :cond_5

    .line 75
    instance-of v1, p0, Lts;

    const-string v2, "CoordinatorLayout"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 76
    check-cast p0, Lts;

    invoke-interface {p0}, Lts;->a()Ltt;

    move-result-object p0

    if-nez p0, :cond_0

    .line 77
    const-string v1, "Attached behavior class is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-virtual {v0, p0}, Ltw;->a(Ltt;)V

    iput-boolean v3, v0, Ltw;->b:Z

    goto :goto_3

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_3

    const-class v1, Ltu;

    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ltu;

    if-nez v1, :cond_2

    .line 81
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    goto :goto_1

    .line 83
    :cond_3
    nop

    .line 81
    :goto_1
    if-eqz v1, :cond_4

    .line 82
    :try_start_0
    invoke-interface {v1}, Ltu;->a()Ljava/lang/Class;

    move-result-object p0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltt;

    .line 83
    invoke-virtual {v0, p0}, Ltw;->a(Ltt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default behavior class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ltu;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :cond_4
    :goto_2
    iput-boolean v3, v0, Ltw;->b:Z

    .line 78
    :cond_5
    :goto_3
    return-object v0
.end method

.method private final b()V
    .locals 9

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltw;

    iget-object v0, v0, Ltw;->a:Ltt;

    if-eqz v0, :cond_0

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 491
    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Landroid/view/View;

    .line 492
    invoke-virtual {v0, p0, v2, v1}, Ltt;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 493
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Landroid/view/View;

    .line 494
    :cond_1
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 495
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 496
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Ltw;

    iput-boolean v1, v3, Ltw;->m:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Z

    return-void
.end method

.method private static c(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p0, v0

    :cond_0
    and-int/lit8 v0, p0, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p0, p0, 0x30

    :cond_1
    return p0
.end method

.method private final c()V
    .locals 1

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 509
    invoke-static {p0}, Lge;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v:Lfu;

    if-nez v0, :cond_0

    new-instance v0, Ltr;

    .line 510
    invoke-direct {v0, p0}, Ltr;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v:Lfu;

    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v:Lfu;

    .line 511
    invoke-static {p0, v0}, Lge;->a(Landroid/view/View;Lfu;)V

    const/16 v0, 0x500

    .line 512
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 513
    invoke-static {p0, v0}, Lge;->a(Landroid/view/View;Lfu;)V

    return-void
.end method

.method private static final c(Landroid/view/View;I)V
    .locals 2

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltw;

    .line 500
    iget v1, v0, Ltw;->i:I

    if-eq v1, p1, :cond_0

    sub-int v1, p1, v1

    .line 501
    invoke-static {p0, v1}, Lge;->e(Landroid/view/View;I)V

    iput p1, v0, Ltw;->i:I

    :cond_0
    return-void
.end method

.method private static d(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800035

    :cond_0
    return p0
.end method

.method private static final d(Landroid/view/View;I)V
    .locals 2

    .line 502
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltw;

    .line 503
    iget v1, v0, Ltw;->j:I

    if-eq v1, p1, :cond_0

    sub-int v1, p1, v1

    .line 504
    invoke-static {p0, v1}, Lge;->d(Landroid/view/View;I)V

    iput p1, v0, Ltw;->j:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lub;

    iget-object v1, v0, Lub;->a:Lto;

    iget v1, v1, Lto;->j:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, v0, Lub;->a:Lto;

    .line 54
    invoke-virtual {v4, v3}, Lto;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v4, v0, Lub;->a:Lto;

    .line 57
    invoke-virtual {v4, v3}, Lto;->b(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Ljava/util/List;

    .line 58
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_3

    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Ljava/util/List;

    .line 59
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Ljava/util/List;

    return-object p1
.end method

.method public final a(I)V
    .locals 24

    .line 101
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {p0 .. p0}, Lge;->g(Landroid/view/View;)I

    move-result v8

    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Ljava/util/List;

    .line 102
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 103
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v10

    .line 104
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v11

    .line 105
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v9, :cond_23

    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Ljava/util/List;

    .line 106
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/view/View;

    .line 107
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ltw;

    if-nez v1, :cond_1

    .line 108
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    move v4, v9

    move-object v5, v12

    move/from16 v18, v14

    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 136
    :cond_1
    const/4 v6, 0x0

    .line 108
    :goto_1
    if-ge v6, v14, :cond_9

    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Ljava/util/List;

    .line 109
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 110
    iget-object v3, v7, Ltw;->l:Landroid/view/View;

    if-ne v3, v2, :cond_8

    .line 111
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ltw;

    .line 112
    iget-object v2, v4, Ltw;->k:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 113
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v3

    .line 114
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v2

    .line 115
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v13

    .line 116
    iget-object v5, v4, Ltw;->k:Landroid/view/View;

    .line 117
    invoke-static {v0, v5, v3}, Luc;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 118
    const/4 v5, 0x0

    invoke-virtual {v0, v15, v5, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 119
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 120
    move/from16 v17, v9

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 121
    move/from16 v18, v14

    move-object v14, v2

    move v2, v8

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object v4, v13

    move/from16 v16, v5

    move-object/from16 v21, v12

    const/4 v12, 0x1

    move-object/from16 v5, v20

    move/from16 v22, v6

    move/from16 v6, v16

    move-object/from16 v23, v7

    move v7, v9

    invoke-static/range {v2 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ltw;II)V

    .line 122
    iget v2, v13, Landroid/graphics/Rect;->left:I

    iget v3, v14, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_3

    iget v2, v13, Landroid/graphics/Rect;->top:I

    iget v3, v14, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    .line 131
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    .line 123
    :goto_2
    move/from16 v3, v16

    move-object/from16 v2, v20

    invoke-direct {v0, v2, v13, v3, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Ltw;Landroid/graphics/Rect;II)V

    .line 124
    iget v3, v13, Landroid/graphics/Rect;->left:I

    iget v4, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 125
    iget v4, v13, Landroid/graphics/Rect;->top:I

    iget v6, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v6

    if-eqz v3, :cond_4

    .line 126
    invoke-static {v15, v3}, Lge;->e(Landroid/view/View;I)V

    :cond_4
    if-eqz v4, :cond_5

    .line 127
    invoke-static {v15, v4}, Lge;->d(Landroid/view/View;I)V

    :cond_5
    if-eqz v5, :cond_6

    iget-object v3, v2, Ltw;->a:Ltt;

    if-eqz v3, :cond_6

    .line 128
    iget-object v2, v2, Ltw;->k:Landroid/view/View;

    invoke-virtual {v3, v0, v15, v2}, Ltt;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 129
    :cond_6
    invoke-static/range {v19 .. v19}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 130
    invoke-static {v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 131
    invoke-static {v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 112
    :cond_7
    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v17, v9

    move-object/from16 v21, v12

    move/from16 v18, v14

    goto :goto_3

    .line 110
    :cond_8
    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v17, v9

    move-object/from16 v21, v12

    move/from16 v18, v14

    .line 131
    :goto_3
    add-int/lit8 v6, v22, 0x1

    move/from16 v9, v17

    move/from16 v14, v18

    move-object/from16 v12, v21

    move-object/from16 v7, v23

    goto/16 :goto_1

    :cond_9
    move-object/from16 v23, v7

    move/from16 v17, v9

    move-object/from16 v21, v12

    move/from16 v18, v14

    const/4 v12, 0x1

    .line 132
    invoke-virtual {v0, v15, v12, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 133
    move-object/from16 v2, v23

    iget v3, v2, Ltw;->g:I

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/16 v6, 0x50

    const/16 v7, 0x30

    if-eqz v3, :cond_e

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 134
    iget v3, v2, Ltw;->g:I

    invoke-static {v3, v8}, Ley;->a(II)I

    move-result v3

    and-int/lit8 v9, v3, 0x70

    if-eq v9, v7, :cond_b

    if-eq v9, v6, :cond_a

    goto :goto_4

    .line 135
    :cond_a
    iget v9, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v13

    iget v14, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 136
    :cond_b
    iget v9, v10, Landroid/graphics/Rect;->top:I

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v10, Landroid/graphics/Rect;->top:I

    .line 134
    :goto_4
    and-int/lit8 v3, v3, 0x7

    if-eq v3, v5, :cond_d

    if-eq v3, v4, :cond_c

    goto :goto_5

    .line 137
    :cond_c
    iget v3, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v9

    iget v13, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v13

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v10, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 138
    :cond_d
    iget v3, v10, Landroid/graphics/Rect;->left:I

    iget v9, v11, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 139
    :cond_e
    :goto_5
    iget v2, v2, Ltw;->h:I

    if-eqz v2, :cond_1a

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1a

    .line 140
    invoke-static {v15}, Lge;->z(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto/16 :goto_b

    .line 141
    :cond_f
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_19

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_19

    .line 142
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Ltw;

    iget-object v3, v2, Ltw;->a:Ltt;

    .line 143
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v9

    .line 144
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v13

    .line 145
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v13, v14, v12, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v3, :cond_11

    .line 146
    invoke-virtual {v3, v15}, Ltt;->c(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 148
    invoke-virtual {v13, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_6

    .line 136
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rect should be within the child\'s bounds. Rect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | Bounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v13}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_11
    invoke-virtual {v9, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 149
    :goto_6
    invoke-static {v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 150
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 151
    invoke-static {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    goto/16 :goto_b

    .line 152
    :cond_12
    iget v3, v2, Ltw;->h:I

    invoke-static {v3, v8}, Ley;->a(II)I

    move-result v3

    and-int/lit8 v4, v3, 0x30

    if-ne v4, v7, :cond_13

    .line 153
    iget v4, v9, Landroid/graphics/Rect;->top:I

    iget v5, v2, Ltw;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, v2, Ltw;->j:I

    sub-int/2addr v4, v5

    .line 154
    iget v5, v10, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_13

    .line 155
    iget v5, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v4

    invoke-static {v15, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(Landroid/view/View;I)V

    const/4 v5, 0x1

    goto :goto_7

    .line 158
    :cond_13
    const/4 v5, 0x0

    .line 155
    :goto_7
    and-int/lit8 v4, v3, 0x50

    if-ne v4, v6, :cond_14

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v6

    iget v6, v2, Ltw;->bottomMargin:I

    sub-int/2addr v4, v6

    iget v6, v2, Ltw;->j:I

    add-int/2addr v4, v6

    .line 157
    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v6, :cond_14

    .line 159
    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v15, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(Landroid/view/View;I)V

    goto :goto_8

    .line 165
    :cond_14
    if-nez v5, :cond_15

    .line 158
    const/4 v4, 0x0

    invoke-static {v15, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(Landroid/view/View;I)V

    .line 159
    :cond_15
    :goto_8
    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_16

    .line 160
    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v2, Ltw;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v2, Ltw;->i:I

    sub-int/2addr v4, v5

    .line 161
    iget v5, v10, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_16

    .line 162
    iget v5, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v4

    invoke-static {v15, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(Landroid/view/View;I)V

    const/4 v5, 0x1

    goto :goto_9

    .line 165
    :cond_16
    const/4 v5, 0x0

    .line 162
    :goto_9
    and-int/lit8 v3, v3, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_17

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    iget v4, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, v2, Ltw;->rightMargin:I

    sub-int/2addr v3, v4

    iget v2, v2, Ltw;->i:I

    add-int/2addr v3, v2

    .line 164
    iget v2, v10, Landroid/graphics/Rect;->right:I

    if-ge v3, v2, :cond_17

    .line 166
    iget v2, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    invoke-static {v15, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(Landroid/view/View;I)V

    const/4 v2, 0x0

    goto :goto_a

    .line 167
    :cond_17
    if-nez v5, :cond_18

    .line 165
    const/4 v2, 0x0

    invoke-static {v15, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(Landroid/view/View;I)V

    goto :goto_a

    .line 167
    :cond_18
    const/4 v2, 0x0

    :goto_a
    invoke-static {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 141
    :cond_19
    const/4 v2, 0x0

    goto :goto_b

    .line 139
    :cond_1a
    const/4 v2, 0x0

    .line 140
    :goto_b
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1c

    .line 168
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Ltw;

    iget-object v4, v4, Ltw;->p:Landroid/graphics/Rect;

    .line 169
    move-object/from16 v5, v21

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 171
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Ltw;

    iget-object v4, v4, Ltw;->p:Landroid/graphics/Rect;

    .line 172
    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_c

    .line 170
    :cond_1b
    move/from16 v4, v17

    goto :goto_10

    .line 140
    :cond_1c
    move-object/from16 v5, v21

    .line 172
    :goto_c
    add-int/lit8 v14, v18, 0x1

    :goto_d
    move/from16 v4, v17

    if-ge v14, v4, :cond_22

    iget-object v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Ljava/util/List;

    .line 173
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 174
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Ltw;

    iget-object v9, v7, Ltw;->a:Ltt;

    if-eqz v9, :cond_20

    .line 175
    invoke-virtual {v9, v15}, Ltt;->a(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_1f

    if-nez v1, :cond_1d

    iget-boolean v12, v7, Ltw;->o:Z

    if-eqz v12, :cond_1d

    .line 178
    invoke-virtual {v7}, Ltw;->a()V

    const/4 v9, 0x1

    goto :goto_f

    :cond_1d
    if-eq v1, v3, :cond_1e

    .line 177
    invoke-virtual {v9, v0, v6, v15}, Ltt;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    goto :goto_e

    .line 176
    :cond_1e
    invoke-virtual {v9, v0, v15}, Ltt;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    const/4 v6, 0x1

    .line 177
    :goto_e
    const/4 v9, 0x1

    if-ne v1, v9, :cond_21

    iput-boolean v6, v7, Ltw;->o:Z

    goto :goto_f

    .line 175
    :cond_1f
    const/4 v9, 0x1

    goto :goto_f

    .line 174
    :cond_20
    const/4 v9, 0x1

    .line 178
    :cond_21
    :goto_f
    add-int/lit8 v14, v14, 0x1

    move/from16 v17, v4

    goto :goto_d

    .line 108
    :cond_22
    :goto_10
    add-int/lit8 v14, v18, 0x1

    move v9, v4

    move-object v12, v5

    goto/16 :goto_0

    .line 182
    :cond_23
    move-object v5, v12

    invoke-static {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 183
    invoke-static {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 184
    invoke-static {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:Lft;

    .line 420
    invoke-virtual {v0, p2}, Lft;->a(I)V

    .line 421
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 422
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 423
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Ltw;

    .line 424
    invoke-virtual {v4, p2}, Ltw;->a(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v4, Ltw;->a:Ltt;

    if-eqz v5, :cond_1

    .line 425
    invoke-virtual {v5, v3, p1, p2}, Ltt;->a(Landroid/view/View;Landroid/view/View;I)V

    :cond_1
    nop

    .line 426
    invoke-virtual {v4, p2, v1}, Ltw;->a(IZ)V

    .line 427
    invoke-virtual {v4}, Ltw;->a()V

    .line 424
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

    return-void
.end method

.method public final a(Landroid/view/View;III)V
    .locals 6

    .line 343
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public final a(Landroid/view/View;IIIII)V
    .locals 8

    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:[I

    .line 370
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final a(Landroid/view/View;IIIII[I)V
    .locals 15

    .line 371
    move-object v7, p0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x1

    if-ge v10, v8, :cond_5

    .line 372
    invoke-virtual {p0, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 373
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    move/from16 v14, p6

    goto :goto_3

    .line 374
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ltw;

    .line 375
    move/from16 v14, p6

    invoke-virtual {v1, v14}, Ltw;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, v1, Ltw;->a:Ltt;

    if-eqz v1, :cond_4

    iget-object v6, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    .line 376
    aput v9, v6, v9

    .line 377
    aput v9, v6, v13

    .line 378
    move-object v0, v1

    move-object v1, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Ltt;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V

    if-lez p4, :cond_2

    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    .line 379
    aget v0, v0, v9

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v11, v0

    goto :goto_1

    .line 382
    :cond_2
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    .line 380
    aget v0, v0, v9

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v11, v0

    .line 379
    :goto_1
    if-lez p5, :cond_3

    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    .line 381
    aget v0, v0, v13

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v12, v0

    goto :goto_2

    :cond_3
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    .line 382
    aget v0, v0, v13

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v12, v0

    .line 381
    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    .line 380
    :cond_4
    nop

    .line 373
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 380
    :cond_5
    nop

    .line 383
    aget v1, p7, v9

    add-int/2addr v1, v11

    aput v1, p7, v9

    .line 384
    aget v1, p7, v13

    add-int/2addr v1, v12

    aput v1, p7, v13

    if-eqz v0, :cond_6

    .line 385
    invoke-virtual {p0, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(I)V

    :cond_6
    return-void
.end method

.method public final a(Landroid/view/View;II[II)V
    .locals 15

    .line 354
    move-object v0, p0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v3, v1, :cond_5

    .line 355
    invoke-virtual {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 356
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v10, 0x8

    if-ne v8, v10, :cond_0

    move/from16 v14, p5

    goto :goto_3

    .line 357
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Ltw;

    .line 358
    move/from16 v14, p5

    invoke-virtual {v8, v14}, Ltw;->a(I)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_3

    :cond_1
    iget-object v8, v8, Ltw;->a:Ltt;

    if-eqz v8, :cond_4

    iget-object v12, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    .line 359
    aput v2, v12, v2

    .line 360
    aput v2, v12, v7

    .line 361
    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v13, p5

    invoke-virtual/range {v8 .. v13}, Ltt;->a(Landroid/view/View;Landroid/view/View;I[II)V

    if-lez p2, :cond_2

    iget-object v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    .line 362
    aget v6, v6, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    .line 365
    :cond_2
    iget-object v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    .line 363
    aget v6, v6, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 362
    :goto_1
    if-lez p3, :cond_3

    iget-object v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    .line 364
    aget v6, v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    :cond_3
    iget-object v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    .line 365
    aget v6, v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 364
    :goto_2
    const/4 v6, 0x1

    goto :goto_3

    .line 363
    :cond_4
    nop

    .line 356
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    :cond_5
    nop

    .line 366
    aput v4, p4, v2

    .line 367
    aput v5, p4, v7

    if-eqz v6, :cond_6

    .line 368
    invoke-virtual {p0, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(I)V

    :cond_6
    return-void
.end method

.method final a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 2

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    if-eqz p2, :cond_1

    .line 52
    invoke-static {p0, p1, p3}, Luc;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 51
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public final a(Landroid/view/View;II)Z
    .locals 1

    .line 87
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 88
    invoke-static {p0, p1, v0}, Luc;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 89
    :try_start_0
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    return p1

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 91
    throw p1
.end method

.method public final a(Landroid/view/View;Landroid/view/View;II)Z
    .locals 5

    .line 412
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 413
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 415
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Ltw;

    iget-object v4, v3, Ltw;->a:Ltt;

    if-eqz v4, :cond_0

    .line 416
    invoke-virtual {v4, v2, p3, p4}, Ltt;->a(Landroid/view/View;II)Z

    move-result v2

    or-int/2addr v1, v2

    .line 417
    invoke-virtual {v3, p4, v2}, Ltw;->a(IZ)V

    goto :goto_1

    :cond_0
    nop

    .line 418
    invoke-virtual {v3, p4, p2}, Ltw;->a(IZ)V

    .line 417
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_2
    const/4 p1, 0x1

    if-eq p1, v1, :cond_3

    return p2

    :cond_3
    return p1
.end method

.method public final b(Landroid/view/View;I)V
    .locals 11

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltw;

    iget-object v1, v0, Ltw;->k:Landroid/view/View;

    if-nez v1, :cond_1

    iget v2, v0, Ltw;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 251
    const-string p2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 206
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v6

    .line 207
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v7

    .line 208
    :try_start_0
    invoke-static {p0, v1, v6}, Luc;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ltw;

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 212
    move v0, p2

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ltw;II)V

    .line 213
    invoke-direct {p0, v8, v7, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Ltw;Landroid/graphics/Rect;II)V

    .line 214
    iget p2, v7, Landroid/graphics/Rect;->left:I

    iget v0, v7, Landroid/graphics/Rect;->top:I

    iget v1, v7, Landroid/graphics/Rect;->right:I

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-static {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 216
    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    return-void

    .line 230
    :catchall_0
    move-exception p1

    .line 215
    invoke-static {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 216
    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 217
    throw p1

    .line 218
    :cond_2
    iget v0, v0, Ltw;->e:I

    if-ltz v0, :cond_8

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ltw;

    .line 238
    iget v2, v1, Ltw;->c:I

    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(I)I

    move-result v2

    invoke-static {v2, p2}, Ley;->a(II)I

    move-result v2

    and-int/lit8 v3, v2, 0x7

    and-int/lit8 v2, v2, 0x70

    .line 239
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    .line 240
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/4 v8, 0x1

    if-ne p2, v8, :cond_3

    sub-int v0, v4, v0

    goto :goto_1

    .line 250
    :cond_3
    nop

    .line 243
    :goto_1
    invoke-direct {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(I)I

    move-result p2

    sub-int/2addr p2, v6

    if-eq v3, v8, :cond_5

    const/4 v0, 0x5

    if-eq v3, v0, :cond_4

    goto :goto_2

    .line 250
    :cond_4
    add-int/2addr p2, v6

    goto :goto_2

    .line 243
    :cond_5
    div-int/lit8 v0, v6, 0x2

    add-int/2addr p2, v0

    :goto_2
    const/16 v0, 0x10

    if-eq v2, v0, :cond_7

    const/16 v0, 0x50

    if-eq v2, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    .line 250
    :cond_6
    move v0, v7

    goto :goto_3

    :cond_7
    div-int/lit8 v0, v7, 0x2

    .line 244
    :goto_3
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Ltw;->leftMargin:I

    add-int/2addr v2, v3

    .line 245
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v4, v3

    sub-int/2addr v4, v6

    iget v3, v1, Ltw;->rightMargin:I

    sub-int/2addr v4, v3

    .line 246
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 244
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 247
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, v1, Ltw;->topMargin:I

    add-int/2addr v2, v3

    .line 248
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v5, v3

    sub-int/2addr v5, v7

    iget v1, v1, Ltw;->bottomMargin:I

    sub-int/2addr v5, v1

    .line 249
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 247
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v6, p2

    add-int/2addr v7, v0

    .line 250
    invoke-virtual {p1, p2, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 219
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltw;

    .line 220
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v7

    .line 221
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Ltw;->leftMargin:I

    add-int/2addr v1, v2

    .line 222
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, v0, Ltw;->topMargin:I

    add-int/2addr v2, v3

    .line 223
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Ltw;->rightMargin:I

    sub-int/2addr v3, v4

    .line 224
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Ltw;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 221
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lgu;

    if-eqz v1, :cond_9

    .line 225
    invoke-static {p0}, Lge;->r(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 226
    invoke-static {p1}, Lge;->r(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 227
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lgu;

    invoke-virtual {v2}, Lgu;->a()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->left:I

    .line 228
    iget v1, v7, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lgu;

    invoke-virtual {v2}, Lgu;->b()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->top:I

    .line 229
    iget v1, v7, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lgu;

    invoke-virtual {v2}, Lgu;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->right:I

    .line 230
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lgu;

    invoke-virtual {v2}, Lgu;->d()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 231
    :cond_9
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    move-result-object v8

    .line 232
    iget v0, v0, Ltw;->c:I

    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 232
    move-object v4, v7

    move-object v5, v8

    move v6, p2

    invoke-static/range {v1 .. v6}, Ley;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 234
    iget p2, v8, Landroid/graphics/Rect;->left:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v1, v8, Landroid/graphics/Rect;->right:I

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 235
    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 236
    invoke-static {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:Lft;

    .line 387
    invoke-virtual {p1, p3, p4}, Lft;->a(II)V

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

    .line 388
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 389
    invoke-virtual {p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 390
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Ltw;

    .line 391
    invoke-virtual {p3, p4}, Ltw;->a(I)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 32
    instance-of v0, p1, Ltw;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltw;

    .line 43
    iget-object v0, v0, Ltw;->a:Ltt;

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected final drawableStateChanged()V
    .locals 3

    .line 45
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 46
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method protected final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Ltw;

    invoke-direct {v0}, Ltw;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Ltw;

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ltw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Ltw;

    if-eqz v0, :cond_0

    new-instance v0, Ltw;

    check-cast p1, Ltw;

    invoke-direct {v0, p1}, Ltw;-><init>(Ltw;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Ltw;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Ltw;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ltw;

    invoke-direct {v0, p1}, Ltw;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public final getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:Lft;

    .line 72
    invoke-virtual {v0}, Lft;->a()I

    move-result v0

    return v0
.end method

.method protected final getSuggestedMinimumHeight()I
    .locals 3

    .line 85
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final getSuggestedMinimumWidth()I
    .locals 3

    .line 86
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 95
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b()V

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ltx;

    if-nez v0, :cond_0

    new-instance v0, Ltx;

    .line 96
    invoke-direct {v0, p0}, Ltx;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ltx;

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ltx;

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lgu;

    if-nez v0, :cond_2

    .line 99
    invoke-static {p0}, Lge;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-static {p0}, Lge;->q(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 185
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 186
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b()V

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ltx;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ltx;

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 190
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lgu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lgu;->b()I

    move-result v0

    goto :goto_0

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 191
    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    .line 193
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 195
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b()V

    const/4 v0, 0x0

    :cond_0
    nop

    .line 196
    invoke-direct {p0, p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;I)Z

    move-result p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Landroid/view/View;

    .line 197
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b()V

    :cond_2
    return p1
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    .line 198
    invoke-static {p0}, Lge;->g(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Ljava/util/List;

    .line 199
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    iget-object p4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Ljava/util/List;

    .line 200
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 201
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-ne p5, v0, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Ltw;

    iget-object p5, p5, Ltw;->a:Ltt;

    if-eqz p5, :cond_1

    .line 203
    invoke-virtual {p5, p0, p4, p1}, Ltt;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p5

    if-nez p5, :cond_2

    .line 204
    :cond_1
    invoke-virtual {p0, p4, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    .line 201
    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 204
    :cond_3
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 30

    move-object/from16 v6, p0

    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Ljava/util/List;

    .line 252
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lub;

    iget-object v1, v0, Lub;->a:Lto;

    iget v1, v1, Lto;->j:I

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Lub;->a:Lto;

    .line 253
    invoke-virtual {v3, v2}, Lto;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lub;->d:Lfi;

    .line 255
    invoke-virtual {v4, v3}, Lfi;->a(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lub;->a:Lto;

    .line 256
    invoke-virtual {v0}, Lto;->clear()V

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1a

    .line 258
    invoke-virtual {v6, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 259
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;)Ltw;

    move-result-object v3

    iget v4, v3, Ltw;->f:I

    const/4 v5, -0x1

    const/4 v8, 0x0

    if-ne v4, v5, :cond_2

    iput-object v8, v3, Ltw;->l:Landroid/view/View;

    iput-object v8, v3, Ltw;->k:Landroid/view/View;

    goto/16 :goto_6

    .line 279
    :cond_2
    iget-object v4, v3, Ltw;->k:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 260
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    iget v5, v3, Ltw;->f:I

    if-eq v4, v5, :cond_3

    goto :goto_4

    .line 272
    :cond_3
    iget-object v4, v3, Ltw;->k:Landroid/view/View;

    .line 261
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    :goto_2
    if-eq v5, v6, :cond_7

    if-eqz v5, :cond_6

    if-ne v5, v2, :cond_4

    goto :goto_3

    .line 262
    :cond_4
    instance-of v9, v5, Landroid/view/View;

    if-eqz v9, :cond_5

    .line 263
    move-object v4, v5

    check-cast v4, Landroid/view/View;

    .line 264
    :cond_5
    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_2

    .line 261
    :cond_6
    :goto_3
    iput-object v8, v3, Ltw;->l:Landroid/view/View;

    iput-object v8, v3, Ltw;->k:Landroid/view/View;

    goto :goto_4

    .line 264
    :cond_7
    iput-object v4, v3, Ltw;->l:Landroid/view/View;

    goto :goto_6

    .line 260
    :cond_8
    :goto_4
    iget v4, v3, Ltw;->f:I

    .line 265
    invoke-virtual {v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Ltw;->k:Landroid/view/View;

    iget-object v4, v3, Ltw;->k:Landroid/view/View;

    if-eqz v4, :cond_f

    if-ne v4, v6, :cond_a

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_9

    iput-object v8, v3, Ltw;->l:Landroid/view/View;

    iput-object v8, v3, Ltw;->k:Landroid/view/View;

    goto :goto_6

    .line 291
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 288
    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    :goto_5
    if-eq v5, v6, :cond_e

    if-eqz v5, :cond_e

    if-ne v5, v2, :cond_c

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_b

    iput-object v8, v3, Ltw;->l:Landroid/view/View;

    iput-object v8, v3, Ltw;->k:Landroid/view/View;

    goto :goto_6

    .line 288
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 289
    const-string v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_c
    instance-of v9, v5, Landroid/view/View;

    if-eqz v9, :cond_d

    .line 269
    move-object v4, v5

    check-cast v4, Landroid/view/View;

    .line 270
    :cond_d
    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_5

    :cond_e
    iput-object v4, v3, Ltw;->l:Landroid/view/View;

    goto :goto_6

    .line 272
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_19

    iput-object v8, v3, Ltw;->l:Landroid/view/View;

    iput-object v8, v3, Ltw;->k:Landroid/view/View;

    .line 259
    :goto_6
    iget-object v4, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lub;

    .line 273
    invoke-virtual {v4, v2}, Lub;->a(Ljava/lang/Object;)V

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v0, :cond_18

    if-ne v4, v1, :cond_10

    goto :goto_9

    .line 274
    :cond_10
    invoke-virtual {v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v8, v3, Ltw;->l:Landroid/view/View;

    if-eq v5, v8, :cond_12

    .line 275
    invoke-static/range {p0 .. p0}, Lge;->g(Landroid/view/View;)I

    move-result v8

    .line 276
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Ltw;

    .line 277
    iget v9, v9, Ltw;->g:I

    invoke-static {v9, v8}, Ley;->a(II)I

    move-result v9

    if-eqz v9, :cond_11

    iget v10, v3, Ltw;->h:I

    .line 278
    invoke-static {v10, v8}, Ley;->a(II)I

    move-result v8

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_11

    goto :goto_8

    .line 287
    :cond_11
    iget-object v8, v3, Ltw;->a:Ltt;

    if-eqz v8, :cond_16

    .line 279
    invoke-virtual {v8, v5}, Ltt;->a(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 278
    :cond_12
    :goto_8
    iget-object v8, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lub;

    iget-object v8, v8, Lub;->a:Lto;

    .line 280
    invoke-virtual {v8, v5}, Lto;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lub;

    .line 281
    invoke-virtual {v8, v5}, Lub;->a(Ljava/lang/Object;)V

    :cond_13
    iget-object v8, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lub;

    iget-object v9, v8, Lub;->a:Lto;

    .line 282
    invoke-virtual {v9, v5}, Lto;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, v8, Lub;->a:Lto;

    invoke-virtual {v9, v2}, Lto;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 292
    iget-object v9, v8, Lub;->a:Lto;

    .line 283
    invoke-virtual {v9, v5}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_15

    iget-object v9, v8, Lub;->d:Lfi;

    .line 284
    invoke-virtual {v9}, Lfi;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_14

    new-instance v9, Ljava/util/ArrayList;

    .line 285
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_14
    iget-object v8, v8, Lub;->a:Lto;

    .line 286
    invoke-virtual {v8, v5, v9}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_15
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_16
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 282
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 292
    const-string v1, "All nodes must be present in the graph before being added as an edge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 303
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 290
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v3, v3, Ltw;->f:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to anchor view "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1a
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Ljava/util/List;

    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lub;

    iget-object v2, v1, Lub;->b:Ljava/util/ArrayList;

    .line 293
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lub;->c:Ljava/util/HashSet;

    .line 294
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, v1, Lub;->a:Lto;

    iget v2, v2, Lto;->j:I

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1b

    iget-object v4, v1, Lub;->a:Lto;

    .line 295
    invoke-virtual {v4, v3}, Lto;->b(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lub;->b:Ljava/util/ArrayList;

    iget-object v8, v1, Lub;->c:Ljava/util/HashSet;

    invoke-virtual {v1, v4, v5, v8}, Lub;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1b
    iget-object v1, v1, Lub;->b:Ljava/util/ArrayList;

    .line 296
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Ljava/util/List;

    .line 297
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    const/4 v8, 0x1

    if-ge v1, v0, :cond_1e

    .line 299
    invoke-virtual {v6, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lub;

    iget-object v4, v3, Lub;->a:Lto;

    iget v4, v4, Lto;->j:I

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v4, :cond_1d

    iget-object v9, v3, Lub;->a:Lto;

    .line 300
    invoke-virtual {v9, v5}, Lto;->c(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_1c

    .line 301
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    const/4 v0, 0x1

    goto :goto_d

    .line 303
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 289
    :cond_1e
    const/4 v0, 0x0

    .line 301
    :goto_d
    iget-boolean v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Z

    if-eq v0, v1, :cond_23

    if-eqz v0, :cond_21

    iget-boolean v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z

    if-eqz v0, :cond_20

    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ltx;

    if-nez v0, :cond_1f

    new-instance v0, Ltx;

    .line 304
    invoke-direct {v0, v6}, Ltx;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ltx;

    .line 305
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ltx;

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_20
    iput-boolean v8, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Z

    goto :goto_e

    .line 342
    :cond_21
    iget-boolean v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z

    if-eqz v0, :cond_22

    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ltx;

    if-eqz v0, :cond_22

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ltx;

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_22
    iput-boolean v7, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Z

    .line 307
    :cond_23
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v9

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v0

    .line 309
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v10

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v1

    .line 311
    invoke-static/range {p0 .. p0}, Lge;->g(Landroid/view/View;)I

    move-result v11

    if-ne v11, v8, :cond_24

    const/4 v12, 0x1

    goto :goto_f

    .line 342
    :cond_24
    const/4 v12, 0x0

    .line 312
    :goto_f
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 313
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 314
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 315
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    add-int v17, v9, v10

    add-int v18, v0, v1

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v0

    .line 317
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v1

    iget-object v2, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lgu;

    if-eqz v2, :cond_25

    .line 318
    invoke-static/range {p0 .. p0}, Lge;->r(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/16 v19, 0x1

    goto :goto_10

    .line 342
    :cond_25
    const/16 v19, 0x0

    .line 318
    :goto_10
    iget-object v2, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Ljava/util/List;

    .line 319
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    move v3, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v5, :cond_32

    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Ljava/util/List;

    .line 320
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 321
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v7, 0x8

    if-ne v8, v7, :cond_26

    move/from16 v20, v2

    move/from16 v28, v5

    move/from16 v23, v9

    move/from16 v26, v10

    move/from16 v27, v11

    const/16 v25, 0x0

    goto/16 :goto_18

    .line 322
    :cond_26
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Ltw;

    .line 323
    iget v8, v7, Ltw;->e:I

    if-ltz v8, :cond_2d

    if-eqz v13, :cond_2d

    .line 324
    invoke-direct {v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(I)I

    move-result v8

    .line 325
    move/from16 v21, v1

    iget v1, v7, Ltw;->c:I

    invoke-static {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(I)I

    move-result v1

    invoke-static {v1, v11}, Ley;->a(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    move/from16 v22, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_27

    if-eqz v12, :cond_28

    const/4 v1, 0x3

    const/16 v23, 0x1

    goto :goto_12

    .line 326
    :cond_27
    move/from16 v23, v12

    .line 325
    :goto_12
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2a

    if-eqz v23, :cond_29

    :cond_28
    sub-int v1, v14, v10

    sub-int/2addr v1, v8

    .line 327
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v8, v1

    goto :goto_14

    .line 339
    :cond_29
    const/4 v1, 0x5

    const/16 v23, 0x0

    goto :goto_13

    .line 326
    :cond_2a
    nop

    .line 339
    :goto_13
    if-ne v1, v2, :cond_2b

    if-eqz v23, :cond_2c

    :cond_2b
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    if-eqz v23, :cond_2e

    :cond_2c
    sub-int/2addr v8, v9

    .line 326
    const/4 v2, 0x0

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v8, v1

    goto :goto_14

    :cond_2d
    move/from16 v21, v1

    move/from16 v22, v2

    :cond_2e
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 327
    :goto_14
    if-eqz v19, :cond_2f

    .line 328
    invoke-static {v0}, Lge;->r(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lgu;

    .line 329
    invoke-virtual {v1}, Lgu;->a()I

    move-result v1

    iget-object v2, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lgu;

    .line 330
    invoke-virtual {v2}, Lgu;->c()I

    move-result v2

    move-object/from16 v23, v0

    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lgu;

    .line 331
    invoke-virtual {v0}, Lgu;->b()I

    move-result v0

    move/from16 v24, v3

    iget-object v3, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lgu;

    .line 332
    invoke-virtual {v3}, Lgu;->d()I

    move-result v3

    add-int/2addr v1, v2

    sub-int v1, v14, v1

    .line 333
    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    add-int/2addr v0, v3

    sub-int v0, v16, v0

    .line 334
    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v3, v0

    move v2, v1

    goto :goto_15

    .line 339
    :cond_2f
    move-object/from16 v23, v0

    move/from16 v24, v3

    .line 334
    move/from16 v2, p1

    move/from16 v3, p2

    :goto_15
    iget-object v0, v7, Ltw;->a:Ltt;

    if-eqz v0, :cond_31

    .line 335
    move-object/from16 v1, v23

    move/from16 v23, v9

    move/from16 v9, v21

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    move/from16 v20, v22

    const/16 v25, 0x0

    move/from16 v22, v2

    move-object/from16 v2, v21

    move/from16 v26, v10

    move/from16 v10, v24

    move/from16 v24, v3

    move/from16 v3, v22

    move/from16 v27, v11

    move v11, v4

    move v4, v8

    move/from16 v28, v5

    move/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Ltt;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_16

    :cond_30
    move-object/from16 v0, v21

    goto :goto_17

    .line 334
    :cond_31
    move/from16 v28, v5

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v20, v22

    move/from16 v10, v24

    const/16 v25, 0x0

    move/from16 v22, v2

    move/from16 v24, v3

    move v11, v4

    move-object/from16 v29, v23

    move/from16 v23, v9

    move/from16 v9, v21

    move-object/from16 v21, v29

    .line 336
    :goto_16
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v6, v0, v1, v8, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;III)V

    .line 337
    :goto_17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v1, v17, v1

    iget v2, v7, Ltw;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v7, Ltw;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 338
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v18, v2

    iget v3, v7, Ltw;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v7, Ltw;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 339
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    move v4, v1

    move v3, v2

    move v1, v0

    .line 321
    :goto_18
    add-int/lit8 v2, v20, 0x1

    move/from16 v9, v23

    move/from16 v10, v26

    move/from16 v11, v27

    move/from16 v5, v28

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_11

    .line 326
    :cond_32
    move v9, v1

    move v10, v3

    move v11, v4

    const/high16 v0, -0x1000000

    and-int/2addr v0, v9

    .line 340
    move/from16 v1, p1

    invoke-static {v11, v1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v1, v9, 0x10

    .line 341
    move/from16 v2, p2

    invoke-static {v10, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 342
    invoke-virtual {v6, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .line 344
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    .line 345
    invoke-virtual {p0, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 346
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 347
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Ltw;

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 5

    .line 348
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 349
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Ltw;

    iget-boolean v3, v2, Ltw;->n:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Ltw;->a:Ltt;

    if-eqz v2, :cond_1

    .line 352
    invoke-virtual {v2, p1}, Ltt;->b(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 350
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_2
    const/4 p1, 0x1

    if-eq p1, v1, :cond_3

    return p3

    :cond_3
    return p1
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    .line 353
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II[II)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    .line 369
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;IIIII)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 392
    instance-of v0, p1, Ltz;

    if-nez v0, :cond_0

    .line 393
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 394
    :cond_0
    check-cast p1, Ltz;

    iget-object v0, p1, Lvl;->d:Landroid/os/Parcelable;

    .line 395
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 396
    iget-object p1, p1, Ltz;->a:Landroid/util/SparseArray;

    .line 397
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 398
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 399
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 400
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;)Ltw;

    move-result-object v4

    iget-object v4, v4, Ltw;->a:Ltt;

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    if-eqz v4, :cond_1

    .line 401
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-eqz v3, :cond_1

    .line 402
    invoke-virtual {v4, v2, v3}, Ltt;->a(Landroid/view/View;Landroid/os/Parcelable;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 403
    new-instance v0, Ltz;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Ltz;-><init>(Landroid/os/Parcelable;)V

    new-instance v1, Landroid/util/SparseArray;

    .line 404
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 405
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 406
    invoke-virtual {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 407
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 408
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Ltw;

    iget-object v6, v6, Ltw;->a:Ltt;

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    if-eqz v6, :cond_0

    .line 409
    invoke-virtual {v6, v4}, Ltt;->d(Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 410
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, v0, Ltz;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ltw;

    iget-object v1, v1, Ltw;->a:Ltt;

    if-eqz v1, :cond_0

    iget-object v4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Landroid/view/View;

    .line 430
    invoke-virtual {v1, p0, v4, p1}, Ltt;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 435
    :cond_0
    const/4 v1, 0x0

    .line 430
    :goto_0
    goto :goto_1

    .line 435
    :cond_1
    nop

    .line 431
    invoke-direct {p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 430
    :cond_2
    :goto_1
    iget-object v4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Landroid/view/View;

    const/4 v5, 0x3

    if-eqz v4, :cond_5

    if-ne v0, v5, :cond_3

    goto :goto_2

    .line 436
    :cond_3
    if-eqz v3, :cond_4

    .line 433
    invoke-static {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 434
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_3

    :cond_4
    goto :goto_3

    .line 432
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v1, p1

    :goto_3
    if-eq v0, v2, :cond_6

    if-ne v0, v5, :cond_7

    :cond_6
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Landroid/view/View;

    .line 436
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b()V

    :cond_7
    return v1
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltw;

    iget-object v0, v0, Ltw;->a:Ltt;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0, p0, p1, p2}, Ltt;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 479
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 12

    .line 480
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Landroid/view/View;

    if-nez p1, :cond_3

    .line 481
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 482
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 483
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Ltw;

    iget-object v3, v3, Ltw;->a:Ltt;

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    .line 484
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 485
    move-wide v4, v6

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 486
    :cond_0
    invoke-virtual {v3, p0, v2, v0}, Ltt;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 487
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 488
    :cond_3
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Z

    :cond_4
    return-void
.end method

.method public final setFitsSystemWindows(Z)V
    .locals 0

    .line 497
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 498
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c()V

    return-void
.end method

.method public final setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public final setVisibility(I)V
    .locals 2

    .line 505
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 507
    :cond_0
    const/4 p1, 0x0

    .line 505
    :goto_0
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 506
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    .line 507
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 514
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
