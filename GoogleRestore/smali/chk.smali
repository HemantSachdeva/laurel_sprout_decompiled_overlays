.class public final Lchk;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "PG"


# instance fields
.field public a:Lchq;

.field public b:Lcfy;

.field public c:Landroid/graphics/ColorFilter;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/content/res/ColorStateList;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:Landroid/graphics/Rect;

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:F

.field public o:F

.field public p:F

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(Lchk;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lchk;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lchk;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lchk;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lchk;->g:Landroid/content/res/ColorStateList;

    .line 2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lchk;->h:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lchk;->i:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lchk;->j:F

    iput v1, p0, Lchk;->k:F

    const/16 v1, 0xff

    iput v1, p0, Lchk;->m:I

    const/4 v1, 0x0

    iput v1, p0, Lchk;->n:F

    iput v1, p0, Lchk;->o:F

    iput v1, p0, Lchk;->p:F

    const/4 v2, 0x0

    iput v2, p0, Lchk;->q:I

    iput v2, p0, Lchk;->r:I

    iput v2, p0, Lchk;->s:I

    iput v2, p0, Lchk;->t:I

    iput-boolean v2, p0, Lchk;->u:Z

    .line 3
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v3, p0, Lchk;->v:Landroid/graphics/Paint$Style;

    .line 4
    iget-object v3, p1, Lchk;->a:Lchq;

    iput-object v3, p0, Lchk;->a:Lchq;

    .line 5
    iget-object v3, p1, Lchk;->b:Lcfy;

    iput-object v3, p0, Lchk;->b:Lcfy;

    .line 6
    iget v3, p1, Lchk;->l:F

    iput v3, p0, Lchk;->l:F

    .line 7
    iget-object v3, p1, Lchk;->c:Landroid/graphics/ColorFilter;

    iput-object v3, p0, Lchk;->c:Landroid/graphics/ColorFilter;

    .line 8
    iget-object v3, p1, Lchk;->d:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lchk;->d:Landroid/content/res/ColorStateList;

    .line 9
    iget-object v3, p1, Lchk;->e:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lchk;->e:Landroid/content/res/ColorStateList;

    .line 10
    iget-object v3, p1, Lchk;->h:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, p0, Lchk;->h:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iget-object v3, p1, Lchk;->g:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lchk;->g:Landroid/content/res/ColorStateList;

    .line 12
    iget v3, p1, Lchk;->m:I

    iput v3, p0, Lchk;->m:I

    .line 13
    iget v3, p1, Lchk;->j:F

    iput v3, p0, Lchk;->j:F

    .line 14
    iget v3, p1, Lchk;->s:I

    iput v3, p0, Lchk;->s:I

    .line 15
    iget v3, p1, Lchk;->q:I

    iput v2, p0, Lchk;->q:I

    .line 16
    iget-boolean v3, p1, Lchk;->u:Z

    iput-boolean v2, p0, Lchk;->u:Z

    .line 17
    iget v3, p1, Lchk;->k:F

    iput v3, p0, Lchk;->k:F

    .line 18
    iget v3, p1, Lchk;->n:F

    iput v3, p0, Lchk;->n:F

    .line 19
    iget v3, p1, Lchk;->o:F

    iput v3, p0, Lchk;->o:F

    .line 20
    iget v3, p1, Lchk;->p:F

    iput v1, p0, Lchk;->p:F

    .line 21
    iget v1, p1, Lchk;->r:I

    iput v1, p0, Lchk;->r:I

    .line 22
    iget v1, p1, Lchk;->t:I

    iput v2, p0, Lchk;->t:I

    .line 23
    iget-object v1, p1, Lchk;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lchk;->f:Landroid/content/res/ColorStateList;

    .line 24
    iget-object v0, p1, Lchk;->v:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lchk;->v:Landroid/graphics/Paint$Style;

    .line 25
    iget-object p1, p1, Lchk;->i:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    .line 26
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lchk;->i:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lchq;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lchk;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lchk;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lchk;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lchk;->g:Landroid/content/res/ColorStateList;

    .line 28
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lchk;->h:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lchk;->i:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lchk;->j:F

    iput v1, p0, Lchk;->k:F

    const/16 v1, 0xff

    iput v1, p0, Lchk;->m:I

    const/4 v1, 0x0

    iput v1, p0, Lchk;->n:F

    iput v1, p0, Lchk;->o:F

    iput v1, p0, Lchk;->p:F

    const/4 v1, 0x0

    iput v1, p0, Lchk;->q:I

    iput v1, p0, Lchk;->r:I

    iput v1, p0, Lchk;->s:I

    iput v1, p0, Lchk;->t:I

    iput-boolean v1, p0, Lchk;->u:Z

    .line 29
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v1, p0, Lchk;->v:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Lchk;->a:Lchq;

    iput-object v0, p0, Lchk;->b:Lcfy;

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 30
    new-instance v0, Lchl;

    .line 31
    invoke-direct {v0, p0}, Lchl;-><init>(Lchk;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lchl;->e:Z

    return-object v0
.end method
