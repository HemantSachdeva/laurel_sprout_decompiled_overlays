.class public final Lxf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Landroid/graphics/RectF;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field final d:Landroid/graphics/Paint;

.field e:F

.field f:F

.field public g:F

.field h:F

.field i:[I

.field j:I

.field k:F

.field l:F

.field m:F

.field n:Z

.field o:Landroid/graphics/Path;

.field p:F

.field public q:F

.field public r:I

.field public s:I

.field t:I

.field u:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    .line 1
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lxf;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lxf;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    .line 3
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lxf;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    .line 4
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lxf;->d:Landroid/graphics/Paint;

    const/4 v3, 0x0

    iput v3, p0, Lxf;->e:F

    iput v3, p0, Lxf;->f:F

    iput v3, p0, Lxf;->g:F

    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, p0, Lxf;->h:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lxf;->p:F

    const/16 v3, 0xff

    iput v3, p0, Lxf;->t:I

    .line 5
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    iget v0, p0, Lxf;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lxf;->i:[I

    .line 11
    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method public final a(F)V
    .locals 1

    iput p1, p0, Lxf;->h:F

    iget-object v0, p0, Lxf;->b:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Lxf;->j:I

    iget-object v0, p0, Lxf;->i:[I

    .line 13
    aget p1, v0, p1

    iput p1, p0, Lxf;->u:I

    return-void
.end method

.method final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lxf;->n:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lxf;->n:Z

    :cond_0
    return-void
.end method

.method final b()I
    .locals 2

    iget-object v0, p0, Lxf;->i:[I

    iget v1, p0, Lxf;->j:I

    .line 12
    aget v0, v0, v1

    return v0
.end method

.method final c()V
    .locals 1

    iget v0, p0, Lxf;->e:F

    iput v0, p0, Lxf;->k:F

    iget v0, p0, Lxf;->f:F

    iput v0, p0, Lxf;->l:F

    iget v0, p0, Lxf;->g:F

    iput v0, p0, Lxf;->m:F

    return-void
.end method

.method final d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lxf;->k:F

    iput v0, p0, Lxf;->l:F

    iput v0, p0, Lxf;->m:F

    iput v0, p0, Lxf;->e:F

    iput v0, p0, Lxf;->f:F

    iput v0, p0, Lxf;->g:F

    return-void
.end method
