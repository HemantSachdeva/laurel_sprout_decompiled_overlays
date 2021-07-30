.class final Llz;
.super Lmu;
.source "PG"

# interfaces
.implements Lmd;


# instance fields
.field final synthetic a:Lmc;


# direct methods
.method public constructor <init>(Lmc;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Llz;->a:Lmc;

    .line 1
    const/4 p1, 0x0

    const v0, 0x7f04001f

    invoke-direct {p0, p2, p1, v0}, Lmu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Llz;->setClickable(Z)V

    .line 3
    invoke-virtual {p0, p1}, Llz;->setFocusable(Z)V

    .line 4
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Llz;->setVisibility(I)V

    .line 5
    invoke-virtual {p0, p1}, Llz;->setEnabled(Z)V

    .line 6
    invoke-virtual {p0}, Llz;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Laqc;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 7
    new-instance p1, Lly;

    invoke-direct {p1, p0, p0}, Lly;-><init>(Llz;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Llz;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final performClick()Z
    .locals 2

    .line 8
    invoke-super {p0}, Lmu;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Llz;->playSoundEffect(I)V

    iget-object v0, p0, Llz;->a:Lmc;

    .line 10
    invoke-virtual {v0}, Lmc;->c()Z

    return v1
.end method

.method protected final setFrame(IIII)Z
    .locals 3

    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Lmu;->setFrame(IIII)Z

    move-result p1

    .line 12
    invoke-virtual {p0}, Llz;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 13
    invoke-virtual {p0}, Llz;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 14
    invoke-virtual {p0}, Llz;->getWidth()I

    move-result p2

    .line 15
    invoke-virtual {p0}, Llz;->getHeight()I

    move-result p4

    .line 16
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 17
    invoke-virtual {p0}, Llz;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Llz;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    .line 18
    invoke-virtual {p0}, Llz;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Llz;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    sub-int v1, p2, v0

    sub-int v2, p4, v0

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    .line 19
    invoke-static {p3, v1, v2, p2, p4}, Ley;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return p1
.end method
