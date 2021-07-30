.class final Lzr;
.super Lzt;
.source "PG"


# instance fields
.field public a:[I

.field b:Ldn;

.field c:F

.field d:Ldn;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:Landroid/graphics/Paint$Cap;

.field k:Landroid/graphics/Paint$Join;

.field l:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lzt;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lzr;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lzr;->e:F

    iput v1, p0, Lzr;->f:F

    iput v0, p0, Lzr;->g:F

    iput v1, p0, Lzr;->h:F

    iput v0, p0, Lzr;->i:F

    .line 2
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lzr;->j:Landroid/graphics/Paint$Cap;

    .line 3
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lzr;->k:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lzr;->l:F

    return-void
.end method

.method public constructor <init>(Lzr;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lzt;-><init>(Lzt;)V

    const/4 v0, 0x0

    iput v0, p0, Lzr;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lzr;->e:F

    iput v1, p0, Lzr;->f:F

    iput v0, p0, Lzr;->g:F

    iput v1, p0, Lzr;->h:F

    iput v0, p0, Lzr;->i:F

    .line 5
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lzr;->j:Landroid/graphics/Paint$Cap;

    .line 6
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lzr;->k:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lzr;->l:F

    .line 7
    iget-object v0, p1, Lzr;->a:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lzr;->a:[I

    .line 8
    iget-object v0, p1, Lzr;->b:Ldn;

    iput-object v0, p0, Lzr;->b:Ldn;

    .line 9
    iget v0, p1, Lzr;->c:F

    iput v0, p0, Lzr;->c:F

    .line 10
    iget v0, p1, Lzr;->e:F

    iput v0, p0, Lzr;->e:F

    .line 11
    iget-object v0, p1, Lzr;->d:Ldn;

    iput-object v0, p0, Lzr;->d:Ldn;

    .line 12
    iget v0, p1, Lzr;->o:I

    iput v0, p0, Lzr;->o:I

    .line 13
    iget v0, p1, Lzr;->f:F

    iput v0, p0, Lzr;->f:F

    .line 14
    iget v0, p1, Lzr;->g:F

    iput v0, p0, Lzr;->g:F

    .line 15
    iget v0, p1, Lzr;->h:F

    iput v0, p0, Lzr;->h:F

    .line 16
    iget v0, p1, Lzr;->i:F

    iput v0, p0, Lzr;->i:F

    .line 17
    iget-object v0, p1, Lzr;->j:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lzr;->j:Landroid/graphics/Paint$Cap;

    .line 18
    iget-object v0, p1, Lzr;->k:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lzr;->k:Landroid/graphics/Paint$Join;

    .line 19
    iget p1, p1, Lzr;->l:F

    iput p1, p0, Lzr;->l:F

    return-void
.end method


# virtual methods
.method public final a([I)Z
    .locals 2

    iget-object v0, p0, Lzr;->d:Ldn;

    .line 21
    invoke-virtual {v0, p1}, Ldn;->a([I)Z

    move-result v0

    iget-object v1, p0, Lzr;->b:Ldn;

    .line 22
    invoke-virtual {v1, p1}, Ldn;->a([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lzr;->d:Ldn;

    .line 20
    invoke-virtual {v0}, Ldn;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzr;->b:Ldn;

    invoke-virtual {v0}, Ldn;->b()Z

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

.method getFillAlpha()F
    .locals 1

    iget v0, p0, Lzr;->f:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    iget-object v0, p0, Lzr;->d:Ldn;

    iget v0, v0, Ldn;->b:I

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    iget v0, p0, Lzr;->e:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    iget-object v0, p0, Lzr;->b:Ldn;

    iget v0, v0, Ldn;->b:I

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    iget v0, p0, Lzr;->c:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    iget v0, p0, Lzr;->h:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    iget v0, p0, Lzr;->i:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    iget v0, p0, Lzr;->g:F

    return v0
.end method

.method setFillAlpha(F)V
    .locals 0

    iput p1, p0, Lzr;->f:F

    return-void
.end method

.method setFillColor(I)V
    .locals 1

    iget-object v0, p0, Lzr;->d:Ldn;

    iput p1, v0, Ldn;->b:I

    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Lzr;->e:F

    return-void
.end method

.method setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lzr;->b:Ldn;

    iput p1, v0, Ldn;->b:I

    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lzr;->c:F

    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0

    iput p1, p0, Lzr;->h:F

    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0

    iput p1, p0, Lzr;->i:F

    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0

    iput p1, p0, Lzr;->g:F

    return-void
.end method
