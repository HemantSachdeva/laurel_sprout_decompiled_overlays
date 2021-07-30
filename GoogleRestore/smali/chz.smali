.class public final Lchz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final f:Ljava/util/List;

.field private final g:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lchz;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lchz;->g:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Lchz;->a()V

    return-void
.end method

.method private final a(F)V
    .locals 4

    iget v0, p0, Lchz;->d:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_1

    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lchv;

    iget v2, p0, Lchz;->b:F

    iget v3, p0, Lchz;->c:F

    .line 5
    invoke-direct {v1, v2, v3, v2, v3}, Lchv;-><init>(FFFF)V

    iget v2, p0, Lchz;->d:F

    iput v2, v1, Lchv;->e:F

    iput v0, v1, Lchv;->f:F

    iget-object v0, p0, Lchz;->g:Ljava/util/List;

    .line 6
    new-instance v2, Lcht;

    invoke-direct {v2, v1}, Lcht;-><init>(Lchv;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lchz;->d:F

    :cond_1
    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Matrix;)Lchy;
    .locals 2

    iget v0, p0, Lchz;->e:F

    .line 12
    invoke-direct {p0, v0}, Lchz;->a(F)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lchz;->g:Ljava/util/List;

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    new-instance v1, Lchs;

    invoke-direct {v1, v0, p1}, Lchs;-><init>(Ljava/util/List;Landroid/graphics/Matrix;)V

    return-object v1
.end method

.method public final a()V
    .locals 2

    .line 21
    const/4 v0, 0x0

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p0, v0, v1, v0}, Lchz;->a(FFF)V

    return-void
.end method

.method public final a(FF)V
    .locals 4

    new-instance v0, Lchw;

    .line 15
    invoke-direct {v0}, Lchw;-><init>()V

    iput p1, v0, Lchw;->a:F

    iput p2, v0, Lchw;->b:F

    iget-object v1, p0, Lchz;->f:Ljava/util/List;

    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lchu;

    iget v2, p0, Lchz;->b:F

    iget v3, p0, Lchz;->c:F

    invoke-direct {v1, v0, v2, v3}, Lchu;-><init>(Lchw;FF)V

    .line 18
    invoke-virtual {v1}, Lchu;->a()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    .line 19
    invoke-virtual {v1}, Lchu;->a()F

    move-result v3

    add-float/2addr v3, v2

    .line 20
    invoke-virtual {p0, v1, v0, v3}, Lchz;->a(Lchy;FF)V

    iput p1, p0, Lchz;->b:F

    iput p2, p0, Lchz;->c:F

    return-void
.end method

.method public final a(FFF)V
    .locals 1

    iput p1, p0, Lchz;->a:F

    const/4 v0, 0x0

    iput v0, p0, Lchz;->b:F

    iput p1, p0, Lchz;->c:F

    iput p2, p0, Lchz;->d:F

    add-float/2addr p2, p3

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p2, p1

    iput p2, p0, Lchz;->e:F

    iget-object p1, p0, Lchz;->f:Ljava/util/List;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lchz;->g:Ljava/util/List;

    .line 23
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    iget-object v0, p0, Lchz;->f:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lchz;->f:Ljava/util/List;

    .line 10
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchx;

    .line 11
    invoke-virtual {v2, p1, p2}, Lchx;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lchy;FF)V
    .locals 0

    .line 7
    invoke-direct {p0, p2}, Lchz;->a(F)V

    iget-object p2, p0, Lchz;->g:Ljava/util/List;

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p0, Lchz;->d:F

    return-void
.end method
