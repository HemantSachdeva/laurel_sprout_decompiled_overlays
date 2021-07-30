.class final Lzd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Landroid/util/Property;

.field public static final b:Lbir;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lzi;

    invoke-direct {v0}, Lzi;-><init>()V

    sput-object v0, Lzd;->b:Lbir;

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Lzh;

    invoke-direct {v0}, Lzh;-><init>()V

    sput-object v0, Lzd;->b:Lbir;

    .line 1
    :goto_0
    new-instance v0, Lzb;

    const-class v1, Ljava/lang/Float;

    .line 3
    invoke-direct {v0, v1}, Lzb;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lzd;->a:Landroid/util/Property;

    new-instance v0, Lzc;

    const-class v1, Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, v1}, Lzc;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static a(Landroid/view/View;)F
    .locals 1

    sget-object v0, Lzd;->b:Lbir;

    .line 5
    invoke-virtual {v0, p0}, Lbir;->a(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static a(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Lzd;->b:Lbir;

    .line 9
    invoke-virtual {v0, p0, p1}, Lbir;->a(Landroid/view/View;F)V

    return-void
.end method

.method static a(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Lzd;->b:Lbir;

    .line 10
    invoke-virtual {v0, p0, p1}, Lbir;->a(Landroid/view/View;I)V

    return-void
.end method

.method static a(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Lzd;->b:Lbir;

    .line 8
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lbir;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method static b(Landroid/view/View;)Lzn;
    .locals 1

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Lzn;

    .line 7
    invoke-direct {v0, p0}, Lzn;-><init>(Landroid/view/View;)V

    return-object v0
.end method
