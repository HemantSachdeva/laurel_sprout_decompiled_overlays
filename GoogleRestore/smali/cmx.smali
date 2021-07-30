.class final Lcmx;
.super Landroid/graphics/drawable/LayerDrawable;
.source "PG"


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    .line 2
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return v1
.end method
