.class public Lvt;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([FFF)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_1

    return v0

    .line 8
    :cond_1
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    add-int/lit8 v0, v0, -0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9
    aget v1, p0, v0

    int-to-float v2, v0

    mul-float v2, v2, p1

    sub-float/2addr p2, v2

    div-float/2addr p2, p1

    add-int/lit8 v0, v0, 0x1

    aget p0, p0, v0

    sub-float/2addr p0, v1

    mul-float p2, p2, p0

    add-float/2addr v1, p2

    return v1
.end method

.method public static a(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    iget-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez p0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 3
    :goto_0
    instance-of p2, p0, Landroid/view/View;

    if-eqz p2, :cond_1

    .line 4
    instance-of p2, p0, Lse;

    if-eqz p2, :cond_0

    .line 6
    check-cast p0, Lse;

    invoke-interface {p0}, Lse;->a()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    return-void

    .line 5
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public a(I)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lvt;->b(I)V

    return-void
.end method

.method public a(II)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
