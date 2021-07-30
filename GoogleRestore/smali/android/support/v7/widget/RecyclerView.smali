.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "PG"

# interfaces
.implements Lfp;


# static fields
.field public static final N:Landroid/view/animation/Interpolator;

.field public static final synthetic O:I

.field private static final P:[I

.field private static final Q:[Ljava/lang/Class;


# instance fields
.field public A:Lqg;

.field public B:Lqm;

.field public final C:I

.field public final D:Lqy;

.field public E:Low;

.field public F:Lou;

.field public final G:Lqx;

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Lrb;

.field public final L:[I

.field final M:Ljava/util/List;

.field private final R:Lqr;

.field private final S:Landroid/graphics/Rect;

.field private T:I

.field private U:Z

.field private V:I

.field private final W:Landroid/view/accessibility/AccessibilityManager;

.field public final a:Lqq;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:Landroid/view/VelocityTracker;

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private final ak:I

.field private al:F

.field private am:F

.field private an:Z

.field private ao:Ljava/util/List;

.field private final ap:[I

.field private aq:Lfq;

.field private final ar:[I

.field private final as:[I

.field private at:Ljava/lang/Runnable;

.field private au:Lqh;

.field private final av:Lpz;

.field b:Lqt;

.field public c:Lmi;

.field public d:Lnu;

.field public final e:Lsc;

.field f:Z

.field public final g:Ljava/lang/Runnable;

.field public final h:Landroid/graphics/Rect;

.field public final i:Landroid/graphics/RectF;

.field public j:Lqc;

.field public k:Lqk;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public n:Lqn;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field v:Z

.field public w:Landroid/widget/EdgeEffect;

.field public x:Landroid/widget/EdgeEffect;

.field public y:Landroid/widget/EdgeEffect;

.field public z:Landroid/widget/EdgeEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010436

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->P:[I

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    .line 7
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->Q:[Ljava/lang/Class;

    new-instance v0, Lpy;

    invoke-direct {v0}, Lpy;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 9
    const v0, 0x7f040217

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    .line 10
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lqr;

    .line 11
    invoke-direct {v0, v9}, Lqr;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->R:Lqr;

    new-instance v0, Lqq;

    .line 12
    invoke-direct {v0, v9}, Lqq;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    new-instance v0, Lsc;

    .line 13
    invoke-direct {v0}, Lsc;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    new-instance v0, Lpw;

    .line 14
    invoke-direct {v0, v9}, Lpw;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->g:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    .line 15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    .line 16
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    .line 17
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    const/4 v13, 0x0

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->T:I

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->u:Z

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->v:Z

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->aa:I

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->ab:I

    new-instance v0, Lqg;

    .line 20
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqg;-><init>([B)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->ac:I

    const/4 v7, -0x1

    iput v7, v9, Landroid/support/v7/widget/RecyclerView;->ad:I

    const/4 v0, 0x1

    iput v0, v9, Landroid/support/v7/widget/RecyclerView;->al:F

    iput v0, v9, Landroid/support/v7/widget/RecyclerView;->am:F

    const/4 v14, 0x1

    iput-boolean v14, v9, Landroid/support/v7/widget/RecyclerView;->an:Z

    new-instance v0, Lqy;

    .line 21
    invoke-direct {v0, v9}, Lqy;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->D:Lqy;

    new-instance v0, Lou;

    invoke-direct {v0}, Lou;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->F:Lou;

    new-instance v0, Lqx;

    .line 22
    invoke-direct {v0}, Lqx;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->H:Z

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->I:Z

    new-instance v0, Lqh;

    .line 23
    invoke-direct {v0, v9}, Lqh;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->au:Lqh;

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->J:Z

    const/4 v8, 0x2

    new-array v0, v8, [I

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->ap:[I

    new-array v0, v8, [I

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->ar:[I

    new-array v0, v8, [I

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->as:[I

    new-array v0, v8, [I

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->L:[I

    new-instance v0, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->M:Ljava/util/List;

    new-instance v0, Lpx;

    .line 25
    invoke-direct {v0, v9}, Lpx;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->at:Ljava/lang/Runnable;

    new-instance v0, Lpz;

    .line 26
    invoke-direct {v0, v9}, Lpz;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->av:Lpz;

    .line 27
    invoke-virtual {v9, v14}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 28
    invoke-virtual {v9, v14}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 29
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, v9, Landroid/support/v7/widget/RecyclerView;->aj:I

    .line 31
    invoke-static {v0}, Lgf;->a(Landroid/view/ViewConfiguration;)F

    move-result v1

    iput v1, v9, Landroid/support/v7/widget/RecyclerView;->al:F

    .line 32
    invoke-static {v0}, Lgf;->b(Landroid/view/ViewConfiguration;)F

    move-result v1

    iput v1, v9, Landroid/support/v7/widget/RecyclerView;->am:F

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, v9, Landroid/support/v7/widget/RecyclerView;->C:I

    .line 34
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, v9, Landroid/support/v7/widget/RecyclerView;->ak:I

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    if-ne v0, v8, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    iget-object v0, v9, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    iget-object v1, v9, Landroid/support/v7/widget/RecyclerView;->au:Lqh;

    iput-object v1, v0, Lqg;->a:Lqh;

    new-instance v0, Lmi;

    new-instance v1, Lqb;

    .line 36
    invoke-direct {v1, v9}, Lqb;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lmi;-><init>(Lqb;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    new-instance v0, Lnu;

    new-instance v1, Lqa;

    .line 37
    invoke-direct {v1, v9}, Lqa;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lnu;-><init>(Lqa;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 38
    invoke-static/range {p0 .. p0}, Lge;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 39
    invoke-static/range {p0 .. p0}, Lge;->J(Landroid/view/View;)V

    .line 40
    :cond_1
    invoke-static/range {p0 .. p0}, Lge;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 41
    invoke-static {v9, v14}, Lge;->a(Landroid/view/View;I)V

    .line 42
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/accessibility/AccessibilityManager;

    .line 44
    new-instance v0, Lrb;

    invoke-direct {v0, v9}, Lrb;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->a(Lrb;)V

    .line 45
    sget-object v0, Ljk;->a:[I

    invoke-virtual {v10, v11, v0, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    sget-object v2, Ljk;->a:[I

    const/4 v6, 0x0

    .line 46
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move/from16 v5, p3

    invoke-static/range {v0 .. v6}, Lge;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/16 v0, 0x8

    .line 47
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-virtual {v15, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v7, :cond_3

    const/high16 v0, 0x40000

    .line 49
    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    :cond_3
    nop

    .line 50
    invoke-virtual {v15, v14, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v9, Landroid/support/v7/widget/RecyclerView;->f:Z

    const/4 v0, 0x3

    .line 51
    invoke-virtual {v15, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 52
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x7

    .line 53
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v0, 0x4

    .line 54
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x5

    .line 55
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    new-instance v1, Lop;

    const v7, 0x7f070096

    .line 60
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f070098

    .line 61
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v14, 0x7f070097

    .line 62
    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object v0, v1

    move-object/from16 v1, p0

    move-object v13, v6

    move v6, v7

    move v7, v8

    move v8, v14

    invoke-direct/range {v0 .. v8}, Lop;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_1

    .line 55
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set fast scroller without both required drawables."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_5
    move-object v13, v6

    .line 63
    :goto_1
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-direct {v9, v10, v13, v11, v12}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;I)V

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v2, Landroid/support/v7/widget/RecyclerView;->P:[I

    .line 66
    const/4 v0, 0x0

    invoke-virtual {v10, v11, v2, v12, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v6, 0x0

    .line 67
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v7

    move/from16 v5, p3

    invoke-static/range {v0 .. v6}, Lge;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 68
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 69
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private final A()V
    .locals 4

    .line 345
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 346
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 347
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lqx;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 348
    invoke-virtual {v0}, Lmi;->e()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 349
    invoke-virtual {v1}, Lqc;->a()I

    move-result v1

    iput v1, v0, Lqx;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    const/4 v1, 0x0

    iput v1, v0, Lqx;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lqt;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lqt;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 350
    invoke-virtual {v2, v0}, Lqk;->a(Landroid/os/Parcelable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lqt;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput-boolean v1, v0, Lqx;->g:Z

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 351
    invoke-virtual {v2, v3, v0}, Lqk;->c(Lqq;Lqx;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput-boolean v1, v0, Lqx;->f:Z

    .line 352
    iget-boolean v2, v0, Lqx;->j:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 354
    :cond_2
    const/4 v2, 0x0

    .line 352
    :goto_0
    iput-boolean v2, v0, Lqx;->j:Z

    const/4 v2, 0x4

    iput v2, v0, Lqx;->d:I

    .line 353
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 354
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    return-void
.end method

.method private final B()Lfq;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:Lfq;

    if-nez v0, :cond_0

    new-instance v0, Lfq;

    .line 530
    invoke-direct {v0, p0}, Lfq;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:Lfq;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:Lfq;

    return-object v0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_3

    .line 154
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 155
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 162
    :cond_0
    nop

    .line 158
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 160
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 161
    :goto_1
    nop

    .line 163
    invoke-static {p2, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lqk;

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x1

    :try_start_1
    sget-object v4, Landroid/support/v7/widget/RecyclerView;->Q:[Ljava/lang/Class;

    .line 165
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p3, v5, v3

    const/4 p1, 0x2

    .line 166
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, p1

    const/4 p1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 172
    :catch_0
    move-exception p1

    :try_start_2
    new-array p4, v1, [Ljava/lang/Class;

    .line 167
    invoke-virtual {v2, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v5, 0x0

    .line 166
    :goto_2
    nop

    .line 170
    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqk;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Lqk;)V

    return-void

    .line 169
    :catch_1
    move-exception p4

    .line 168
    invoke-virtual {p4, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Error creating LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    .line 173
    :catch_2
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Class is not a LayoutManager "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 174
    :catch_3
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Cannot access non-public constructor "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 175
    :catch_4
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 176
    :catch_5
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 159
    :catch_6
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Unable to find LayoutManager "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 159
    :cond_3
    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 509
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    .line 510
    iget-object v1, v0, Lql;->d:Landroid/graphics/Rect;

    .line 511
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lql;->leftMargin:I

    sub-int/2addr v2, v3

    .line 512
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Lql;->topMargin:I

    sub-int/2addr v3, v4

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Lql;->rightMargin:I

    add-int/2addr v4, v5

    .line 514
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Lql;->bottomMargin:I

    add-int/2addr p0, v0

    .line 511
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private final a(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 819
    :cond_0
    move-object v0, p1

    .line 0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 807
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 808
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 809
    instance-of v1, v0, Lql;

    if-eqz v1, :cond_1

    .line 810
    check-cast v0, Lql;

    .line 811
    iget-boolean v1, v0, Lql;->e:Z

    if-nez v1, :cond_1

    .line 812
    iget-object v0, v0, Lql;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 813
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 814
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 815
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 816
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 817
    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 818
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 819
    :cond_2
    const/4 p2, 0x0

    .line 818
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    .line 819
    :cond_3
    const/4 v10, 0x0

    :goto_2
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lqk;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method private final a([I)V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 433
    invoke-virtual {v0}, Lnu;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 434
    invoke-virtual {v6, v5}, Lnu;->b(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v6

    .line 435
    invoke-virtual {v6}, Lqz;->w()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 436
    :cond_0
    invoke-virtual {v6}, Lqz;->c()I

    move-result v6

    if-ge v6, v3, :cond_1

    move v3, v6

    :cond_1
    if-gt v6, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v6

    .line 435
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 436
    :cond_3
    nop

    .line 437
    aput v3, p1, v2

    .line 438
    aput v4, p1, v1

    return-void

    :cond_4
    nop

    .line 439
    const/4 v0, -0x1

    aput v0, p1, v2

    .line 440
    aput v0, p1, v1

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method private final a(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 430
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 431
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqn;

    .line 432
    invoke-interface {v4, p1}, Lqn;->a(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    goto :goto_1

    :cond_0
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->n:Lqn;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private final b(Landroid/view/MotionEvent;)V
    .locals 3

    .line 669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 670
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 673
    :cond_0
    const/4 v0, 0x0

    .line 671
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 672
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    .line 673
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ai:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ag:I

    :cond_1
    return-void
.end method

.method public static c(Landroid/view/View;)Lqz;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 508
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lql;

    iget-object p0, p0, Lql;->c:Lqz;

    return-object p0
.end method

.method public static c(Lqz;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lqz;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 99
    iget-object v2, p0, Lqz;->a:Landroid/view/View;

    if-ne v0, v2, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 101
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 102
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lqz;->b:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method public static e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    .locals 4

    .line 441
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 442
    :cond_0
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 443
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    return-object p0

    .line 444
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 445
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 446
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 447
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private final t()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Lqy;

    .line 959
    invoke-virtual {v0}, Lqy;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lqk;->t:Lqw;

    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {v0}, Lqw;->a()V

    :cond_0
    return-void
.end method

.method private final u()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    nop

    .line 827
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->e(I)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 828
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/widget/EdgeEffect;

    .line 829
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    .line 836
    :cond_1
    nop

    .line 829
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 830
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    .line 831
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 832
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    .line 833
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_4

    .line 834
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 835
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_4
    if-eqz v0, :cond_5

    .line 836
    invoke-static {p0}, Lge;->d(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private final v()V
    .locals 1

    .line 94
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    return-void
.end method

.method private final w()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 764
    invoke-virtual {v0}, Lqk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final x()V
    .locals 5

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 765
    invoke-virtual {v0}, Lmi;->a()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 766
    invoke-virtual {v0}, Lqk;->d()V

    .line 767
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 768
    invoke-virtual {v0}, Lmi;->b()V

    goto :goto_0

    .line 771
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 769
    invoke-virtual {v0}, Lmi;->e()V

    .line 768
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 771
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 768
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 770
    iget-boolean v4, v4, Lqk;->u:Z

    const/4 v4, 0x0

    goto :goto_2

    .line 771
    :cond_4
    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    iget-boolean v4, v4, Lqc;->b:Z

    if-eqz v4, :cond_6

    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 770
    :goto_2
    iput-boolean v4, v3, Lqx;->j:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-nez v0, :cond_7

    .line 771
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, v3, Lqx;->k:Z

    return-void
.end method

.method private final y()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lqx;->m:J

    const/4 v1, -0x1

    iput v1, v0, Lqx;->l:I

    iput v1, v0, Lqx;->n:I

    return-void
.end method

.method private final z()V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 289
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lqx;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 290
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Lqx;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lqx;->i:Z

    .line 291
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 292
    invoke-virtual {v0}, Lsc;->a()V

    .line 293
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 294
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->an:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_0
    move-object v0, v3

    .line 296
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 297
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Lqz;

    move-result-object v3

    .line 296
    :goto_1
    const/4 v0, -0x1

    if-nez v3, :cond_3

    .line 299
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    goto :goto_5

    .line 342
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    iget-boolean v5, v5, Lqc;->b:Z

    if-eqz v5, :cond_4

    iget-wide v5, v3, Lqz;->e:J

    goto :goto_2

    .line 300
    :cond_4
    const-wide/16 v5, -0x1

    .line 342
    :goto_2
    iput-wide v5, v4, Lqx;->m:J

    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    goto :goto_3

    .line 305
    :cond_5
    invoke-virtual {v3}, Lqz;->m()Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v3, Lqz;->d:I

    goto :goto_3

    .line 300
    :cond_6
    invoke-virtual {v3}, Lqz;->d()I

    move-result v5

    .line 342
    :goto_3
    iput v5, v4, Lqx;->l:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-object v3, v3, Lqz;->a:Landroid/view/View;

    .line 301
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    .line 302
    :cond_7
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_8

    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 303
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 304
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v0, :cond_7

    .line 305
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    goto :goto_4

    :cond_8
    iput v5, v4, Lqx;->n:I

    .line 299
    :goto_5
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 306
    iget-boolean v4, v3, Lqx;->j:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    if-eqz v4, :cond_9

    goto :goto_6

    .line 342
    :cond_9
    const/4 v1, 0x0

    .line 306
    :goto_6
    iput-boolean v1, v3, Lqx;->h:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    .line 307
    iget-boolean v1, v3, Lqx;->k:Z

    iput-boolean v1, v3, Lqx;->g:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 308
    invoke-virtual {v1}, Lqc;->a()I

    move-result v1

    iput v1, v3, Lqx;->e:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ap:[I

    .line 309
    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a([I)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 310
    iget-boolean v1, v1, Lqx;->j:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 311
    invoke-virtual {v1}, Lnu;->a()I

    move-result v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_c

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 312
    invoke-virtual {v4, v3}, Lnu;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v4

    .line 313
    invoke-virtual {v4}, Lqz;->w()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lqz;->j()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    iget-boolean v5, v5, Lqc;->b:Z

    if-nez v5, :cond_a

    goto :goto_8

    .line 314
    :cond_a
    invoke-static {v4}, Lqg;->b(Lqz;)V

    .line 315
    invoke-virtual {v4}, Lqz;->q()Ljava/util/List;

    .line 316
    invoke-static {v4}, Lqg;->c(Lqz;)Lqf;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 317
    invoke-virtual {v6, v4, v5}, Lsc;->a(Lqz;Lqf;)V

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 318
    iget-boolean v5, v5, Lqx;->h:Z

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Lqz;->t()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Lqz;->m()Z

    move-result v5

    if-nez v5, :cond_b

    .line 319
    invoke-virtual {v4}, Lqz;->w()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lqz;->j()Z

    move-result v5

    if-nez v5, :cond_b

    .line 320
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->b(Lqz;)J

    move-result-wide v5

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 321
    invoke-virtual {v7, v5, v6, v4}, Lsc;->a(JLqz;)V

    .line 313
    :cond_b
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 321
    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 322
    iget-boolean v1, v1, Lqx;->k:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 323
    invoke-virtual {v1}, Lnu;->b()I

    move-result v1

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_e

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 324
    invoke-virtual {v5, v4}, Lnu;->c(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v5

    .line 325
    invoke-virtual {v5}, Lqz;->w()Z

    move-result v6

    if-nez v6, :cond_d

    iget v6, v5, Lqz;->d:I

    if-ne v6, v0, :cond_d

    iget v6, v5, Lqz;->c:I

    iput v6, v5, Lqz;->d:I

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 326
    iget-boolean v1, v0, Lqx;->f:Z

    iput-boolean v2, v0, Lqx;->f:Z

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 327
    invoke-virtual {v4, v5, v0}, Lqk;->c(Lqq;Lqx;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput-boolean v1, v0, Lqx;->f:Z

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 328
    invoke-virtual {v1}, Lnu;->a()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 329
    invoke-virtual {v1, v0}, Lnu;->b(I)Landroid/view/View;

    move-result-object v1

    .line 330
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lqz;->w()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_c

    :cond_f
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    iget-object v4, v4, Lsc;->a:Lto;

    .line 332
    invoke-virtual {v4, v1}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsb;

    if-eqz v4, :cond_10

    iget v4, v4, Lsb;->a:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_13

    .line 333
    :cond_10
    invoke-static {v1}, Lqg;->b(Lqz;)V

    const/16 v4, 0x2000

    .line 334
    invoke-virtual {v1, v4}, Lqz;->a(I)Z

    move-result v4

    .line 335
    invoke-virtual {v1}, Lqz;->q()Ljava/util/List;

    .line 336
    invoke-static {v1}, Lqg;->c(Lqz;)Lqf;

    move-result-object v5

    if-eqz v4, :cond_11

    .line 337
    invoke-virtual {p0, v1, v5}, Landroid/support/v7/widget/RecyclerView;->a(Lqz;Lqf;)V

    goto :goto_c

    :cond_11
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    iget-object v6, v4, Lsc;->a:Lto;

    .line 338
    invoke-virtual {v6, v1}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsb;

    if-nez v6, :cond_12

    .line 339
    invoke-static {}, Lsb;->a()Lsb;

    move-result-object v6

    iget-object v4, v4, Lsc;->a:Lto;

    .line 340
    invoke-virtual {v4, v1, v6}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    nop

    :goto_b
    iget v1, v6, Lsb;->a:I

    or-int/2addr v1, v3

    iput v1, v6, Lsb;->a:I

    iput-object v5, v6, Lsb;->b:Lqf;

    .line 331
    :cond_13
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 341
    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    goto :goto_d

    .line 342
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 343
    :goto_d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 344
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput v3, v0, Lqx;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 420
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IZ)Lqz;
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 452
    invoke-virtual {v0}, Lnu;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 453
    invoke-virtual {v3, v2}, Lnu;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lqz;->m()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_0

    iget v4, v3, Lqz;->c:I

    if-eq v4, p1, :cond_1

    goto :goto_1

    .line 454
    :cond_0
    invoke-virtual {v3}, Lqz;->c()I

    move-result v4

    if-eq v4, p1, :cond_1

    goto :goto_1

    .line 453
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    iget-object v4, v3, Lqz;->a:Landroid/view/View;

    .line 454
    invoke-virtual {v1, v4}, Lnu;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    return-object v3

    .line 453
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    :cond_4
    return-object v1
.end method

.method public final a(Landroid/view/View;)Lqz;
    .locals 3

    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 507
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 944
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 945
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    .line 946
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqc;

    invoke-virtual {v1, p0, p1}, Laqc;->a(Landroid/support/v7/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 947
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->b(IIZ)V

    return-void
.end method

.method public final a(IIII[II[I)V
    .locals 8

    .line 360
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    .line 361
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lfq;->a(IIII[II[I)Z

    return-void
.end method

.method public final a(IIZ)V
    .locals 7

    add-int v0, p1, p2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 544
    invoke-virtual {v1}, Lnu;->b()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v1, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 545
    invoke-virtual {v4, v2}, Lnu;->c(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lqz;->w()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v4, Lqz;->c:I

    const/4 v6, 0x1

    if-lt v5, v0, :cond_0

    neg-int v3, p2

    .line 546
    invoke-virtual {v4, v3, p3}, Lqz;->a(IZ)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput-boolean v6, v3, Lqx;->f:Z

    goto :goto_1

    :cond_0
    if-lt v5, p1, :cond_1

    .line 547
    invoke-virtual {v4, v3}, Lqz;->b(I)V

    neg-int v3, p2

    .line 548
    invoke-virtual {v4, v3, p3}, Lqz;->a(IZ)V

    add-int/lit8 v3, p1, -0x1

    iput v3, v4, Lqz;->c:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput-boolean v6, v3, Lqx;->f:Z

    .line 546
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v2, v1, Lqq;->c:Ljava/util/ArrayList;

    .line 549
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, v1, Lqq;->c:Ljava/util/ArrayList;

    .line 550
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqz;

    if-eqz v4, :cond_4

    iget v5, v4, Lqz;->c:I

    if-lt v5, v0, :cond_3

    neg-int v5, p2

    .line 551
    invoke-virtual {v4, v5, p3}, Lqz;->a(IZ)V

    goto :goto_3

    :cond_3
    if-lt v5, p1, :cond_4

    .line 552
    invoke-virtual {v4, v3}, Lqz;->b(I)V

    .line 553
    invoke-virtual {v1, v2}, Lqq;->b(I)V

    .line 551
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 554
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final a(II[I)V
    .locals 8

    .line 873
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 874
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 875
    const-string v0, "RV Scroll"

    invoke-static {v0}, Lui;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 876
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Lqx;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 877
    invoke-virtual {v1, p1, v2, v3}, Lqk;->a(ILqq;Lqx;)I

    move-result p1

    goto :goto_0

    .line 892
    :cond_0
    const/4 p1, 0x0

    .line 877
    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 878
    invoke-virtual {v1, p2, v2, v3}, Lqk;->b(ILqq;Lqx;)I

    move-result p2

    goto :goto_1

    .line 892
    :cond_1
    const/4 p2, 0x0

    .line 879
    :goto_1
    invoke-static {}, Lui;->a()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 880
    invoke-virtual {v1}, Lnu;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 881
    invoke-virtual {v3, v2}, Lnu;->b(I)Landroid/view/View;

    move-result-object v3

    .line 882
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Lqz;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v4, Lqz;->i:Lqz;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lqz;->a:Landroid/view/View;

    .line 883
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 884
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 885
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    if-eq v3, v6, :cond_3

    .line 886
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 887
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    .line 888
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 889
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 890
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    if-eqz p3, :cond_5

    .line 891
    aput p1, p3, v0

    .line 892
    const/4 p1, 0x1

    aput p2, p3, p1

    :cond_5
    return-void
.end method

.method public final a(Laqc;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 87
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    .line 88
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    if-lez p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v0, "RecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 91
    :cond_2
    return-void
.end method

.method public a(Lqc;)V
    .locals 4

    .line 902
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->suppressLayout(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->R:Lqr;

    iget-object v1, v1, Lqc;->a:Lqd;

    .line 903
    invoke-virtual {v1, v2}, Lqd;->unregisterObserver(Ljava/lang/Object;)V

    .line 904
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 905
    invoke-virtual {v1}, Lmi;->a()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->R:Lqr;

    .line 906
    invoke-virtual {p1, v2}, Lqc;->a(Lvt;)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 907
    invoke-virtual {p1}, Lqq;->a()V

    .line 908
    invoke-virtual {p1}, Lqq;->d()Lqp;

    move-result-object p1

    if-eqz v1, :cond_2

    iget v1, p1, Lqp;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lqp;->b:I

    :cond_2
    iget v1, p1, Lqp;->b:I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lqp;->a:Landroid/util/SparseArray;

    .line 909
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p1, Lqp;->a:Landroid/util/SparseArray;

    .line 910
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqo;

    .line 911
    iget-object v3, v3, Lqo;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-eqz v2, :cond_4

    iget v2, p1, Lqp;->b:I

    add-int/2addr v2, v1

    iput v2, p1, Lqp;->b:I

    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput-boolean v1, p1, Lqx;->f:Z

    .line 912
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->c(Z)V

    .line 913
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public a(Lqk;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-ne p1, v0, :cond_0

    return-void

    .line 919
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    if-eqz v0, :cond_1

    .line 920
    invoke-virtual {v0}, Lqg;->e()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 921
    invoke-virtual {v0, v1}, Lqk;->b(Lqq;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 922
    invoke-virtual {v0, v1}, Lqk;->a(Lqq;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 923
    invoke-virtual {v0}, Lqq;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 924
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqk;->a(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    goto :goto_0

    .line 939
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 925
    invoke-virtual {v0}, Lqq;->a()V

    .line 924
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    iget-object v1, v0, Lnu;->a:Lnt;

    .line 926
    invoke-virtual {v1}, Lnt;->a()V

    iget-object v1, v0, Lnu;->b:Ljava/util/List;

    .line 927
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v2, v0, Lnu;->c:Lqa;

    iget-object v3, v0, Lnu;->b:Ljava/util/List;

    .line 928
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lqa;->b(Landroid/view/View;)V

    iget-object v2, v0, Lnu;->b:Ljava/util/List;

    .line 929
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lnu;->c:Lqa;

    .line 930
    invoke-virtual {v0}, Lqa;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    .line 931
    invoke-virtual {v0, v2}, Lqa;->b(I)Landroid/view/View;

    move-result-object v3

    .line 932
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    .line 933
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lqa;->a:Landroid/support/v7/widget/RecyclerView;

    .line 934
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz p1, :cond_6

    iget-object v0, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 936
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 937
    invoke-virtual {p1, p0}, Lqk;->a(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_3

    .line 934
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 935
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 936
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_6
    :goto_3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 938
    invoke-virtual {p1}, Lqq;->b()V

    .line 939
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method final a(Lqx;)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Lqy;

    .line 422
    iget-object v0, v0, Lqy;->c:Landroid/widget/OverScroller;

    .line 423
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Lqx;->o:I

    .line 424
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p1, Lqx;->p:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lqx;->o:I

    iput v0, p1, Lqx;->p:I

    return-void
.end method

.method public final a(Lqz;)V
    .locals 4

    .line 71
    iget-object v0, p1, Lqz;->a:Landroid/view/View;

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 73
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Lqz;

    move-result-object v3

    invoke-virtual {v2, v3}, Lqq;->b(Lqz;)V

    .line 74
    invoke-virtual {p1}, Lqz;->n()Z

    move-result p1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1, v2}, Lnu;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void

    :cond_0
    if-eq v1, p0, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 76
    invoke-virtual {p1, v0, v3, v2}, Lnu;->a(Landroid/view/View;IZ)V

    return-void

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    iget-object v1, p1, Lnu;->c:Lqa;

    .line 77
    invoke-virtual {v1, v0}, Lqa;->a(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 78
    iget-object v2, p1, Lnu;->a:Lnt;

    .line 79
    invoke-virtual {v2, v1}, Lnt;->a(I)V

    .line 80
    invoke-virtual {p1, v0}, Lnu;->a(Landroid/view/View;)V

    return-void

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view is not a child, cannot hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lqz;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p1, Lqz;->n:I

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->M:Ljava/util/List;

    .line 914
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p1, p1, Lqz;->a:Landroid/view/View;

    .line 915
    invoke-static {p1, p2}, Lge;->a(Landroid/view/View;I)V

    return-void
.end method

.method public final a(Lqz;Lqf;)V
    .locals 3

    .line 781
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lqz;->a(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 782
    iget-boolean v0, v0, Lqx;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lqz;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p1}, Lqz;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lqz;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Lqz;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 785
    invoke-virtual {v2, v0, v1, p1}, Lsc;->a(JLqz;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 786
    invoke-virtual {v0, p1, p2}, Lsc;->a(Lqz;Lqf;)V

    return-void
.end method

.method public final a(Lrb;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->K:Lrb;

    .line 901
    invoke-static {p0, p1}, Lge;->a(Landroid/view/View;Lfl;)V

    return-void
.end method

.method public final a(Lyj;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_0

    .line 81
    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lqk;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 86
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    :cond_1
    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    if-eqz p1, :cond_2

    .line 954
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    :cond_2
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-nez p1, :cond_3

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    :cond_3
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    return-void
.end method

.method final a(IILandroid/view/MotionEvent;I)Z
    .locals 17

    .line 840
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->L:[I

    .line 841
    aput v12, v0, v12

    .line 842
    aput v12, v0, v11

    .line 843
    invoke-virtual {v8, v9, v10, v0}, Landroid/support/v7/widget/RecyclerView;->a(II[I)V

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->L:[I

    .line 844
    aget v1, v0, v12

    .line 845
    aget v0, v0, v11

    sub-int v2, v9, v1

    sub-int v3, v10, v0

    move v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    goto :goto_0

    .line 863
    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 845
    :goto_0
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    .line 846
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 847
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_1
    iget-object v7, v8, Landroid/support/v7/widget/RecyclerView;->L:[I

    .line 848
    aput v12, v7, v12

    .line 849
    aput v12, v7, v11

    iget-object v5, v8, Landroid/support/v7/widget/RecyclerView;->ar:[I

    .line 850
    move-object/from16 v0, p0

    move v1, v14

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/RecyclerView;->a(IIII[II[I)V

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->L:[I

    .line 851
    aget v1, v0, v12

    sub-int/2addr v15, v1

    .line 852
    aget v0, v0, v11

    sub-int v2, v16, v0

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 863
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 852
    :goto_1
    iget v1, v8, Landroid/support/v7/widget/RecyclerView;->ah:I

    iget-object v3, v8, Landroid/support/v7/widget/RecyclerView;->ar:[I

    .line 853
    aget v4, v3, v12

    sub-int/2addr v1, v4

    iput v1, v8, Landroid/support/v7/widget/RecyclerView;->ah:I

    iget v1, v8, Landroid/support/v7/widget/RecyclerView;->ai:I

    .line 854
    aget v5, v3, v11

    sub-int/2addr v1, v5

    iput v1, v8, Landroid/support/v7/widget/RecyclerView;->ai:I

    iget-object v1, v8, Landroid/support/v7/widget/RecyclerView;->as:[I

    .line 855
    aget v5, v1, v12

    add-int/2addr v5, v4

    aput v5, v1, v12

    .line 856
    aget v4, v1, v11

    aget v3, v3, v11

    add-int/2addr v4, v3

    aput v4, v1, v11

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_b

    if-eqz p3, :cond_a

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v3, 0x2002

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    goto/16 :goto_4

    .line 859
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v3, v15

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    cmpg-float v7, v3, v6

    if-gez v7, :cond_5

    .line 860
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    iget-object v7, v8, Landroid/support/v7/widget/RecyclerView;->w:Landroid/widget/EdgeEffect;

    neg-float v15, v3

    .line 861
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v15, v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v4, v11

    sub-float v4, v5, v4

    invoke-static {v7, v15, v4}, Lhz;->a(Landroid/widget/EdgeEffect;FF)V

    const/4 v4, 0x1

    goto :goto_2

    .line 867
    :cond_5
    cmpl-float v7, v3, v6

    if-lez v7, :cond_6

    .line 862
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    iget-object v7, v8, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    .line 863
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v3, v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v4, v15

    invoke-static {v7, v11, v4}, Lhz;->a(Landroid/widget/EdgeEffect;FF)V

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 861
    :goto_2
    cmpg-float v7, v2, v6

    if-gez v7, :cond_7

    .line 864
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    iget-object v3, v8, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    neg-float v2, v2

    .line 865
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v3, v2, v1}, Lhz;->a(Landroid/widget/EdgeEffect;FF)V

    goto :goto_3

    .line 868
    :cond_7
    cmpl-float v7, v2, v6

    if-lez v7, :cond_8

    .line 866
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->i()V

    iget-object v3, v8, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 867
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    sub-float/2addr v5, v1

    invoke-static {v3, v2, v5}, Lhz;->a(Landroid/widget/EdgeEffect;FF)V

    goto :goto_3

    :cond_8
    if-nez v4, :cond_9

    cmpl-float v1, v3, v6

    if-nez v1, :cond_9

    cmpl-float v1, v2, v6

    if-eqz v1, :cond_a

    .line 868
    :cond_9
    :goto_3
    invoke-static/range {p0 .. p0}, Lge;->d(Landroid/view/View;)V

    .line 869
    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    :cond_b
    if-nez v14, :cond_d

    if-eqz v13, :cond_c

    const/4 v14, 0x0

    goto :goto_5

    .line 872
    :cond_c
    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_6

    :cond_d
    nop

    .line 870
    :goto_5
    invoke-virtual {v8, v14, v13}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    .line 871
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_e

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_e
    if-nez v0, :cond_10

    if-nez v14, :cond_10

    if-eqz v13, :cond_f

    goto :goto_7

    :cond_f
    return v12

    :cond_10
    :goto_7
    const/4 v0, 0x1

    return v0
.end method

.method public final a(II[I[II)Z
    .locals 6

    .line 358
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lfq;->a(II[I[II)Z

    move-result p1

    return p1
.end method

.method final b(Lqz;)J
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    iget-boolean v0, v0, Lqc;->b:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lqz;->e:J

    goto :goto_0

    .line 504
    :cond_0
    iget p1, p1, Lqz;->c:I

    int-to-long v0, p1

    .line 0
    :goto_0
    return-wide v0
.end method

.method public final b(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 426
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 427
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 428
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Lqg;->e()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 788
    invoke-virtual {v0, v1}, Lqk;->b(Lqq;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 789
    invoke-virtual {v0, v1}, Lqk;->a(Lqq;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 790
    invoke-virtual {v0}, Lqq;->a()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 894
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-nez v0, :cond_1

    .line 895
    const-string p1, "RecyclerView"

    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 896
    :cond_1
    invoke-virtual {v0, p1}, Lqk;->c(I)V

    .line 897
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method public final b(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/widget/EdgeEffect;

    .line 121
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/widget/EdgeEffect;

    .line 122
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    goto :goto_0

    .line 132
    :cond_0
    nop

    .line 122
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    .line 124
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    .line 125
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v1, p1

    goto :goto_1

    .line 132
    :cond_1
    nop

    .line 125
    :goto_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    .line 126
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    .line 127
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    .line 128
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v1, p1

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 130
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 131
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v1, p1

    :cond_3
    if-eqz v1, :cond_4

    .line 132
    invoke-static {p0}, Lge;->d(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public final b(IIZ)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-nez v0, :cond_0

    .line 948
    const-string p1, "RecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lqk;->i()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 949
    invoke-virtual {v0}, Lqk;->j()Z

    move-result v0

    if-eq v2, v0, :cond_3

    const/4 p2, 0x0

    :cond_3
    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    .line 951
    :cond_4
    return-void

    .line 949
    :cond_5
    :goto_0
    if-eqz p3, :cond_8

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    .line 951
    :cond_6
    nop

    .line 949
    :goto_1
    if-eqz p2, :cond_7

    or-int/lit8 v1, v1, 0x2

    .line 950
    :cond_7
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    :cond_8
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->D:Lqy;

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 951
    invoke-virtual {p3, p1, p2, v0, v1}, Lqy;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public final b(Laqc;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 804
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lyj;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_0

    .line 798
    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lqk;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    .line 799
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    .line 800
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 801
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 803
    :cond_1
    const/4 p1, 0x0

    .line 801
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 802
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 803
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final b(Z)V
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    if-eqz p1, :cond_4

    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    if-eqz p1, :cond_0

    .line 575
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v2, 0x800

    .line 577
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 578
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 579
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 580
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->M:Ljava/util/List;

    .line 581
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Ljava/util/List;

    .line 582
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqz;

    .line 583
    iget-object v2, v0, Lqz;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_2

    invoke-virtual {v0}, Lqz;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 584
    :cond_1
    iget v2, v0, Lqz;->n:I

    if-eq v2, v1, :cond_2

    .line 585
    iget-object v3, v0, Lqz;->a:Landroid/view/View;

    invoke-static {v3, v2}, Lge;->a(Landroid/view/View;I)V

    iput v1, v0, Lqz;->n:I

    .line 583
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 585
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->M:Ljava/util/List;

    .line 586
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 135
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 136
    invoke-virtual {v0}, Lmi;->d()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    const/4 v2, 0x4

    .line 137
    invoke-virtual {v0, v2}, Lmi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    const/16 v2, 0xb

    .line 138
    invoke-virtual {v0, v2}, Lmi;->a(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 143
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Lui;->a(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 145
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 146
    invoke-virtual {v0}, Lmi;->b()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 147
    invoke-virtual {v0}, Lnu;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 148
    invoke-virtual {v2, v1}, Lnu;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lqz;->w()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lqz;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    goto :goto_2

    .line 148
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 150
    invoke-virtual {v0}, Lmi;->c()V

    .line 149
    :cond_5
    :goto_2
    nop

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 152
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 153
    invoke-static {}, Lui;->a()V

    return-void

    .line 150
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 139
    invoke-virtual {v0}, Lmi;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    invoke-static {v1}, Lui;->a(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 142
    invoke-static {}, Lui;->a()V

    :cond_7
    return-void

    .line 133
    :cond_8
    :goto_3
    invoke-static {v1}, Lui;->a(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 135
    invoke-static {}, Lui;->a()V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 535
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 536
    invoke-virtual {v0, p1}, Lqk;->c(I)V

    .line 537
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method public final c(II)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    invoke-static {p0}, Lge;->j(Landroid/view/View;)I

    move-result v1

    .line 179
    invoke-static {p1, v0, v1}, Lqk;->a(III)I

    move-result p1

    .line 180
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    invoke-static {p0}, Lge;->k(Landroid/view/View;)I

    move-result v1

    .line 182
    invoke-static {p2, v0, v1}, Lqk;->a(III)I

    move-result p2

    .line 183
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final c(Z)V
    .locals 5

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 772
    invoke-virtual {p1}, Lnu;->b()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, p1, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 773
    invoke-virtual {v3, v1}, Lnu;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lqz;->w()Z

    move-result v4

    if-nez v4, :cond_0

    .line 774
    invoke-virtual {v3, v2}, Lqz;->b(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 775
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v1, p1, Lqq;->c:Ljava/util/ArrayList;

    .line 776
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v3, p1, Lqq;->c:Ljava/util/ArrayList;

    .line 777
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqz;

    if-eqz v3, :cond_2

    .line 778
    invoke-virtual {v3, v2}, Lqz;->b(I)V

    .line 779
    invoke-virtual {v3}, Lqz;->u()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lqc;->b:Z

    if-nez v0, :cond_4

    goto :goto_2

    .line 780
    :cond_4
    return-void

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lqq;->c()V

    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 96
    instance-of v0, p1, Lql;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    check-cast p1, Lql;

    invoke-virtual {v0, p1}, Lqk;->a(Lql;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lqk;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 114
    invoke-virtual {v0, v1}, Lqk;->d(Lqx;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lqk;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 115
    invoke-virtual {v0, v1}, Lqk;->b(Lqx;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lqk;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 116
    invoke-virtual {v0, v1}, Lqk;->f(Lqx;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lqk;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 117
    invoke-virtual {v0, v1}, Lqk;->e(Lqx;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lqk;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 118
    invoke-virtual {v0, v1}, Lqk;->c(Lqx;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lqk;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 119
    invoke-virtual {v0, v1}, Lqk;->g(Lqx;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final d(Lqz;)I
    .locals 7

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lqz;->a(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lqz;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    iget p1, p1, Lqz;->c:I

    iget-object v2, v0, Lmi;->a:Ljava/util/ArrayList;

    .line 496
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    iget-object v4, v0, Lmi;->a:Ljava/util/ArrayList;

    .line 497
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmh;

    .line 498
    iget v5, v4, Lmh;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 499
    :cond_1
    iget v5, v4, Lmh;->b:I

    if-gt v5, p1, :cond_4

    .line 500
    iget v4, v4, Lmh;->d:I

    add-int/2addr v5, v4

    if-le v5, p1, :cond_2

    goto :goto_2

    :cond_2
    sub-int/2addr p1, v4

    goto :goto_1

    .line 501
    :cond_3
    iget v5, v4, Lmh;->b:I

    if-gt v5, p1, :cond_4

    .line 502
    iget v4, v4, Lmh;->d:I

    add-int/2addr p1, v4

    .line 498
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 496
    :cond_5
    move v1, p1

    .line 500
    :goto_2
    return v1

    .line 0
    :cond_6
    :goto_3
    return v1
.end method

.method public final d(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    .line 516
    iget-boolean v1, v0, Lql;->e:Z

    if-nez v1, :cond_0

    .line 517
    iget-object p1, v0, Lql;->d:Landroid/graphics/Rect;

    return-object p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-boolean v1, v1, Lqx;->g:Z

    if-eqz v1, :cond_2

    .line 518
    invoke-virtual {v0}, Lql;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lql;->c:Lqz;

    .line 519
    invoke-virtual {v1}, Lqz;->j()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 529
    :cond_1
    iget-object p1, v0, Lql;->d:Landroid/graphics/Rect;

    return-object p1

    .line 520
    :cond_2
    :goto_0
    iget-object v1, v0, Lql;->d:Landroid/graphics/Rect;

    .line 521
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    .line 522
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 523
    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyj;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, p1, p0}, Lyj;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V

    .line 525
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 526
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 527
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 528
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v2, v0, Lql;->e:Z

    return-object v1
.end method

.method public final d(I)Lqz;
    .locals 5

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 448
    invoke-virtual {v0}, Lnu;->b()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 449
    invoke-virtual {v3, v2}, Lnu;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lqz;->m()Z

    move-result v4

    if-nez v4, :cond_2

    .line 450
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->d(Lqz;)I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    iget-object v4, v3, Lqz;->a:Landroid/view/View;

    .line 451
    invoke-virtual {v1, v4}, Lnu;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    :cond_0
    return-void
.end method

.method public final d(II)V
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    .line 362
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 363
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    sub-int v2, v0, p1

    sub-int v3, v1, p2

    .line 364
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    .line 366
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqc;

    invoke-virtual {v1, p0, p1, p2}, Laqc;->a(Landroid/support/v7/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    return-void
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 1

    .line 355
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lfq;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 1

    .line 356
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lfq;->a(FF)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 357
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lfq;->a(II[I[I)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 359
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lfq;->a(IIII[I)Z

    move-result p1

    return p1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 368
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 369
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 370
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    .line 371
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    .line 372
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyj;

    invoke-virtual {v3, p1}, Lyj;->a(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 373
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    if-eqz v3, :cond_1

    .line 375
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    .line 397
    :cond_1
    const/4 v3, 0x0

    .line 375
    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    .line 376
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 377
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    .line 378
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    .line 397
    :cond_2
    const/4 v3, 0x0

    .line 379
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    .line 397
    :cond_3
    const/4 v3, 0x0

    .line 379
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    .line 380
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 381
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    if-eqz v4, :cond_4

    .line 382
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_5

    .line 383
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    .line 397
    :cond_5
    const/4 v4, 0x0

    .line 383
    :goto_4
    or-int/2addr v3, v4

    .line 384
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    .line 385
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 386
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 387
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    if-eqz v5, :cond_7

    .line 388
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    goto :goto_5

    .line 397
    :cond_7
    const/4 v5, 0x0

    .line 388
    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    .line 389
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    .line 390
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_8

    .line 391
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    .line 397
    :cond_8
    const/4 v4, 0x0

    .line 391
    :goto_6
    or-int/2addr v3, v4

    .line 392
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c

    .line 393
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 394
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    .line 395
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    if-eqz v4, :cond_a

    .line 396
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    .line 397
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 396
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_b

    .line 398
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    .line 402
    :cond_b
    nop

    .line 398
    :goto_8
    or-int/2addr v3, v1

    .line 399
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_9

    .line 397
    :cond_c
    nop

    .line 399
    :goto_9
    if-nez v3, :cond_e

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    .line 400
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    .line 401
    invoke-virtual {p1}, Lqg;->c()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_a

    .line 402
    :cond_d
    return-void

    :cond_e
    :goto_a
    invoke-static {p0}, Lge;->d(Landroid/view/View;)V

    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 403
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 1

    .line 957
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 958
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 956
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfq;->c(I)V

    return-void
.end method

.method public final e(II)V
    .locals 1

    .line 953
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lfq;->a(II)Z

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-static {p0}, Lyj;->a(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 410
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 409
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    nop

    .line 411
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 13

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 486
    :cond_1
    const/4 v0, 0x0

    .line 455
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    const/16 v4, 0x11

    const/16 v5, 0x42

    const/16 v6, 0x82

    const/16 v7, 0x21

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v0, :cond_b

    if-eq p2, v9, :cond_2

    if-ne p2, v1, :cond_b

    const/4 p2, 0x1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 456
    invoke-virtual {v0}, Lqk;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p2, v9, :cond_3

    const/16 v0, 0x82

    goto :goto_1

    .line 482
    :cond_3
    const/16 v0, 0x21

    .line 457
    :goto_1
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 458
    invoke-virtual {v0}, Lqk;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 459
    invoke-virtual {v0}, Lqk;->r()I

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    .line 482
    :cond_5
    const/4 v0, 0x0

    .line 459
    :goto_2
    if-ne p2, v9, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    .line 482
    :cond_6
    const/4 v10, 0x0

    .line 459
    :goto_3
    xor-int/2addr v0, v10

    if-eq v1, v0, :cond_7

    const/16 v0, 0x11

    goto :goto_4

    .line 482
    :cond_7
    const/16 v0, 0x42

    .line 460
    :goto_4
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    .line 461
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 462
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    return-object v8

    .line 463
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 464
    invoke-virtual {v0, p1, p2, v10, v11}, Lqk;->a(Landroid/view/View;ILqq;Lqx;)Landroid/view/View;

    .line 465
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 466
    :cond_a
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 467
    :cond_b
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_d

    if-eqz v0, :cond_d

    .line 468
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 469
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v8

    .line 470
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 471
    invoke-virtual {v0, p1, p2, v3, v10}, Lqk;->a(Landroid/view/View;ILqq;Lqx;)Landroid/view/View;

    move-result-object v0

    .line 472
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    goto :goto_5

    :cond_d
    nop

    .line 466
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_f

    .line 473
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-nez v3, :cond_f

    .line 487
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    .line 488
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_e
    nop

    .line 489
    invoke-direct {p0, v0, v8}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    :cond_f
    if-eqz v0, :cond_24

    if-ne v0, p0, :cond_10

    goto/16 :goto_c

    .line 474
    :cond_10
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_24

    if-nez p1, :cond_11

    goto/16 :goto_b

    .line 475
    :cond_11
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v3, v2, v2, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    .line 477
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v3, v2, v2, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 478
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    .line 479
    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 480
    invoke-virtual {v3}, Lqk;->r()I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v1, :cond_12

    const/4 v3, -0x1

    goto :goto_6

    .line 482
    :cond_12
    const/4 v3, 0x1

    .line 480
    :goto_6
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 481
    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    if-lt v10, v11, :cond_13

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    if-gt v10, v11, :cond_14

    :cond_13
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    if-ge v10, v11, :cond_14

    const/4 v10, 0x1

    goto :goto_7

    .line 484
    :cond_14
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 482
    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    if-gt v10, v11, :cond_15

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    if-lt v10, v11, :cond_16

    :cond_15
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    if-le v10, v11, :cond_16

    const/4 v10, -0x1

    goto :goto_7

    :cond_16
    const/4 v10, 0x0

    .line 481
    :goto_7
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 483
    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-lt v11, v12, :cond_17

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-gt v11, v12, :cond_18

    :cond_17
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    if-ge v11, v12, :cond_18

    const/4 v8, 0x1

    goto :goto_8

    :cond_18
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 484
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    if-gt v11, v12, :cond_19

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    if-lt v11, v12, :cond_1a

    :cond_19
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-le v11, v12, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v8, 0x0

    .line 483
    :goto_8
    if-eq p2, v1, :cond_20

    if-eq p2, v9, :cond_1f

    if-eq p2, v4, :cond_1e

    if-eq p2, v7, :cond_1d

    if-eq p2, v5, :cond_1c

    if-ne p2, v6, :cond_1b

    if-lez v8, :cond_24

    goto :goto_9

    .line 472
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 486
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 483
    :cond_1c
    if-lez v10, :cond_24

    goto :goto_9

    :cond_1d
    if-gez v8, :cond_24

    goto :goto_9

    :cond_1e
    if-gez v10, :cond_24

    :goto_9
    goto :goto_b

    :cond_1f
    if-gtz v8, :cond_22

    if-nez v8, :cond_21

    mul-int v10, v10, v3

    if-ltz v10, :cond_24

    goto :goto_a

    :cond_20
    if-ltz v8, :cond_22

    if-nez v8, :cond_21

    mul-int v10, v10, v3

    if-gtz v10, :cond_24

    goto :goto_a

    :cond_21
    const/4 v1, 0x0

    :cond_22
    :goto_a
    if-eqz v1, :cond_24

    goto :goto_9

    .line 474
    :cond_23
    :goto_b
    return-object v0

    .line 485
    :cond_24
    :goto_c
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-static {p0}, Lyj;->a(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    if-eqz v1, :cond_1

    .line 413
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 414
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    nop

    .line 415
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Lqk;->a()Lql;

    move-result-object v0

    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 490
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lqk;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lql;

    move-result-object p1

    return-object p1

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 492
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0, p1}, Lqk;->a(Landroid/view/ViewGroup$LayoutParams;)Lql;

    move-result-object p1

    return-object p1

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 494
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "android.support.v7.widget.RecyclerView"

    return-object v0
.end method

.method public final getBaseline()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 503
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method public final getClipToPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    return v0
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-static {p0}, Lyj;->a(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 418
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 417
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    nop

    .line 419
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final hasNestedScrollingParent()Z
    .locals 1

    .line 531
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    invoke-virtual {v0}, Lfq;->a()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-static {p0}, Lyj;->a(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 406
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 405
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    nop

    .line 407
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    return v0
.end method

.method public final isLayoutSuppressed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    return v0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    .line 534
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    iget-boolean v0, v0, Lfq;->a:Z

    return v0
.end method

.method final j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public final k()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    return-void
.end method

.method final l()V
    .locals 1

    .line 574
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->b(Z)V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->at:Ljava/lang/Runnable;

    .line 763
    invoke-static {p0, v0}, Lge;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    :cond_0
    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 3

    .line 555
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    if-eqz v2, :cond_0

    .line 556
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    const/4 v1, 0x0

    .line 556
    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    .line 557
    sget-object v0, Low;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Low;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Low;

    if-nez v0, :cond_3

    new-instance v0, Low;

    .line 558
    invoke-direct {v0}, Low;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Low;

    .line 559
    invoke-static {p0}, Lge;->E(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    .line 560
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, v0, v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_1

    .line 563
    :cond_2
    nop

    .line 561
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Low;

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Low;->d:J

    sget-object v0, Low;->a:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Low;

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Low;

    iget-object v0, v0, Low;->b:Ljava/util/ArrayList;

    .line 563
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .line 564
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Lqg;->e()V

    .line 566
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Ljava/util/List;

    .line 567
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->at:Ljava/lang/Runnable;

    .line 568
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 569
    invoke-static {}, Lsb;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Low;

    if-eqz v0, :cond_1

    iget-object v0, v0, Low;->b:Ljava/util/ArrayList;

    .line 570
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Low;

    :cond_1
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 571
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    .line 572
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/ArrayList;

    .line 573
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyj;

    invoke-virtual {v2, p1, p0}, Lyj;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_1

    return v1

    .line 587
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_12

    .line 588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 589
    invoke-virtual {v0}, Lqk;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    .line 590
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    .line 607
    :cond_2
    const/4 v0, 0x0

    .line 590
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 591
    invoke-virtual {v3}, Lqk;->i()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    .line 592
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_1

    .line 607
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 593
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    const/16 v0, 0x1a

    .line 594
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 595
    invoke-virtual {v0}, Lqk;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    neg-float v0, v3

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 596
    invoke-virtual {v0}, Lqk;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 592
    :goto_1
    cmpl-float v4, v0, v2

    if-nez v4, :cond_7

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_12

    :cond_7
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->al:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->am:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-nez v3, :cond_8

    .line 597
    const-string p1, "RecyclerView"

    const-string v0, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_8
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-nez v4, :cond_12

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->L:[I

    .line 598
    aput v1, v4, v1

    .line 599
    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-virtual {v3}, Lqk;->i()Z

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 600
    invoke-virtual {v4}, Lqk;->j()Z

    move-result v4

    if-eqz v3, :cond_9

    const/4 v6, 0x1

    goto :goto_2

    .line 607
    :cond_9
    const/4 v6, 0x0

    .line 600
    :goto_2
    if-eqz v4, :cond_a

    or-int/lit8 v6, v6, 0x2

    .line 601
    :cond_a
    invoke-virtual {p0, v6, v5}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    if-eq v5, v3, :cond_b

    const/4 v8, 0x0

    goto :goto_3

    .line 607
    :cond_b
    move v8, v2

    .line 601
    :goto_3
    if-eq v5, v4, :cond_c

    const/4 v9, 0x0

    goto :goto_4

    .line 607
    :cond_c
    move v9, v0

    .line 601
    :goto_4
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->L:[I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->ar:[I

    const/4 v12, 0x1

    .line 602
    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/RecyclerView;->a(II[I[II)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->L:[I

    .line 603
    aget v7, v6, v1

    sub-int/2addr v2, v7

    .line 604
    aget v6, v6, v5

    sub-int/2addr v0, v6

    goto :goto_5

    .line 607
    :cond_d
    nop

    .line 604
    :goto_5
    if-eq v5, v3, :cond_e

    const/4 v3, 0x0

    goto :goto_6

    .line 607
    :cond_e
    move v3, v2

    .line 604
    :goto_6
    if-eq v5, v4, :cond_f

    const/4 v4, 0x0

    goto :goto_7

    .line 607
    :cond_f
    move v4, v0

    .line 604
    :goto_7
    nop

    .line 605
    invoke-virtual {p0, v3, v4, p1, v5}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;I)Z

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->E:Low;

    if-eqz p1, :cond_11

    if-nez v2, :cond_10

    if-eqz v0, :cond_11

    const/4 v2, 0x0

    goto :goto_8

    .line 607
    :cond_10
    nop

    .line 606
    :goto_8
    invoke-virtual {p1, p0, v2, v0}, Low;->a(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_11
    nop

    .line 607
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->e(I)V

    .line 597
    :cond_12
    :goto_9
    return v1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lqn;

    .line 608
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 609
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lqk;->i()Z

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 610
    invoke-virtual {v3}, Lqk;->j()Z

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 611
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    .line 612
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v4, :cond_c

    if-eq v4, v2, :cond_b

    if-eq v4, v6, :cond_7

    const/4 v0, 0x3

    if-eq v4, v0, :cond_6

    const/4 v0, 0x5

    if-eq v4, v0, :cond_5

    const/4 v0, 0x6

    if-eq v4, v0, :cond_4

    goto/16 :goto_3

    .line 615
    :cond_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 616
    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 617
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    .line 618
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ai:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ag:I

    goto/16 :goto_3

    .line 619
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    goto/16 :goto_3

    :cond_7
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 620
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    .line 621
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 622
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 623
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    if-eq v4, v2, :cond_10

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    sub-int v4, v5, v4

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->ag:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_9

    .line 624
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    if-le v0, v4, :cond_9

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    const/4 v0, 0x1

    goto :goto_0

    .line 626
    :cond_9
    const/4 v0, 0x0

    .line 624
    :goto_0
    if-eqz v3, :cond_a

    .line 625
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    if-le v3, v4, :cond_a

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ai:I

    goto :goto_1

    .line 626
    :cond_a
    if-eqz v0, :cond_10

    .line 625
    :goto_1
    nop

    .line 626
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    goto :goto_3

    :cond_b
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    .line 627
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 628
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->e(I)V

    goto :goto_3

    :cond_c
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    if-eqz v4, :cond_d

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    .line 629
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ai:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ag:I

    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    if-ne p1, v6, :cond_e

    .line 632
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 633
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 634
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->e(I)V

    :cond_e
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    .line 635
    aput v1, p1, v2

    aput v1, p1, v1

    if-eqz v3, :cond_f

    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 636
    :cond_f
    nop

    .line 635
    :goto_2
    nop

    .line 636
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    .line 614
    :cond_10
    :goto_3
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    if-ne p1, v2, :cond_11

    return v2

    :cond_11
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 637
    const-string p1, "RV OnLayout"

    invoke-static {p1}, Lui;->a(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 639
    invoke-static {}, Lui;->a()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-nez v0, :cond_0

    .line 640
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lqk;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 641
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 642
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 643
    invoke-virtual {v3, p1, p2}, Lqk;->f(II)V

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    if-eq v2, v3, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 644
    iget v0, v0, Lqx;->d:I

    if-ne v0, v1, :cond_4

    .line 645
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 646
    invoke-virtual {v0, p1, p2}, Lqk;->c(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput-boolean v1, v0, Lqx;->i:Z

    .line 647
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 648
    invoke-virtual {v0, p1, p2}, Lqk;->d(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 649
    invoke-virtual {v0}, Lqk;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 650
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 651
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 652
    invoke-virtual {v0, v2, v3}, Lqk;->c(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput-boolean v1, v0, Lqx;->i:Z

    .line 653
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 654
    invoke-virtual {v0, p1, p2}, Lqk;->d(II)V

    :cond_5
    return-void

    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 655
    invoke-virtual {v0, p1, p2}, Lqk;->f(II)V

    return-void

    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 656
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 657
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 658
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    .line 659
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 660
    iget-boolean v3, v0, Lqx;->k:Z

    if-eqz v3, :cond_8

    iput-boolean v1, v0, Lqx;->g:Z

    goto :goto_0

    .line 667
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 661
    invoke-virtual {v0}, Lmi;->e()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput-boolean v2, v0, Lqx;->g:Z

    .line 660
    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    .line 662
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    goto :goto_1

    .line 661
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 663
    iget-boolean v0, v0, Lqx;->k:Z

    if-eqz v0, :cond_a

    .line 668
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void

    .line 662
    :cond_a
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    if-eqz v0, :cond_b

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 664
    invoke-virtual {v0}, Lqc;->a()I

    move-result v0

    iput v0, v1, Lqx;->e:I

    goto :goto_2

    .line 667
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput v2, v0, Lqx;->e:I

    .line 665
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 666
    invoke-virtual {v0, p1, p2}, Lqk;->f(II)V

    .line 667
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput-boolean v2, p1, Lqx;->g:Z

    return-void
.end method

.method protected final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 674
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 675
    instance-of v0, p1, Lqt;

    if-nez v0, :cond_0

    .line 676
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 677
    :cond_0
    check-cast p1, Lqt;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->b:Lqt;

    iget-object p1, p1, Lvl;->d:Landroid/os/Parcelable;

    .line 678
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 679
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 680
    new-instance v0, Lqt;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lqt;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Lqt;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lqt;->a:Landroid/os/Parcelable;

    iput-object v1, v0, Lqt;->a:Landroid/os/Parcelable;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v1, :cond_1

    .line 681
    invoke-virtual {v1}, Lqk;->h()Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lqt;->a:Landroid/os/Parcelable;

    .line 680
    :goto_1
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    .line 682
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->j()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Landroid/support/v7/widget/RecyclerView;->s:Z

    const/4 v8, 0x0

    if-nez v0, :cond_3e

    iget-boolean v0, v6, Landroid/support/v7/widget/RecyclerView;->U:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1e

    :cond_0
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->n:Lqn;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v9, 0x1

    if-nez v0, :cond_3b

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 685
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1d

    .line 684
    :cond_2
    :goto_0
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-nez v0, :cond_3

    return v8

    :cond_3
    invoke-virtual {v0}, Lqk;->i()Z

    move-result v10

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 686
    invoke-virtual {v0}, Lqk;->j()Z

    move-result v11

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 687
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    .line 688
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v0, :cond_5

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->as:[I

    .line 690
    aput v8, v0, v9

    aput v8, v0, v8

    const/4 v0, 0x0

    .line 691
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    iget-object v4, v6, Landroid/support/v7/widget/RecyclerView;->as:[I

    .line 692
    aget v5, v4, v8

    int-to-float v5, v5

    aget v4, v4, v9

    int-to-float v4, v4

    invoke-virtual {v12, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v0, :cond_38

    const-string v5, "RecyclerView"

    const/4 v13, 0x2

    if-eq v0, v9, :cond_1a

    if-eq v0, v13, :cond_9

    if-eq v0, v2, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    goto/16 :goto_1b

    .line 693
    :cond_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_1b

    .line 694
    :cond_7
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 695
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ah:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->af:I

    .line 696
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ai:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ag:I

    goto/16 :goto_1b

    .line 697
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    goto/16 :goto_1b

    :cond_9
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 698
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    .line 699
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->ad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 700
    :cond_a
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v13, v1

    .line 701
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v14, v0

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->ah:I

    sub-int/2addr v0, v13

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->ai:I

    sub-int/2addr v1, v14

    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->ac:I

    if-eq v2, v9, :cond_12

    if-eqz v10, :cond_d

    if-lez v0, :cond_b

    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->aj:I

    sub-int/2addr v0, v2

    .line 702
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 705
    :cond_b
    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->aj:I

    add-int/2addr v0, v2

    .line 703
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 702
    :goto_1
    if-eqz v0, :cond_c

    const/4 v2, 0x1

    goto :goto_2

    .line 705
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    .line 703
    :cond_d
    const/4 v2, 0x0

    .line 702
    :goto_2
    if-eqz v11, :cond_10

    if-lez v1, :cond_e

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->aj:I

    sub-int/2addr v1, v3

    .line 704
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    .line 719
    :cond_e
    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->aj:I

    add-int/2addr v1, v3

    .line 705
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 704
    :goto_3
    if-eqz v1, :cond_f

    const/4 v2, 0x1

    goto :goto_4

    .line 719
    :cond_f
    goto :goto_4

    .line 705
    :cond_10
    nop

    .line 704
    :goto_4
    if-eqz v2, :cond_11

    .line 706
    invoke-virtual {v6, v9}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    goto :goto_5

    .line 719
    :cond_11
    nop

    .line 706
    :goto_5
    move v15, v0

    move/from16 v16, v1

    goto :goto_6

    .line 703
    :cond_12
    move v15, v0

    move/from16 v16, v1

    .line 706
    :goto_6
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->ac:I

    if-ne v0, v9, :cond_3a

    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->L:[I

    .line 707
    aput v8, v3, v8

    .line 708
    aput v8, v3, v9

    if-eq v9, v10, :cond_13

    const/4 v1, 0x0

    goto :goto_7

    .line 719
    :cond_13
    move v1, v15

    .line 708
    :goto_7
    if-eq v9, v11, :cond_14

    const/4 v2, 0x0

    goto :goto_8

    .line 719
    :cond_14
    move/from16 v2, v16

    .line 708
    :goto_8
    iget-object v4, v6, Landroid/support/v7/widget/RecyclerView;->ar:[I

    const/4 v5, 0x0

    .line 709
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->a(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->L:[I

    .line 710
    aget v1, v0, v8

    sub-int/2addr v15, v1

    .line 711
    aget v0, v0, v9

    sub-int v16, v16, v0

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->as:[I

    .line 712
    aget v1, v0, v8

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->ar:[I

    aget v3, v2, v8

    add-int/2addr v1, v3

    aput v1, v0, v8

    .line 713
    aget v1, v0, v9

    aget v2, v2, v9

    add-int/2addr v1, v2

    aput v1, v0, v9

    .line 714
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move/from16 v0, v16

    goto :goto_9

    .line 719
    :cond_15
    move/from16 v0, v16

    .line 714
    :goto_9
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->ar:[I

    .line 715
    aget v2, v1, v8

    sub-int/2addr v13, v2

    iput v13, v6, Landroid/support/v7/widget/RecyclerView;->ah:I

    .line 716
    aget v1, v1, v9

    sub-int/2addr v14, v1

    iput v14, v6, Landroid/support/v7/widget/RecyclerView;->ai:I

    if-eq v9, v10, :cond_16

    const/4 v1, 0x0

    goto :goto_a

    .line 719
    :cond_16
    move v1, v15

    .line 716
    :goto_a
    if-eq v9, v11, :cond_17

    const/4 v2, 0x0

    goto :goto_b

    .line 719
    :cond_17
    move v2, v0

    .line 716
    :goto_b
    nop

    .line 717
    invoke-virtual {v6, v1, v2, v7, v8}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 718
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_18
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->E:Low;

    if-eqz v1, :cond_3a

    if-nez v15, :cond_19

    if-eqz v0, :cond_3a

    goto :goto_c

    .line 719
    :cond_19
    move v8, v15

    :goto_c
    invoke-virtual {v1, v6, v8, v0}, Low;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_1b

    .line 703
    :cond_1a
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    .line 720
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->ak:I

    int-to-float v3, v3

    .line 721
    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v0, 0x0

    if-eqz v10, :cond_1b

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 722
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_d

    .line 743
    :cond_1b
    const/4 v2, 0x0

    .line 722
    :goto_d
    if-eqz v11, :cond_1c

    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    iget v4, v6, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 723
    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_e

    .line 743
    :cond_1c
    const/4 v3, 0x0

    .line 723
    :goto_e
    cmpl-float v4, v2, v0

    if-nez v4, :cond_1d

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_37

    :cond_1d
    float-to-int v2, v2

    float-to-int v3, v3

    iget-object v4, v6, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-nez v4, :cond_1e

    .line 724
    const-string v0, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 753
    :cond_1e
    iget-boolean v5, v6, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-nez v5, :cond_37

    invoke-virtual {v4}, Lqk;->i()Z

    move-result v4

    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 725
    invoke-virtual {v5}, Lqk;->j()Z

    move-result v5

    if-eqz v4, :cond_1f

    .line 726
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v10, v6, Landroid/support/v7/widget/RecyclerView;->C:I

    if-ge v7, v10, :cond_20

    const/4 v2, 0x0

    goto :goto_f

    .line 743
    :cond_1f
    const/4 v2, 0x0

    .line 726
    :cond_20
    :goto_f
    if-eqz v5, :cond_21

    .line 727
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v10, v6, Landroid/support/v7/widget/RecyclerView;->C:I

    if-ge v7, v10, :cond_22

    const/4 v3, 0x0

    goto :goto_10

    .line 743
    :cond_21
    const/4 v3, 0x0

    .line 727
    :cond_22
    :goto_10
    if-nez v2, :cond_23

    if-eqz v3, :cond_37

    const/4 v2, 0x0

    :cond_23
    int-to-float v7, v2

    int-to-float v10, v3

    .line 728
    invoke-virtual {v6, v7, v10}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v11

    if-nez v11, :cond_37

    .line 729
    invoke-virtual {v6, v7, v10, v9}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    iget-object v7, v6, Landroid/support/v7/widget/RecyclerView;->B:Lqm;

    if-eqz v7, :cond_34

    iget-object v10, v7, Lqm;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-nez v11, :cond_24

    goto/16 :goto_16

    .line 750
    :cond_24
    iget-object v14, v10, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    if-eqz v14, :cond_34

    iget v10, v10, Landroid/support/v7/widget/RecyclerView;->C:I

    .line 730
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-gt v14, v10, :cond_25

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-le v14, v10, :cond_34

    .line 731
    :cond_25
    instance-of v10, v11, Lqv;

    if-eqz v10, :cond_34

    new-instance v10, Lrg;

    iget-object v14, v7, Lqm;->a:Landroid/support/v7/widget/RecyclerView;

    .line 732
    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v10, v7, v14}, Lrg;-><init>(Lqm;Landroid/content/Context;)V

    iget-object v14, v11, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v14, :cond_26

    iget-object v1, v14, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    goto :goto_11

    .line 743
    :cond_26
    nop

    .line 732
    :goto_11
    if-eqz v1, :cond_27

    .line 733
    invoke-virtual {v1}, Lqc;->a()I

    move-result v1

    goto :goto_12

    .line 743
    :cond_27
    const/4 v1, 0x0

    .line 733
    :goto_12
    const/4 v14, -0x1

    if-nez v1, :cond_28

    const/4 v13, -0x1

    goto/16 :goto_15

    .line 734
    :cond_28
    invoke-virtual {v7, v11}, Lqm;->a(Lqk;)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_29

    const/4 v13, -0x1

    goto :goto_15

    .line 735
    :cond_29
    invoke-static {v15}, Lqk;->i(Landroid/view/View;)I

    move-result v15

    if-ne v15, v14, :cond_2a

    const/4 v13, -0x1

    goto :goto_15

    :cond_2a
    add-int/lit8 v13, v1, -0x1

    .line 736
    move-object v14, v11

    check-cast v14, Lqv;

    .line 737
    invoke-interface {v14, v13}, Lqv;->b(I)Landroid/graphics/PointF;

    move-result-object v14

    if-nez v14, :cond_2b

    const/4 v13, -0x1

    goto :goto_15

    :cond_2b
    invoke-virtual {v11}, Lqk;->i()Z

    move-result v17

    if-eqz v17, :cond_2c

    .line 738
    invoke-virtual {v7, v11}, Lqm;->c(Lqk;)Lpv;

    move-result-object v9

    .line 739
    invoke-virtual {v7, v11, v9, v2, v8}, Lqm;->a(Lqk;Lpv;II)I

    move-result v9

    .line 740
    iget v8, v14, Landroid/graphics/PointF;->x:F

    cmpg-float v8, v8, v0

    if-gez v8, :cond_2d

    neg-int v9, v9

    goto :goto_13

    .line 743
    :cond_2c
    const/4 v9, 0x0

    .line 740
    :cond_2d
    :goto_13
    invoke-virtual {v11}, Lqk;->j()Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 741
    invoke-virtual {v7, v11}, Lqm;->b(Lqk;)Lpv;

    move-result-object v8

    .line 742
    const/4 v0, 0x0

    invoke-virtual {v7, v11, v8, v0, v3}, Lqm;->a(Lqk;Lpv;II)I

    move-result v7

    .line 743
    iget v0, v14, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_2e

    neg-int v0, v7

    goto :goto_14

    :cond_2e
    move v0, v7

    goto :goto_14

    :cond_2f
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v11}, Lqk;->j()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v8, v7, :cond_30

    move v9, v0

    :cond_30
    if-nez v9, :cond_31

    const/4 v13, -0x1

    goto :goto_15

    :cond_31
    add-int v0, v15, v9

    if-gez v0, :cond_32

    const/4 v0, 0x0

    :cond_32
    if-lt v0, v1, :cond_33

    goto :goto_15

    :cond_33
    move v13, v0

    .line 733
    :goto_15
    const/4 v0, -0x1

    if-eq v13, v0, :cond_34

    iput v13, v10, Lqw;->a:I

    .line 751
    invoke-virtual {v11, v10}, Lqk;->a(Lqw;)V

    goto :goto_19

    .line 729
    :cond_34
    :goto_16
    if-eqz v5, :cond_35

    or-int/lit8 v4, v4, 0x2

    goto :goto_17

    .line 750
    :cond_35
    nop

    .line 729
    :goto_17
    nop

    .line 744
    const/4 v0, 0x1

    invoke-virtual {v6, v4, v0}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->ak:I

    neg-int v1, v0

    .line 745
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v21

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->ak:I

    neg-int v1, v0

    .line 746
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->D:Lqy;

    iget-object v1, v0, Lqy;->e:Landroid/support/v7/widget/RecyclerView;

    .line 747
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    const/4 v1, 0x0

    iput v1, v0, Lqy;->b:I

    iput v1, v0, Lqy;->a:I

    iget-object v1, v0, Lqy;->d:Landroid/view/animation/Interpolator;

    sget-object v2, Landroid/support/v7/widget/RecyclerView;->N:Landroid/view/animation/Interpolator;

    if-eq v1, v2, :cond_36

    iput-object v2, v0, Lqy;->d:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/widget/OverScroller;

    iget-object v3, v0, Lqy;->e:Landroid/support/v7/widget/RecyclerView;

    .line 748
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lqy;->c:Landroid/widget/OverScroller;

    :cond_36
    iget-object v1, v0, Lqy;->c:Landroid/widget/OverScroller;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v23, -0x80000000

    const v24, 0x7fffffff

    const/high16 v25, -0x80000000

    const v26, 0x7fffffff

    .line 749
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v26}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 750
    invoke-virtual {v0}, Lqy;->a()V

    goto :goto_19

    .line 724
    :cond_37
    :goto_18
    nop

    .line 752
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 753
    :goto_19
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    goto :goto_1c

    .line 743
    :cond_38
    const/4 v0, 0x0

    .line 754
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 755
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ah:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->af:I

    .line 756
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ai:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ag:I

    if-eqz v11, :cond_39

    or-int/lit8 v10, v10, 0x2

    goto :goto_1a

    .line 757
    :cond_39
    nop

    .line 756
    :goto_1a
    nop

    .line 757
    const/4 v0, 0x0

    invoke-virtual {v6, v10, v0}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    .line 692
    :cond_3a
    :goto_1b
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    .line 758
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 759
    :goto_1c
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    const/4 v3, 0x1

    return v3

    .line 760
    :cond_3b
    const/4 v3, 0x1

    invoke-interface {v0, v7}, Lqn;->b(Landroid/view/MotionEvent;)V

    .line 761
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3c

    if-ne v0, v3, :cond_3d

    :cond_3c
    iput-object v1, v6, Landroid/support/v7/widget/RecyclerView;->n:Lqn;

    .line 762
    :cond_3d
    :goto_1d
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    const/4 v0, 0x1

    return v0

    .line 0
    :cond_3e
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method final p()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    const-string v2, "RecyclerView"

    if-nez v1, :cond_0

    .line 184
    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-nez v1, :cond_1

    .line 185
    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lqx;->i:Z

    .line 186
    iget v1, v1, Lqx;->d:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 187
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 188
    invoke-virtual {v1, v0}, Lqk;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 189
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    goto :goto_1

    .line 280
    :cond_2
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    iget-object v5, v1, Lmi;->b:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v1, v1, Lmi;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 195
    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget v1, v1, Lqk;->B:I

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    if-ne v1, v5, :cond_5

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget v1, v1, Lqk;->C:I

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    if-eq v1, v5, :cond_4

    goto :goto_0

    .line 228
    :cond_4
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 193
    invoke-virtual {v1, v0}, Lqk;->b(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_1

    .line 190
    :cond_5
    :goto_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 194
    invoke-virtual {v1, v0}, Lqk;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 195
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    .line 189
    :goto_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 196
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lqx;->a(I)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iput v4, v1, Lqx;->d:I

    .line 199
    iget-boolean v1, v1, Lqx;->j:Z

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 200
    invoke-virtual {v1}, Lnu;->a()I

    move-result v1

    add-int/2addr v1, v6

    :goto_2
    if-ltz v1, :cond_12

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 201
    invoke-virtual {v8, v1}, Lnu;->b(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v8

    .line 202
    invoke-virtual {v8}, Lqz;->w()Z

    move-result v9

    if-eqz v9, :cond_6

    goto/16 :goto_5

    .line 203
    :cond_6
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->b(Lqz;)J

    move-result-wide v9

    invoke-static {}, Lqg;->b()Lqf;

    move-result-object v11

    .line 204
    invoke-virtual {v11, v8}, Lqf;->a(Lqz;)V

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    iget-object v12, v12, Lsc;->b:Ltm;

    .line 205
    invoke-virtual {v12, v9, v10}, Ltm;->a(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lqz;

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lqz;->w()Z

    move-result v13

    if-nez v13, :cond_10

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 207
    invoke-virtual {v13, v12}, Lsc;->a(Lqz;)Z

    move-result v13

    iget-object v14, v0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 208
    invoke-virtual {v14, v8}, Lsc;->a(Lqz;)Z

    move-result v14

    if-eqz v13, :cond_7

    if-ne v12, v8, :cond_7

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 226
    invoke-virtual {v9, v8, v11}, Lsc;->b(Lqz;Lqf;)V

    goto/16 :goto_5

    :cond_7
    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 209
    invoke-virtual {v15, v12, v5}, Lsc;->a(Lqz;I)Lqf;

    move-result-object v15

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 210
    invoke-virtual {v5, v8, v11}, Lsc;->b(Lqz;Lqf;)V

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 211
    const/16 v11, 0x8

    invoke-virtual {v5, v8, v11}, Lsc;->a(Lqz;I)Lqf;

    move-result-object v5

    if-nez v15, :cond_c

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 212
    invoke-virtual {v5}, Lnu;->a()I

    move-result v5

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v5, :cond_b

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 213
    invoke-virtual {v13, v11}, Lnu;->b(I)Landroid/view/View;

    move-result-object v13

    .line 214
    invoke-static {v13}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v13

    if-ne v13, v8, :cond_8

    goto :goto_4

    .line 215
    :cond_8
    invoke-virtual {v0, v13}, Landroid/support/v7/widget/RecyclerView;->b(Lqz;)J

    move-result-wide v14

    cmp-long v16, v14, v9

    if-nez v16, :cond_a

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    const-string v2, " \n View Holder 2:"

    if-eqz v1, :cond_9

    iget-boolean v1, v1, Lqc;->b:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 230
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 216
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " cannot be found but it is necessary for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    nop

    .line 218
    invoke-virtual {v12, v3}, Lqz;->a(Z)V

    if-eqz v13, :cond_d

    .line 219
    invoke-virtual {v0, v12}, Landroid/support/v7/widget/RecyclerView;->a(Lqz;)V

    :cond_d
    if-eq v12, v8, :cond_f

    if-eqz v14, :cond_e

    .line 220
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->a(Lqz;)V

    :cond_e
    iput-object v8, v12, Lqz;->h:Lqz;

    .line 221
    invoke-virtual {v0, v12}, Landroid/support/v7/widget/RecyclerView;->a(Lqz;)V

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 222
    invoke-virtual {v9, v12}, Lqq;->b(Lqz;)V

    .line 223
    invoke-virtual {v8, v3}, Lqz;->a(Z)V

    iput-object v12, v8, Lqz;->i:Lqz;

    :cond_f
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    .line 224
    invoke-virtual {v9, v12, v8, v15, v5}, Lqg;->a(Lqz;Lqz;Lqf;Lqf;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    goto :goto_5

    :cond_10
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 206
    invoke-virtual {v5, v8, v11}, Lsc;->b(Lqz;Lqf;)V

    .line 202
    :cond_11
    :goto_5
    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x4

    goto/16 :goto_2

    .line 206
    :cond_12
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->av:Lpz;

    iget-object v5, v1, Lsc;->a:Lto;

    iget v5, v5, Lto;->j:I

    add-int/2addr v5, v6

    :goto_6
    if-ltz v5, :cond_1d

    iget-object v8, v1, Lsc;->a:Lto;

    .line 231
    invoke-virtual {v8, v5}, Lto;->b(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lqz;

    iget-object v8, v1, Lsc;->a:Lto;

    .line 232
    invoke-virtual {v8, v5}, Lto;->d(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsb;

    .line 233
    iget v9, v8, Lsb;->a:I

    and-int/lit8 v11, v9, 0x3

    const/4 v12, 0x3

    if-ne v11, v12, :cond_13

    .line 234
    invoke-virtual {v2, v10}, Lpz;->a(Lqz;)V

    goto/16 :goto_8

    .line 249
    :cond_13
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_15

    .line 235
    iget-object v9, v8, Lsb;->b:Lqf;

    if-nez v9, :cond_14

    .line 236
    invoke-virtual {v2, v10}, Lpz;->a(Lqz;)V

    goto/16 :goto_8

    .line 237
    :cond_14
    iget-object v11, v8, Lsb;->c:Lqf;

    invoke-virtual {v2, v10, v9, v11}, Lpz;->a(Lqz;Lqf;Lqf;)V

    goto/16 :goto_8

    :cond_15
    and-int/lit8 v11, v9, 0xe

    const/16 v12, 0xe

    if-ne v11, v12, :cond_16

    .line 238
    iget-object v9, v8, Lsb;->b:Lqf;

    iget-object v11, v8, Lsb;->c:Lqf;

    invoke-virtual {v2, v10, v9, v11}, Lpz;->b(Lqz;Lqf;Lqf;)V

    goto :goto_8

    :cond_16
    and-int/lit8 v11, v9, 0xc

    const/16 v12, 0xc

    if-ne v11, v12, :cond_1a

    .line 239
    iget-object v9, v8, Lsb;->b:Lqf;

    iget-object v11, v8, Lsb;->c:Lqf;

    .line 240
    invoke-virtual {v10, v3}, Lqz;->a(Z)V

    iget-object v12, v2, Lpz;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v13, v12, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v13, :cond_17

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    .line 241
    invoke-virtual {v12, v10, v10, v9, v11}, Lqg;->a(Lqz;Lqz;Lqf;Lqf;)Z

    move-result v9

    if-eqz v9, :cond_1c

    iget-object v9, v2, Lpz;->a:Landroid/support/v7/widget/RecyclerView;

    .line 242
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->o()V

    goto :goto_8

    :cond_17
    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    .line 243
    iget v13, v9, Lqf;->a:I

    iget v14, v11, Lqf;->a:I

    if-ne v13, v14, :cond_19

    iget v15, v9, Lqf;->b:I

    iget v6, v11, Lqf;->b:I

    if-eq v15, v6, :cond_18

    goto :goto_7

    .line 246
    :cond_18
    invoke-virtual {v12, v10}, Lqg;->a(Lqz;)V

    goto :goto_8

    .line 244
    :cond_19
    :goto_7
    iget v6, v9, Lqf;->b:I

    iget v15, v11, Lqf;->b:I

    move-object v9, v12

    move v11, v13

    move v12, v6

    move v13, v14

    move v14, v15

    invoke-virtual/range {v9 .. v14}, Lqg;->a(Lqz;IIII)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, v2, Lpz;->a:Landroid/support/v7/widget/RecyclerView;

    .line 245
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->o()V

    goto :goto_8

    .line 246
    :cond_1a
    and-int/lit8 v6, v9, 0x4

    if-eqz v6, :cond_1b

    .line 247
    iget-object v6, v8, Lsb;->b:Lqf;

    invoke-virtual {v2, v10, v6, v7}, Lpz;->a(Lqz;Lqf;Lqf;)V

    goto :goto_8

    :cond_1b
    and-int/lit8 v6, v9, 0x8

    if-eqz v6, :cond_1c

    .line 248
    iget-object v6, v8, Lsb;->b:Lqf;

    iget-object v9, v8, Lsb;->c:Lqf;

    invoke-virtual {v2, v10, v6, v9}, Lpz;->b(Lqz;Lqf;Lqf;)V

    .line 249
    :cond_1c
    :goto_8
    invoke-static {v8}, Lsb;->a(Lsb;)V

    add-int/lit8 v5, v5, -0x1

    const/4 v6, -0x1

    goto/16 :goto_6

    .line 248
    :cond_1d
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 250
    invoke-virtual {v1, v2}, Lqk;->a(Lqq;)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 251
    iget v2, v1, Lqx;->e:I

    iput v2, v1, Lqx;->b:I

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->u:Z

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->v:Z

    iput-boolean v3, v1, Lqx;->j:Z

    iput-boolean v3, v1, Lqx;->k:Z

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iput-boolean v3, v1, Lqk;->u:Z

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 252
    iget-object v1, v1, Lqq;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    .line 253
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1e
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 254
    iget-boolean v2, v1, Lqk;->y:Z

    if-eqz v2, :cond_1f

    iput v3, v1, Lqk;->x:I

    iput-boolean v3, v1, Lqk;->y:Z

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 255
    invoke-virtual {v1}, Lqq;->b()V

    :cond_1f
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 256
    invoke-virtual {v1, v2}, Lqk;->a(Lqx;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 258
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 259
    invoke-virtual {v1}, Lsc;->a()V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->ap:[I

    .line 260
    aget v2, v1, v3

    aget v5, v1, v4

    .line 261
    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a([I)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->ap:[I

    .line 262
    aget v6, v1, v3

    if-ne v6, v2, :cond_20

    aget v1, v1, v4

    if-eq v1, v5, :cond_21

    .line 263
    :cond_20
    invoke-virtual {v0, v3, v3}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    :cond_21
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->an:Z

    if-eqz v1, :cond_33

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    if-eqz v1, :cond_33

    .line 264
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_33

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_33

    .line 267
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_23

    .line 268
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 269
    invoke-virtual {v2, v1}, Lnu;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_23
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 270
    iget-wide v1, v1, Lqx;->m:J

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-eqz v6, :cond_26

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    iget-boolean v8, v6, Lqc;->b:Z

    if-eqz v8, :cond_26

    if-eqz v6, :cond_26

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 271
    invoke-virtual {v6}, Lnu;->b()I

    move-result v6

    move-object v9, v7

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v6, :cond_27

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 272
    invoke-virtual {v10, v8}, Lnu;->c(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v10

    if-eqz v10, :cond_25

    invoke-virtual {v10}, Lqz;->m()Z

    move-result v11

    if-nez v11, :cond_25

    iget-wide v11, v10, Lqz;->e:J

    cmp-long v13, v11, v1

    if-nez v13, :cond_25

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    iget-object v11, v10, Lqz;->a:Landroid/view/View;

    .line 273
    invoke-virtual {v9, v11}, Lnu;->c(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_24

    move-object v9, v10

    goto :goto_a

    :cond_24
    move-object v9, v10

    goto :goto_b

    :cond_25
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 280
    :cond_26
    move-object v9, v7

    .line 273
    :cond_27
    :goto_b
    if-eqz v9, :cond_29

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    iget-object v2, v9, Lqz;->a:Landroid/view/View;

    .line 274
    invoke-virtual {v1, v2}, Lnu;->c(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, v9, Lqz;->a:Landroid/view/View;

    .line 275
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_c

    .line 280
    :cond_28
    iget-object v7, v9, Lqz;->a:Landroid/view/View;

    goto :goto_11

    .line 275
    :cond_29
    :goto_c
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 276
    invoke-virtual {v1}, Lnu;->a()I

    move-result v1

    if-lez v1, :cond_31

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 277
    iget v2, v1, Lqx;->l:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2a

    goto :goto_d

    :cond_2a
    move v3, v2

    .line 278
    :goto_d
    invoke-virtual {v1}, Lqx;->a()I

    move-result v1

    move v2, v3

    :goto_e
    if-ge v2, v1, :cond_2d

    .line 279
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->d(I)Lqz;

    move-result-object v6

    if-nez v6, :cond_2b

    goto :goto_f

    .line 283
    :cond_2b
    iget-object v8, v6, Lqz;->a:Landroid/view/View;

    .line 280
    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_2c

    iget-object v7, v6, Lqz;->a:Landroid/view/View;

    goto :goto_11

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 281
    :cond_2d
    :goto_f
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_30

    .line 282
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->d(I)Lqz;

    move-result-object v2

    if-nez v2, :cond_2e

    goto :goto_11

    .line 288
    :cond_2e
    iget-object v3, v2, Lqz;->a:Landroid/view/View;

    .line 283
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v7, v2, Lqz;->a:Landroid/view/View;

    goto :goto_11

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_30
    goto :goto_11

    .line 280
    :cond_31
    nop

    .line 282
    :goto_11
    if-eqz v7, :cond_33

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 284
    iget v1, v1, Lqx;->n:I

    int-to-long v2, v1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_32

    .line 285
    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 286
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_32

    move-object v7, v1

    .line 287
    :cond_32
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 288
    :cond_33
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    return-void
.end method

.method final q()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 538
    invoke-virtual {v0}, Lnu;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 539
    invoke-virtual {v4, v2}, Lnu;->c(I)Landroid/view/View;

    move-result-object v4

    .line 540
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lql;

    iput-boolean v3, v4, Lql;->e:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v2, v0, Lqq;->c:Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v4, v0, Lqq;->c:Ljava/util/ArrayList;

    .line 542
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqz;

    .line 543
    iget-object v4, v4, Lqz;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lql;

    if-eqz v4, :cond_1

    iput-boolean v3, v4, Lql;->e:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method final r()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 103
    invoke-virtual {v0}, Lnu;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 104
    invoke-virtual {v3, v2}, Lnu;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lqz;->w()Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    invoke-virtual {v3}, Lqz;->v()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v2, v0, Lqq;->c:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, v0, Lqq;->c:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqz;

    .line 109
    invoke-virtual {v4}, Lqz;->v()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lqq;->a:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    iget-object v4, v0, Lqq;->a:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqz;

    invoke-virtual {v4}, Lqz;->v()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lqq;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    iget-object v3, v0, Lqq;->b:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqz;

    invoke-virtual {v3}, Lqz;->v()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 791
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lqz;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {v0}, Lqz;->i()V

    goto :goto_0

    .line 797
    :cond_0
    invoke-virtual {v0}, Lqz;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 795
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    .line 796
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 793
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 794
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    .line 795
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object v0, v0, Lqk;->t:Lqw;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lqw;->e:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 806
    :cond_1
    if-eqz p2, :cond_2

    .line 805
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;)V

    .line 806
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 820
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lqk;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 821
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 822
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqn;

    .line 823
    invoke-interface {v2}, Lqn;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 824
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-nez v0, :cond_0

    .line 825
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    return-void
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 532
    invoke-virtual {v0}, Lmi;->d()Z

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

.method public final scrollBy(II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-nez v0, :cond_0

    .line 837
    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lqk;->i()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 838
    invoke-virtual {v1}, Lqk;->j()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 839
    :cond_2
    return-void

    .line 838
    :cond_3
    :goto_0
    const/4 v3, 0x0

    if-eq v2, v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    if-eq v2, v1, :cond_5

    const/4 p2, 0x0

    :cond_5
    const/4 v0, 0x0

    .line 839
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;I)Z

    return-void
.end method

.method public final scrollTo(II)V
    .locals 0

    .line 893
    const-string p1, "RecyclerView"

    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 898
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 899
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    return-void

    .line 900
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    if-eq p1, v0, :cond_0

    .line 916
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->j()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    .line 917
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    if-eqz p1, :cond_1

    .line 918
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 940
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-nez p1, :cond_0

    .line 942
    const/4 p1, 0x0

    .line 941
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    .line 940
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 942
    const-string v0, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setNestedScrollingEnabled(Z)V
    .locals 1

    .line 943
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfq;->a(Z)V

    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 1

    .line 952
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfq;->b(I)Z

    move-result p1

    return p1
.end method

.method public final stopNestedScroll()V
    .locals 1

    .line 955
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()Lfq;

    move-result-object v0

    invoke-virtual {v0}, Lfq;->b()V

    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eq p1, v0, :cond_2

    .line 961
    const-string v0, "Do not suppressLayout in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    return-void

    .line 963
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 964
    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 965
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    .line 966
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    :cond_2
    return-void
.end method
