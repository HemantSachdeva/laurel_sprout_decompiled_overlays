.class final Lcej;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Lcei;

.field final b:Lcei;

.field final c:Lcei;

.field final d:Lcei;

.field final e:Lcei;

.field final f:Lcei;

.field final g:Lcei;

.field final h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcey;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 2
    const v1, 0x7f0401cd

    invoke-static {p1, v1, v0}, Lcsb;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 3
    sget-object v1, Lcfq;->a:[I

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 6
    invoke-static {p1, v1}, Lcei;->a(Landroid/content/Context;I)Lcei;

    move-result-object v1

    iput-object v1, p0, Lcej;->a:Lcei;

    .line 7
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 8
    invoke-static {p1, v1}, Lcei;->a(Landroid/content/Context;I)Lcei;

    move-result-object v1

    iput-object v1, p0, Lcej;->g:Lcei;

    .line 9
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 10
    invoke-static {p1, v1}, Lcei;->a(Landroid/content/Context;I)Lcei;

    move-result-object v1

    iput-object v1, p0, Lcej;->b:Lcei;

    .line 11
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 12
    invoke-static {p1, v1}, Lcei;->a(Landroid/content/Context;I)Lcei;

    move-result-object v1

    iput-object v1, p0, Lcej;->c:Lcei;

    .line 13
    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcsy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 14
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 15
    invoke-static {p1, v3}, Lcei;->a(Landroid/content/Context;I)Lcei;

    move-result-object v3

    iput-object v3, p0, Lcej;->d:Lcei;

    .line 16
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 17
    invoke-static {p1, v3}, Lcei;->a(Landroid/content/Context;I)Lcei;

    move-result-object v3

    iput-object v3, p0, Lcej;->e:Lcei;

    .line 18
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 19
    invoke-static {p1, v2}, Lcei;->a(Landroid/content/Context;I)Lcei;

    move-result-object p1

    iput-object p1, p0, Lcej;->f:Lcei;

    new-instance p1, Landroid/graphics/Paint;

    .line 20
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcej;->h:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
