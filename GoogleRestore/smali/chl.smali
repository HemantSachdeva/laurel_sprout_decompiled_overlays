.class public Lchl;
.super Landroid/graphics/drawable/Drawable;
.source "PG"

# interfaces
.implements Lcia;


# static fields
.field private static final f:Ljava/lang/String;

.field private static final g:Landroid/graphics/Paint;


# instance fields
.field public a:Lchk;

.field public final b:[Lchy;

.field public final c:[Lchy;

.field public final d:Ljava/util/BitSet;

.field public e:Z

.field private final h:Landroid/graphics/Matrix;

.field private final i:Landroid/graphics/Path;

.field private final j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/RectF;

.field private final l:Landroid/graphics/RectF;

.field private final m:Landroid/graphics/Region;

.field private final n:Landroid/graphics/Region;

.field private o:Lchq;

.field private final p:Landroid/graphics/Paint;

.field private final q:Landroid/graphics/Paint;

.field private final r:Lchd;

.field private final s:Lchr;

.field private t:Landroid/graphics/PorterDuffColorFilter;

.field private u:Landroid/graphics/PorterDuffColorFilter;

.field private final v:Landroid/graphics/RectF;

.field private w:Z

.field private final x:Lchj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lchl;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lchl;->f:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    .line 2
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lchl;->g:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lchq;

    invoke-direct {v0}, Lchq;-><init>()V

    invoke-direct {p0, v0}, Lchl;-><init>(Lchq;)V

    return-void
.end method

.method public constructor <init>(Lchk;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lchy;

    iput-object v1, p0, Lchl;->b:[Lchy;

    new-array v0, v0, [Lchy;

    iput-object v0, p0, Lchl;->c:[Lchy;

    new-instance v0, Ljava/util/BitSet;

    .line 5
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lchl;->d:Ljava/util/BitSet;

    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lchl;->h:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lchl;->i:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    .line 8
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lchl;->j:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    .line 9
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lchl;->k:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    .line 10
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lchl;->l:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Region;

    .line 11
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lchl;->m:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lchl;->n:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Paint;

    .line 13
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lchl;->p:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    .line 14
    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lchl;->q:Landroid/graphics/Paint;

    .line 15
    new-instance v3, Lchd;

    invoke-direct {v3}, Lchd;-><init>()V

    iput-object v3, p0, Lchl;->r:Lchd;

    new-instance v3, Lchr;

    .line 16
    invoke-direct {v3}, Lchr;-><init>()V

    iput-object v3, p0, Lchl;->s:Lchr;

    new-instance v3, Landroid/graphics/RectF;

    .line 17
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lchl;->v:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lchl;->w:Z

    iput-object p1, p0, Lchl;->a:Lchk;

    .line 18
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Lchl;->g:Landroid/graphics/Paint;

    .line 20
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 21
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 22
    invoke-direct {p0}, Lchl;->i()Z

    .line 23
    invoke-virtual {p0}, Lchl;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lchl;->a([I)Z

    new-instance p1, Lchj;

    .line 24
    invoke-direct {p1, p0}, Lchj;-><init>(Lchl;)V

    iput-object p1, p0, Lchl;->x:Lchj;

    return-void
.end method

.method public constructor <init>(Lchq;)V
    .locals 1

    new-instance v0, Lchk;

    .line 25
    invoke-direct {v0, p1}, Lchk;-><init>(Lchq;)V

    invoke-direct {p0, v0}, Lchl;-><init>(Lchk;)V

    return-void
.end method

.method private final a(I)I
    .locals 6

    .line 39
    invoke-virtual {p0}, Lchl;->c()F

    move-result v0

    iget-object v1, p0, Lchl;->a:Lchk;

    .line 40
    iget v2, v1, Lchk;->n:F

    add-float/2addr v0, v2

    .line 41
    iget-object v1, v1, Lchk;->b:Lcfy;

    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lcfy;->a:Z

    if-eqz v2, :cond_2

    .line 42
    const/16 v2, 0xff

    invoke-static {p1, v2}, Ldy;->b(II)I

    move-result v3

    iget v4, v1, Lcfy;->c:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcfy;->d:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-lez v5, :cond_1

    cmpg-float v5, v0, v4

    if-gtz v5, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    div-float/2addr v0, v3

    float-to-double v3, v0

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v3

    double-to-float v0, v3

    const/high16 v3, 0x40900000    # 4.5f

    mul-float v0, v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 44
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0

    :cond_1
    nop

    .line 45
    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 46
    invoke-static {p1, v2}, Ldy;->b(II)I

    move-result p1

    iget v1, v1, Lcfy;->b:I

    .line 47
    invoke-static {p1, v1, v4}, Lcrj;->a(IIF)I

    move-result p1

    .line 48
    invoke-static {p1, v0}, Ldy;->b(II)I

    move-result p1

    goto :goto_1

    .line 44
    :cond_2
    nop

    .line 48
    :goto_1
    return p1

    .line 44
    :cond_3
    return p1
.end method

.method private static a(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int p0, p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p0}, Lchl;->getState()[I

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p4, :cond_1

    .line 37
    invoke-direct {p0, p1}, Lchl;->a(I)I

    move-result p1

    goto :goto_0

    .line 38
    :cond_1
    nop

    .line 37
    :goto_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 38
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 0
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 33
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 34
    invoke-direct {p0, p1}, Lchl;->a(I)I

    move-result p2

    if-eq p2, p1, :cond_3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 35
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_3
    nop

    :goto_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;F)Lchl;
    .locals 2

    const-class v0, Lchl;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 50
    const v1, 0x7f0400c8

    invoke-static {p0, v1, v0}, Lcsb;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    new-instance v1, Lchl;

    .line 51
    invoke-direct {v1}, Lchl;-><init>()V

    .line 52
    invoke-virtual {v1, p0}, Lchl;->a(Landroid/content/Context;)V

    .line 53
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lchl;->a(Landroid/content/res/ColorStateList;)V

    .line 54
    invoke-virtual {v1, p1}, Lchl;->c(F)V

    return-object v1
.end method

.method private final a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lchl;->d:Ljava/util/BitSet;

    .line 105
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lchl;->f:Ljava/lang/String;

    .line 106
    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lchl;->a:Lchk;

    .line 107
    iget v0, v0, Lchk;->s:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lchl;->i:Landroid/graphics/Path;

    iget-object v2, p0, Lchl;->r:Lchd;

    iget-object v2, v2, Lchd;->a:Landroid/graphics/Paint;

    .line 108
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 115
    :cond_1
    nop

    .line 108
    :goto_0
    const/4 v0, 0x4

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lchl;->b:[Lchy;

    .line 109
    aget-object v0, v0, v1

    iget-object v2, p0, Lchl;->r:Lchd;

    iget-object v3, p0, Lchl;->a:Lchk;

    iget v3, v3, Lchk;->r:I

    invoke-virtual {v0, v2, v3, p1}, Lchy;->a(Lchd;ILandroid/graphics/Canvas;)V

    iget-object v0, p0, Lchl;->c:[Lchy;

    .line 110
    aget-object v0, v0, v1

    iget-object v2, p0, Lchl;->r:Lchd;

    iget-object v3, p0, Lchl;->a:Lchk;

    iget v3, v3, Lchk;->r:I

    invoke-virtual {v0, v2, v3, p1}, Lchy;->a(Lchd;ILandroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lchl;->w:Z

    if-eqz v0, :cond_3

    .line 111
    invoke-virtual {p0}, Lchl;->e()I

    move-result v0

    .line 112
    invoke-virtual {p0}, Lchl;->f()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    .line 113
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lchl;->i:Landroid/graphics/Path;

    sget-object v3, Lchl;->g:Landroid/graphics/Paint;

    .line 114
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v1

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method private final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lchq;Landroid/graphics/RectF;)V
    .locals 1

    .line 116
    invoke-virtual {p4, p5}, Lchq;->a(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p4, Lchq;->b:Lchg;

    .line 117
    invoke-interface {p3, p5}, Lchg;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p4, p0, Lchl;->a:Lchk;

    iget p4, p4, Lchk;->k:F

    mul-float p3, p3, p4

    .line 118
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 119
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final a(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, Lchl;->s:Lchr;

    iget-object v1, p0, Lchl;->a:Lchk;

    .line 26
    iget-object v2, v1, Lchk;->a:Lchq;

    iget v3, v1, Lchk;->k:F

    iget-object v4, p0, Lchl;->x:Lchj;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lchr;->a(Lchq;FLandroid/graphics/RectF;Lchj;Landroid/graphics/Path;)V

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 27
    iget v0, v0, Lchk;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lchl;->h:Landroid/graphics/Matrix;

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lchl;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lchl;->a:Lchk;

    .line 29
    iget v1, v1, Lchk;->j:F

    .line 30
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    .line 29
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, Lchl;->h:Landroid/graphics/Matrix;

    .line 31
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p1, p0, Lchl;->v:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method private final a([I)Z
    .locals 4

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 189
    iget-object v0, v0, Lchk;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lchl;->p:Landroid/graphics/Paint;

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v3, p0, Lchl;->a:Lchk;

    .line 191
    iget-object v3, v3, Lchk;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lchl;->p:Landroid/graphics/Paint;

    .line 192
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    goto :goto_0

    .line 197
    :cond_0
    nop

    .line 192
    :goto_0
    iget-object v0, p0, Lchl;->a:Lchk;

    .line 193
    iget-object v0, v0, Lchk;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lchl;->q:Landroid/graphics/Paint;

    .line 194
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v3, p0, Lchl;->a:Lchk;

    .line 195
    iget-object v3, v3, Lchk;->e:Landroid/content/res/ColorStateList;

    .line 196
    invoke-virtual {v3, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lchl;->q:Landroid/graphics/Paint;

    .line 197
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return v1

    :cond_1
    return v2
.end method

.method private final h()Z
    .locals 2

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 150
    iget-object v0, v0, Lchk;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lchl;->a:Lchk;

    iget-object v0, v0, Lchk;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lchl;->q:Landroid/graphics/Paint;

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final i()Z
    .locals 7

    iget-object v0, p0, Lchl;->t:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lchl;->u:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lchl;->a:Lchk;

    .line 198
    iget-object v3, v2, Lchk;->g:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lchk;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lchl;->p:Landroid/graphics/Paint;

    .line 199
    const/4 v5, 0x1

    invoke-direct {p0, v3, v2, v4, v5}, Lchl;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lchl;->t:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lchl;->a:Lchk;

    .line 200
    iget-object v3, v2, Lchk;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lchk;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v3, p0, Lchl;->q:Landroid/graphics/Paint;

    .line 201
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v2, v3, v6}, Lchl;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lchl;->u:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lchl;->a:Lchk;

    .line 202
    iget-boolean v2, v2, Lchk;->u:Z

    iget-object v2, p0, Lchl;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 203
    invoke-static {v0, v2}, Ley;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lchl;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 204
    invoke-static {v1, v0}, Ley;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v6

    :cond_1
    :goto_0
    return v5
.end method

.method private final j()F
    .locals 2

    .line 141
    invoke-direct {p0}, Lchl;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lchl;->q:Landroid/graphics/Paint;

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final k()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lchl;->l:Landroid/graphics/RectF;

    .line 121
    invoke-virtual {p0}, Lchl;->b()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 122
    invoke-direct {p0}, Lchl;->j()F

    move-result v0

    iget-object v1, p0, Lchl;->l:Landroid/graphics/RectF;

    .line 123
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lchl;->l:Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method public final a()Lchq;
    .locals 1

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 140
    iget-object v0, v0, Lchk;->a:Lchq;

    return-object v0
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lchl;->a:Lchk;

    iput p1, v0, Lchk;->l:F

    .line 182
    invoke-virtual {p0}, Lchl;->invalidateSelf()V

    return-void
.end method

.method public final a(FI)V
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lchl;->a(F)V

    .line 177
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lchl;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final a(FLandroid/content/res/ColorStateList;)V
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lchl;->a(F)V

    .line 179
    invoke-virtual {p0, p2}, Lchl;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lchl;->a:Lchk;

    new-instance v1, Lcfy;

    .line 152
    invoke-direct {v1, p1}, Lcfy;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lchk;->b:Lcfy;

    .line 153
    invoke-virtual {p0}, Lchl;->d()V

    return-void
.end method

.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 171
    iget-object v1, v0, Lchk;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lchk;->d:Landroid/content/res/ColorStateList;

    .line 172
    invoke-virtual {p0}, Lchl;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lchl;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final a(Lchq;)V
    .locals 1

    iget-object v0, p0, Lchl;->a:Lchk;

    iput-object p1, v0, Lchk;->a:Lchq;

    .line 175
    invoke-virtual {p0}, Lchl;->invalidateSelf()V

    return-void
.end method

.method protected final b()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lchl;->k:Landroid/graphics/RectF;

    .line 120
    invoke-virtual {p0}, Lchl;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lchl;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final b(F)V
    .locals 2

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 173
    iget v1, v0, Lchk;->k:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lchk;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lchl;->e:Z

    .line 174
    invoke-virtual {p0}, Lchl;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 180
    iget-object v1, v0, Lchk;->e:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lchk;->e:Landroid/content/res/ColorStateList;

    .line 181
    invoke-virtual {p0}, Lchl;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lchl;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final c()F
    .locals 2

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 148
    iget v1, v0, Lchk;->o:F

    .line 149
    iget v0, v0, Lchk;->p:F

    const/4 v0, 0x0

    add-float/2addr v1, v0

    return v1
.end method

.method public final c(F)V
    .locals 2

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 169
    iget v1, v0, Lchk;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lchk;->o:F

    .line 170
    invoke-virtual {p0}, Lchl;->d()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 205
    invoke-virtual {p0}, Lchl;->c()F

    move-result v0

    iget-object v1, p0, Lchl;->a:Lchk;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v0

    float-to-double v2, v2

    .line 206
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lchk;->r:I

    iget-object v1, p0, Lchl;->a:Lchk;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v0, v0, v2

    float-to-double v2, v0

    .line 207
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lchk;->s:I

    .line 208
    invoke-direct {p0}, Lchl;->i()Z

    .line 209
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lchl;->p:Landroid/graphics/Paint;

    iget-object v1, p0, Lchl;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lchl;->p:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lchl;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lchl;->a:Lchk;

    .line 57
    iget v2, v2, Lchk;->m:I

    invoke-static {v0, v2}, Lchl;->a(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lchl;->q:Landroid/graphics/Paint;

    iget-object v2, p0, Lchl;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 58
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lchl;->q:Landroid/graphics/Paint;

    iget-object v2, p0, Lchl;->a:Lchk;

    .line 59
    iget v2, v2, Lchk;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lchl;->q:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lchl;->q:Landroid/graphics/Paint;

    iget-object v3, p0, Lchl;->a:Lchk;

    .line 61
    iget v3, v3, Lchk;->m:I

    invoke-static {v1, v3}, Lchl;->a(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v2, p0, Lchl;->e:Z

    if-eqz v2, :cond_0

    .line 62
    invoke-direct {p0}, Lchl;->j()F

    move-result v2

    neg-float v2, v2

    .line 63
    invoke-virtual {p0}, Lchl;->a()Lchq;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lchq;->b()Lchp;

    move-result-object v4

    iget-object v5, v3, Lchq;->a:Lchg;

    .line 65
    invoke-static {v5, v2}, Lcvs;->a(Lchg;F)Lchg;

    move-result-object v5

    iput-object v5, v4, Lchp;->a:Lchg;

    iget-object v5, v3, Lchq;->b:Lchg;

    .line 66
    invoke-static {v5, v2}, Lcvs;->a(Lchg;F)Lchg;

    move-result-object v5

    iput-object v5, v4, Lchp;->b:Lchg;

    iget-object v5, v3, Lchq;->d:Lchg;

    .line 67
    invoke-static {v5, v2}, Lcvs;->a(Lchg;F)Lchg;

    move-result-object v5

    iput-object v5, v4, Lchp;->d:Lchg;

    iget-object v3, v3, Lchq;->c:Lchg;

    .line 68
    invoke-static {v3, v2}, Lcvs;->a(Lchg;F)Lchg;

    move-result-object v2

    iput-object v2, v4, Lchp;->c:Lchg;

    .line 69
    invoke-virtual {v4}, Lchp;->a()Lchq;

    move-result-object v6

    iput-object v6, p0, Lchl;->o:Lchq;

    iget-object v5, p0, Lchl;->s:Lchr;

    iget-object v2, p0, Lchl;->a:Lchk;

    .line 70
    iget v7, v2, Lchk;->k:F

    .line 71
    invoke-direct {p0}, Lchl;->k()Landroid/graphics/RectF;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lchl;->j:Landroid/graphics/Path;

    .line 72
    invoke-virtual/range {v5 .. v10}, Lchr;->a(Lchq;FLandroid/graphics/RectF;Lchj;Landroid/graphics/Path;)V

    .line 73
    invoke-virtual {p0}, Lchl;->b()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lchl;->i:Landroid/graphics/Path;

    invoke-direct {p0, v2, v3}, Lchl;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lchl;->e:Z

    :cond_0
    iget-object v2, p0, Lchl;->a:Lchk;

    .line 74
    iget v3, v2, Lchk;->q:I

    iget v2, v2, Lchk;->r:I

    if-lez v2, :cond_3

    .line 75
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    invoke-virtual {p0}, Lchl;->g()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lchl;->i:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isConvex()Z

    move-result v2

    if-nez v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_3

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    invoke-virtual {p0}, Lchl;->e()I

    move-result v2

    .line 79
    invoke-virtual {p0}, Lchl;->f()I

    move-result v3

    .line 80
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-float v2, v2

    int-to-float v3, v3

    .line 81
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v2, p0, Lchl;->w:Z

    if-nez v2, :cond_1

    .line 82
    invoke-direct {p0, p1}, Lchl;->a(Landroid/graphics/Canvas;)V

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 104
    :cond_1
    iget-object v2, p0, Lchl;->v:Landroid/graphics/RectF;

    .line 84
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Lchl;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lchl;->v:Landroid/graphics/RectF;

    .line 85
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0}, Lchl;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    if-ltz v2, :cond_2

    if-ltz v3, :cond_2

    .line 86
    iget-object v4, p0, Lchl;->v:Landroid/graphics/RectF;

    .line 87
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lchl;->a:Lchk;

    iget v5, v5, Lchk;->r:I

    iget-object v6, p0, Lchl;->v:Landroid/graphics/RectF;

    .line 88
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-object v7, p0, Lchl;->a:Lchk;

    iget v7, v7, Lchk;->r:I

    float-to-int v4, v4

    add-int/2addr v5, v5

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    float-to-int v5, v6

    add-int/2addr v7, v7

    add-int/2addr v5, v7

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 89
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    .line 90
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    invoke-virtual {p0}, Lchl;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lchl;->a:Lchk;

    iget v7, v7, Lchk;->r:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v2

    int-to-float v2, v6

    .line 92
    invoke-virtual {p0}, Lchl;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lchl;->a:Lchk;

    iget v7, v7, Lchk;->r:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v3

    int-to-float v3, v6

    neg-float v6, v2

    neg-float v7, v3

    .line 93
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    invoke-direct {p0, v5}, Lchl;->a(Landroid/graphics/Canvas;)V

    const/4 v5, 0x0

    .line 95
    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 85
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 86
    const-string v0, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_3
    :goto_0
    iget-object v2, p0, Lchl;->a:Lchk;

    .line 98
    iget-object v2, v2, Lchk;->v:Landroid/graphics/Paint$Style;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lchl;->a:Lchk;

    iget-object v2, v2, Lchk;->v:Landroid/graphics/Paint$Style;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v2, v3, :cond_5

    :cond_4
    iget-object v6, p0, Lchl;->p:Landroid/graphics/Paint;

    iget-object v7, p0, Lchl;->i:Landroid/graphics/Path;

    iget-object v2, p0, Lchl;->a:Lchk;

    .line 99
    iget-object v8, v2, Lchk;->a:Lchq;

    invoke-virtual {p0}, Lchl;->b()Landroid/graphics/RectF;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lchl;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lchq;Landroid/graphics/RectF;)V

    .line 100
    :cond_5
    invoke-direct {p0}, Lchl;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v5, p0, Lchl;->q:Landroid/graphics/Paint;

    iget-object v6, p0, Lchl;->j:Landroid/graphics/Path;

    iget-object v7, p0, Lchl;->o:Lchq;

    .line 101
    invoke-direct {p0}, Lchl;->k()Landroid/graphics/RectF;

    move-result-object v8

    .line 102
    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lchl;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lchq;Landroid/graphics/RectF;)V

    :cond_6
    iget-object p1, p0, Lchl;->p:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lchl;->q:Landroid/graphics/Paint;

    .line 104
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final e()I
    .locals 4

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 136
    iget v1, v0, Lchk;->s:I

    iget v0, v0, Lchk;->t:I

    int-to-double v0, v1

    .line 137
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public final f()I
    .locals 4

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 138
    iget v1, v0, Lchk;->s:I

    iget v0, v0, Lchk;->t:I

    int-to-double v0, v1

    .line 139
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 155
    iget-object v0, v0, Lchk;->a:Lchq;

    invoke-virtual {p0}, Lchl;->b()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchq;->a(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lchl;->a:Lchk;

    return-object v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 3

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 124
    iget v0, v0, Lchk;->q:I

    .line 125
    invoke-virtual {p0}, Lchl;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 126
    iget-object v0, v0, Lchk;->a:Lchq;

    iget-object v0, v0, Lchq;->a:Lchg;

    .line 127
    invoke-virtual {p0}, Lchl;->b()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lchg;->a(Landroid/graphics/RectF;)F

    move-result v0

    iget-object v1, p0, Lchl;->a:Lchk;

    .line 128
    iget v1, v1, Lchk;->k:F

    .line 129
    invoke-virtual {p0}, Lchl;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    mul-float v0, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lchl;->b()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lchl;->i:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lchl;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lchl;->i:Landroid/graphics/Path;

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    return-void

    .line 131
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lchl;->i:Landroid/graphics/Path;

    .line 132
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 133
    iget-object v0, v0, Lchk;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    .line 135
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 143
    invoke-virtual {p0}, Lchl;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lchl;->m:Landroid/graphics/Region;

    .line 144
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 145
    invoke-virtual {p0}, Lchl;->b()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lchl;->i:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lchl;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lchl;->n:Landroid/graphics/Region;

    iget-object v1, p0, Lchl;->i:Landroid/graphics/Path;

    iget-object v2, p0, Lchl;->m:Landroid/graphics/Region;

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, Lchl;->m:Landroid/graphics/Region;

    iget-object v1, p0, Lchl;->n:Landroid/graphics/Region;

    .line 147
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lchl;->m:Landroid/graphics/Region;

    return-object v0
.end method

.method public final invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lchl;->e:Z

    .line 154
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final isStateful()Z
    .locals 4

    .line 156
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lchl;->a:Lchk;

    iget-object v0, v0, Lchk;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lchl;->a:Lchk;

    iget-object v3, v0, Lchk;->f:Landroid/content/res/ColorStateList;

    .line 158
    iget-object v0, v0, Lchk;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lchl;->a:Lchk;

    iget-object v0, v0, Lchk;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lchk;

    iget-object v1, p0, Lchl;->a:Lchk;

    .line 161
    invoke-direct {v0, v1}, Lchk;-><init>(Lchk;)V

    iput-object v0, p0, Lchl;->a:Lchk;

    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lchl;->e:Z

    .line 162
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 2

    .line 163
    invoke-direct {p0, p1}, Lchl;->a([I)Z

    move-result p1

    .line 164
    invoke-direct {p0}, Lchl;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    nop

    .line 164
    :goto_0
    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {p0}, Lchl;->invalidateSelf()V

    :cond_2
    return v1
.end method

.method public final setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 166
    iget v1, v0, Lchk;->m:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lchk;->m:I

    .line 167
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lchl;->a:Lchk;

    iput-object p1, v0, Lchk;->c:Landroid/graphics/ColorFilter;

    .line 168
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    .line 183
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lchl;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lchl;->a:Lchk;

    iput-object p1, v0, Lchk;->g:Landroid/content/res/ColorStateList;

    .line 184
    invoke-direct {p0}, Lchl;->i()Z

    .line 185
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lchl;->a:Lchk;

    .line 186
    iget-object v1, v0, Lchk;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lchk;->h:Landroid/graphics/PorterDuff$Mode;

    .line 187
    invoke-direct {p0}, Lchl;->i()Z

    .line 188
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
