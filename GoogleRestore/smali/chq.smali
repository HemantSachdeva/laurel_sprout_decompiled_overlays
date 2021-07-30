.class public final Lchq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Lchg;

.field final b:Lchg;

.field final c:Lchg;

.field final d:Lchg;

.field final e:Lchi;

.field final f:Lchi;

.field final g:Lchi;

.field final h:Lchi;

.field final i:Ldab;

.field final j:Ldab;

.field final k:Ldab;

.field final l:Ldab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lchn;

    .line 1
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lchn;-><init>(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldab;->c()Ldab;

    move-result-object v0

    iput-object v0, p0, Lchq;->i:Ldab;

    invoke-static {}, Ldab;->c()Ldab;

    move-result-object v0

    iput-object v0, p0, Lchq;->j:Ldab;

    invoke-static {}, Ldab;->c()Ldab;

    move-result-object v0

    iput-object v0, p0, Lchq;->k:Ldab;

    invoke-static {}, Ldab;->c()Ldab;

    move-result-object v0

    iput-object v0, p0, Lchq;->l:Ldab;

    new-instance v0, Lche;

    .line 2
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lche;-><init>(F)V

    iput-object v0, p0, Lchq;->a:Lchg;

    new-instance v0, Lche;

    .line 3
    invoke-direct {v0, v1}, Lche;-><init>(F)V

    iput-object v0, p0, Lchq;->b:Lchg;

    new-instance v0, Lche;

    .line 4
    invoke-direct {v0, v1}, Lche;-><init>(F)V

    iput-object v0, p0, Lchq;->c:Lchg;

    new-instance v0, Lche;

    .line 5
    invoke-direct {v0, v1}, Lche;-><init>(F)V

    iput-object v0, p0, Lchq;->d:Lchg;

    invoke-static {}, Ldab;->b()Lchi;

    move-result-object v0

    iput-object v0, p0, Lchq;->e:Lchi;

    invoke-static {}, Ldab;->b()Lchi;

    move-result-object v0

    iput-object v0, p0, Lchq;->f:Lchi;

    invoke-static {}, Ldab;->b()Lchi;

    move-result-object v0

    iput-object v0, p0, Lchq;->g:Lchi;

    invoke-static {}, Ldab;->b()Lchi;

    move-result-object v0

    iput-object v0, p0, Lchq;->h:Lchi;

    return-void
.end method

.method public constructor <init>(Lchp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lchp;->i:Ldab;

    iput-object v0, p0, Lchq;->i:Ldab;

    iget-object v0, p1, Lchp;->j:Ldab;

    iput-object v0, p0, Lchq;->j:Ldab;

    iget-object v0, p1, Lchp;->k:Ldab;

    iput-object v0, p0, Lchq;->k:Ldab;

    iget-object v0, p1, Lchp;->l:Ldab;

    iput-object v0, p0, Lchq;->l:Ldab;

    iget-object v0, p1, Lchp;->a:Lchg;

    iput-object v0, p0, Lchq;->a:Lchg;

    iget-object v0, p1, Lchp;->b:Lchg;

    iput-object v0, p0, Lchq;->b:Lchg;

    iget-object v0, p1, Lchp;->c:Lchg;

    iput-object v0, p0, Lchq;->c:Lchg;

    iget-object v0, p1, Lchp;->d:Lchg;

    iput-object v0, p0, Lchq;->d:Lchg;

    iget-object v0, p1, Lchp;->e:Lchi;

    iput-object v0, p0, Lchq;->e:Lchi;

    iget-object v0, p1, Lchp;->f:Lchi;

    iput-object v0, p0, Lchq;->f:Lchi;

    iget-object v0, p1, Lchp;->g:Lchi;

    iput-object v0, p0, Lchq;->g:Lchi;

    iget-object p1, p1, Lchp;->h:Lchi;

    iput-object p1, p0, Lchq;->h:Lchi;

    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;ILchg;)Lchg;
    .locals 2

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 36
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance p2, Lche;

    .line 37
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 38
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lche;-><init>(F)V

    return-object p2

    .line 39
    :cond_1
    iget p0, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    new-instance p0, Lchn;

    .line 40
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lchn;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method

.method public static a()Lchp;
    .locals 1

    new-instance v0, Lchp;

    .line 6
    invoke-direct {v0}, Lchp;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)Lchp;
    .locals 2

    new-instance v0, Lche;

    .line 7
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lche;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lchq;->a(Landroid/content/Context;IILchg;)Lchp;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;IILchg;)Lchp;
    .locals 6

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 8
    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    goto :goto_0

    .line 27
    :cond_0
    nop

    .line 9
    :goto_0
    sget-object p2, Lchm;->b:[I

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 11
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x3

    .line 12
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x4

    .line 13
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x2

    .line 14
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x1

    .line 15
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 v2, 0x5

    .line 16
    invoke-static {p0, v2, p3}, Lchq;->a(Landroid/content/res/TypedArray;ILchg;)Lchg;

    move-result-object p3

    const/16 v2, 0x8

    .line 17
    invoke-static {p0, v2, p3}, Lchq;->a(Landroid/content/res/TypedArray;ILchg;)Lchg;

    move-result-object v2

    const/16 v3, 0x9

    .line 18
    invoke-static {p0, v3, p3}, Lchq;->a(Landroid/content/res/TypedArray;ILchg;)Lchg;

    move-result-object v3

    const/4 v4, 0x7

    .line 19
    invoke-static {p0, v4, p3}, Lchq;->a(Landroid/content/res/TypedArray;ILchg;)Lchg;

    move-result-object v4

    const/4 v5, 0x6

    .line 20
    invoke-static {p0, v5, p3}, Lchq;->a(Landroid/content/res/TypedArray;ILchg;)Lchg;

    move-result-object p3

    new-instance v5, Lchp;

    .line 21
    invoke-direct {v5}, Lchp;-><init>()V

    invoke-static {p2}, Ldab;->a(I)Ldab;

    move-result-object p2

    iput-object p2, v5, Lchp;->i:Ldab;

    .line 22
    invoke-static {p2}, Lchp;->a(Ldab;)V

    iput-object v2, v5, Lchp;->a:Lchg;

    invoke-static {v0}, Ldab;->a(I)Ldab;

    move-result-object p2

    iput-object p2, v5, Lchp;->j:Ldab;

    .line 23
    invoke-static {p2}, Lchp;->a(Ldab;)V

    iput-object v3, v5, Lchp;->b:Lchg;

    invoke-static {v1}, Ldab;->a(I)Ldab;

    move-result-object p2

    iput-object p2, v5, Lchp;->k:Ldab;

    .line 24
    invoke-static {p2}, Lchp;->a(Ldab;)V

    iput-object v4, v5, Lchp;->c:Lchg;

    invoke-static {p1}, Ldab;->a(I)Ldab;

    move-result-object p1

    iput-object p1, v5, Lchp;->l:Ldab;

    .line 25
    invoke-static {p1}, Lchp;->a(Ldab;)V

    iput-object p3, v5, Lchp;->d:Lchg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    throw p1
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lchp;
    .locals 2

    new-instance v0, Lche;

    .line 28
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lche;-><init>(F)V

    .line 29
    sget-object v1, Lchm;->a:[I

    .line 30
    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 31
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 32
    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-static {p0, p3, p2, v0}, Lchq;->a(Landroid/content/Context;IILchg;)Lchp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;)Z
    .locals 5

    iget-object v0, p0, Lchq;->h:Lchi;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lchi;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lchq;->f:Lchi;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lchi;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lchq;->e:Lchi;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lchi;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lchq;->g:Lchi;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lchi;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    iget-object v3, p0, Lchq;->a:Lchg;

    .line 45
    invoke-interface {v3, p1}, Lchg;->a(Landroid/graphics/RectF;)F

    move-result v3

    iget-object v4, p0, Lchq;->b:Lchg;

    .line 46
    invoke-interface {v4, p1}, Lchg;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lchq;->d:Lchg;

    .line 47
    invoke-interface {v4, p1}, Lchg;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lchq;->c:Lchg;

    .line 48
    invoke-interface {v4, p1}, Lchg;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 48
    :goto_1
    iget-object v3, p0, Lchq;->j:Ldab;

    .line 49
    instance-of v3, v3, Lcho;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lchq;->i:Ldab;

    instance-of v3, v3, Lcho;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lchq;->k:Ldab;

    instance-of v3, v3, Lcho;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lchq;->l:Ldab;

    instance-of v3, v3, Lcho;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public final b()Lchp;
    .locals 1

    new-instance v0, Lchp;

    .line 50
    invoke-direct {v0, p0}, Lchp;-><init>(Lchq;)V

    return-object v0
.end method
