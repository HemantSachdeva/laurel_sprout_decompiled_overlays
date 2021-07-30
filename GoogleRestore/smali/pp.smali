.class public Lpp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llh;


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;


# instance fields
.field private A:Landroid/graphics/Rect;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/ListAdapter;

.field public e:Lok;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:I

.field k:I

.field public l:Landroid/view/View;

.field public m:Landroid/widget/AdapterView$OnItemClickListener;

.field final n:Lpo;

.field final o:Landroid/os/Handler;

.field public p:Z

.field public q:Landroid/widget/PopupWindow;

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Landroid/database/DataSetObserver;

.field private final w:Lpn;

.field private final x:Lpm;

.field private final y:Lpk;

.field private final z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "ListPopupWindow"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-class v4, Landroid/widget/PopupWindow;

    const-string v5, "setClipToScreenEnabled"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lpp;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    move-exception v3

    .line 3
    const-string v3, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :goto_0
    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Rect;

    aput-object v3, v2, v1

    const-class v1, Landroid/widget/PopupWindow;

    const-string v3, "setEpicenterBounds"

    .line 4
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lpp;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3
    :catch_1
    move-exception v1

    .line 5
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lpp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I[B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x2

    iput p4, p0, Lpp;->r:I

    iput p4, p0, Lpp;->f:I

    const/16 p4, 0x3ea

    iput p4, p0, Lpp;->t:I

    const/4 p4, 0x0

    iput p4, p0, Lpp;->j:I

    const v0, 0x7fffffff

    iput v0, p0, Lpp;->k:I

    new-instance v0, Lpo;

    .line 8
    invoke-direct {v0, p0}, Lpo;-><init>(Lpp;)V

    iput-object v0, p0, Lpp;->n:Lpo;

    new-instance v0, Lpn;

    .line 9
    invoke-direct {v0, p0}, Lpn;-><init>(Lpp;)V

    iput-object v0, p0, Lpp;->w:Lpn;

    new-instance v0, Lpm;

    .line 10
    invoke-direct {v0, p0}, Lpm;-><init>(Lpp;)V

    iput-object v0, p0, Lpp;->x:Lpm;

    new-instance v0, Lpk;

    .line 11
    invoke-direct {v0, p0}, Lpk;-><init>(Lpp;)V

    iput-object v0, p0, Lpp;->y:Lpk;

    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lpp;->z:Landroid/graphics/Rect;

    iput-object p1, p0, Lpp;->c:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lpp;->o:Landroid/os/Handler;

    .line 14
    sget-object v0, Ljh;->o:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lpp;->g:I

    .line 16
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p4

    iput p4, p0, Lpp;->s:I

    if-eqz p4, :cond_0

    iput-boolean v1, p0, Lpp;->u:Z

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    new-instance p4, Lmw;

    invoke-direct {p4, p1, p2, p3}, Lmw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p4, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 19
    invoke-virtual {p4, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final S()V
    .locals 13

    iget-object v0, p0, Lpp;->e:Lok;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lpp;->c:Landroid/content/Context;

    new-instance v2, Lpi;

    .line 42
    invoke-direct {v2, p0}, Lpi;-><init>(Lpp;)V

    iget-boolean v2, p0, Lpp;->p:Z

    xor-int/2addr v2, v1

    .line 43
    invoke-virtual {p0, v0, v2}, Lpp;->a(Landroid/content/Context;Z)Lok;

    move-result-object v0

    iput-object v0, p0, Lpp;->e:Lok;

    iget-object v2, p0, Lpp;->d:Landroid/widget/ListAdapter;

    .line 44
    invoke-virtual {v0, v2}, Lok;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lpp;->e:Lok;

    iget-object v2, p0, Lpp;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 45
    invoke-virtual {v0, v2}, Lok;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lpp;->e:Lok;

    .line 46
    invoke-virtual {v0, v1}, Lok;->setFocusable(Z)V

    iget-object v0, p0, Lpp;->e:Lok;

    .line 47
    invoke-virtual {v0, v1}, Lok;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lpp;->e:Lok;

    new-instance v2, Lpj;

    .line 48
    invoke-direct {v2, p0}, Lpj;-><init>(Lpp;)V

    invoke-virtual {v0, v2}, Lok;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lpp;->e:Lok;

    iget-object v2, p0, Lpp;->x:Lpm;

    .line 49
    invoke-virtual {v0, v2}, Lok;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lpp;->e:Lok;

    iget-object v2, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 50
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 51
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    :goto_0
    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 52
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lpp;->z:Landroid/graphics/Rect;

    .line 53
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lpp;->z:Landroid/graphics/Rect;

    .line 54
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lpp;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iget-boolean v3, p0, Lpp;->u:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lpp;->z:Landroid/graphics/Rect;

    .line 55
    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iput v3, p0, Lpp;->s:I

    goto :goto_1

    .line 63
    :cond_1
    iget-object v0, p0, Lpp;->z:Landroid/graphics/Rect;

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 55
    :cond_2
    :goto_1
    iget-object v3, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 57
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    .line 63
    :cond_3
    const/4 v3, 0x0

    .line 57
    :goto_2
    iget-object v4, p0, Lpp;->l:Landroid/view/View;

    iget v5, p0, Lpp;->s:I

    .line 58
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v6, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 59
    invoke-virtual {v6, v4, v5, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v3

    iget v4, p0, Lpp;->r:I

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    add-int/2addr v3, v0

    goto :goto_5

    .line 79
    :cond_4
    iget v4, p0, Lpp;->f:I

    if-eq v4, v5, :cond_6

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v4, v6, :cond_5

    .line 64
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_3

    .line 67
    :cond_5
    iget-object v4, p0, Lpp;->c:Landroid/content/Context;

    .line 60
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lpp;->z:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lpp;->z:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    sub-int/2addr v4, v8

    .line 61
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lpp;->c:Landroid/content/Context;

    .line 62
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lpp;->z:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lpp;->z:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    const/high16 v7, -0x80000000

    .line 63
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 64
    :goto_3
    iget-object v7, p0, Lpp;->e:Lok;

    .line 65
    invoke-virtual {v7, v4, v3}, Lok;->a(II)I

    move-result v3

    if-lez v3, :cond_7

    iget-object v4, p0, Lpp;->e:Lok;

    .line 66
    invoke-virtual {v4}, Lok;->getPaddingTop()I

    move-result v4

    iget-object v7, p0, Lpp;->e:Lok;

    .line 67
    invoke-virtual {v7}, Lok;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v0, v4

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    add-int/2addr v3, v0

    .line 68
    :goto_5
    invoke-virtual {p0}, Lpp;->i()Z

    move-result v0

    iget-object v4, p0, Lpp;->q:Landroid/widget/PopupWindow;

    iget v7, p0, Lpp;->t:I

    .line 69
    invoke-static {v4, v7}, Lhz;->a(Landroid/widget/PopupWindow;I)V

    iget-object v4, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 70
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lpp;->l:Landroid/view/View;

    .line 71
    invoke-static {v4}, Lge;->C(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_8

    return-void

    :cond_8
    iget v4, p0, Lpp;->f:I

    if-ne v4, v6, :cond_9

    const/4 v4, -0x1

    goto :goto_6

    .line 76
    :cond_9
    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lpp;->l:Landroid/view/View;

    .line 72
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 71
    :cond_a
    :goto_6
    iget v7, p0, Lpp;->r:I

    if-ne v7, v6, :cond_f

    if-eq v1, v0, :cond_b

    const/4 v3, -0x1

    :cond_b
    if-eqz v0, :cond_d

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    iget v5, p0, Lpp;->f:I

    if-ne v5, v6, :cond_c

    const/4 v5, -0x1

    goto :goto_7

    .line 78
    :cond_c
    const/4 v5, 0x0

    .line 73
    :goto_7
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 74
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_9

    .line 78
    :cond_d
    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    iget v5, p0, Lpp;->f:I

    if-ne v5, v6, :cond_e

    const/4 v2, -0x1

    goto :goto_8

    .line 76
    :cond_e
    nop

    .line 75
    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 76
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_9

    :cond_f
    if-eq v7, v5, :cond_10

    move v3, v7

    .line 74
    :cond_10
    :goto_9
    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v7, p0, Lpp;->q:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lpp;->l:Landroid/view/View;

    iget v9, p0, Lpp;->g:I

    iget v10, p0, Lpp;->s:I

    if-gez v4, :cond_11

    const/4 v11, -0x1

    goto :goto_a

    .line 78
    :cond_11
    move v11, v4

    .line 77
    :goto_a
    if-gez v3, :cond_12

    const/4 v12, -0x1

    goto :goto_b

    :cond_12
    move v12, v3

    .line 78
    :goto_b
    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    .line 72
    :cond_13
    iget v0, p0, Lpp;->f:I

    if-ne v0, v6, :cond_14

    const/4 v0, -0x1

    goto :goto_c

    .line 85
    :cond_14
    if-ne v0, v5, :cond_15

    iget-object v0, p0, Lpp;->l:Landroid/view/View;

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 72
    :cond_15
    :goto_c
    iget v4, p0, Lpp;->r:I

    if-ne v4, v6, :cond_16

    const/4 v3, -0x1

    goto :goto_d

    .line 85
    :cond_16
    if-eq v4, v5, :cond_17

    move v3, v4

    .line 72
    :cond_17
    :goto_d
    iget-object v4, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 80
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 81
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "ListPopupWindow"

    const/16 v4, 0x1c

    if-gt v0, v4, :cond_18

    sget-object v0, Lpp;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    :try_start_0
    iget-object v5, p0, Lpp;->q:Landroid/widget/PopupWindow;

    new-array v7, v1, [Ljava/lang/Object;

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v0, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    .line 51
    :catch_0
    move-exception v0

    .line 84
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 92
    :cond_18
    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    .line 83
    :cond_19
    :goto_e
    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lpp;->w:Lpn;

    .line 87
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lpp;->i:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, Lpp;->h:Z

    .line 88
    invoke-static {v0, v5}, Lhz;->a(Landroid/widget/PopupWindow;Z)V

    .line 89
    :cond_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_1b

    sget-object v0, Lpp;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    :try_start_1
    iget-object v4, p0, Lpp;->q:Landroid/widget/PopupWindow;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lpp;->A:Landroid/graphics/Rect;

    aput-object v5, v1, v2

    .line 90
    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    .line 84
    :catch_1
    move-exception v0

    .line 91
    const-string v1, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 98
    :cond_1b
    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lpp;->A:Landroid/graphics/Rect;

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 90
    :cond_1c
    :goto_f
    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lpp;->l:Landroid/view/View;

    iget v2, p0, Lpp;->g:I

    iget v3, p0, Lpp;->s:I

    iget v4, p0, Lpp;->j:I

    .line 93
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object v0, p0, Lpp;->e:Lok;

    .line 95
    invoke-virtual {v0, v6}, Lok;->setSelection(I)V

    iget-boolean v0, p0, Lpp;->p:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lpp;->e:Lok;

    .line 96
    invoke-virtual {v0}, Lok;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 97
    :cond_1d
    invoke-virtual {p0}, Lpp;->h()V

    :cond_1e
    iget-boolean v0, p0, Lpp;->p:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lpp;->o:Landroid/os/Handler;

    iget-object v1, p0, Lpp;->y:Lpk;

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void
.end method

.method public final T()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lpp;->e:Lok;

    return-object v0
.end method

.method public a(Landroid/content/Context;Z)Lok;
    .locals 1

    new-instance v0, Lok;

    .line 21
    invoke-direct {v0, p1, p2}, Lok;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lpp;->s:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lpp;->u:Z

    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    .line 38
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lpp;->A:Landroid/graphics/Rect;

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lpp;->v:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    new-instance v0, Lpl;

    .line 30
    invoke-direct {v0, p0}, Lpl;-><init>(Lpp;)V

    iput-object v0, p0, Lpp;->v:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lpp;->d:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 31
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 30
    :cond_1
    :goto_0
    iput-object p1, p0, Lpp;->d:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lpp;->v:Landroid/database/DataSetObserver;

    .line 32
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Lpp;->e:Lok;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lpp;->d:Landroid/widget/ListAdapter;

    .line 33
    invoke-virtual {p1, v0}, Lok;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 25
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lpp;->g:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget-boolean v0, p0, Lpp;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lpp;->s:I

    return v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 22
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 23
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lpp;->e:Lok;

    iget-object v0, p0, Lpp;->o:Landroid/os/Handler;

    iget-object v1, p0, Lpp;->n:Lpo;

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(I)V
    .locals 2

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 35
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lpp;->z:Landroid/graphics/Rect;

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lpp;->z:Landroid/graphics/Rect;

    .line 37
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lpp;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lpp;->f:I

    return-void

    :cond_0
    iput p1, p0, Lpp;->f:I

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 29
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lpp;->g:I

    return v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lpp;->e:Lok;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lok;->a:Z

    .line 20
    invoke-virtual {v0}, Lok;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 28
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()I
    .locals 1

    .line 26
    invoke-virtual {p0}, Lpp;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lpp;->e:Lok;

    .line 27
    invoke-virtual {v0}, Lok;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 39
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public final l()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpp;->p:Z

    iget-object v1, p0, Lpp;->q:Landroid/widget/PopupWindow;

    .line 40
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method
