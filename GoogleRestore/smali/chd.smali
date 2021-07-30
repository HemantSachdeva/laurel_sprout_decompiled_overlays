.class public final Lchd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final g:[I

.field public static final h:[F

.field public static final i:[I

.field public static final j:[F


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final k:Landroid/graphics/Path;

.field public final l:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    sput-object v1, Lchd;->g:[I

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lchd;->h:[F

    const/4 v0, 0x4

    new-array v1, v0, [I

    sput-object v1, Lchd;->i:[I

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lchd;->j:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    .line 1
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lchd;->k:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lchd;->l:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    .line 3
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lchd;->a:Landroid/graphics/Paint;

    .line 4
    const/high16 v2, -0x1000000

    const/16 v3, 0x44

    invoke-static {v2, v3}, Ldy;->b(II)I

    move-result v3

    iput v3, p0, Lchd;->d:I

    .line 5
    const/16 v4, 0x14

    invoke-static {v2, v4}, Ldy;->b(II)I

    move-result v4

    iput v4, p0, Lchd;->e:I

    .line 6
    const/4 v4, 0x0

    invoke-static {v2, v4}, Ldy;->b(II)I

    move-result v2

    iput v2, p0, Lchd;->f:I

    .line 7
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    .line 9
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lchd;->b:Landroid/graphics/Paint;

    .line 10
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    .line 11
    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lchd;->c:Landroid/graphics/Paint;

    return-void
.end method
