.class public Lcgl;
.super Lpb;
.source "PG"


# instance fields
.field protected a:Z

.field b:Z

.field private c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcgl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcgl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lpb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcgl;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcgl;->h:Landroid/graphics/Rect;

    const/16 v0, 0x77

    iput v0, p0, Lcgl;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcgl;->a:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcgl;->b:Z

    .line 6
    sget-object v4, Lcgn;->a:[I

    new-array v7, v1, [I

    .line 7
    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v2 .. v7}, Lcgr;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget p2, p0, Lcgl;->i:I

    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcgl;->i:I

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p0, p2}, Lcgl;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p2, 0x2

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcgl;->a:Z

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 13
    invoke-super {p0, p1}, Lpb;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcgl;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcgl;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcgl;->b:Z

    iget-object v2, p0, Lcgl;->d:Landroid/graphics/Rect;

    iget-object v3, p0, Lcgl;->h:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {p0}, Lcgl;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcgl;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 15
    invoke-virtual {p0}, Lcgl;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcgl;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget-boolean v6, p0, Lcgl;->a:Z

    if-eqz v6, :cond_0

    .line 16
    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcgl;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcgl;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcgl;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {p0}, Lcgl;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    .line 18
    invoke-virtual {v2, v1, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    :goto_0
    iget v1, p0, Lcgl;->i:I

    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 21
    invoke-static {v1, v4, v5, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 22
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 23
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 18
    :cond_2
    return-void
.end method

.method public final drawableHotspotChanged(FF)V
    .locals 1

    .line 24
    invoke-super {p0, p1, p2}, Lpb;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Lcgl;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected final drawableStateChanged()V
    .locals 2

    .line 26
    invoke-super {p0}, Lpb;->drawableStateChanged()V

    iget-object v0, p0, Lcgl;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcgl;->c:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {p0}, Lcgl;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public final getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcgl;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getForegroundGravity()I
    .locals 1

    iget v0, p0, Lcgl;->i:I

    return v0
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    .line 29
    invoke-super {p0}, Lpb;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcgl;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    .line 31
    invoke-super/range {p0 .. p5}, Lpb;->onLayout(ZIIII)V

    iget-boolean p2, p0, Lcgl;->b:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcgl;->b:Z

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Lpb;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcgl;->b:Z

    return-void
.end method

.method public final setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcgl;->c:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_4

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcgl;->c:Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-virtual {p0, v0}, Lcgl;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcgl;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcgl;->setWillNotDraw(Z)V

    .line 36
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcgl;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget v0, p0, Lcgl;->i:I

    const/16 v1, 0x77

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    .line 39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 40
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 43
    :cond_2
    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcgl;->setWillNotDraw(Z)V

    .line 42
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcgl;->requestLayout()V

    .line 43
    invoke-virtual {p0}, Lcgl;->invalidate()V

    return-void

    .line 41
    :cond_4
    return-void
.end method

.method public final setForegroundGravity(I)V
    .locals 1

    iget v0, p0, Lcgl;->i:I

    if-eq v0, p1, :cond_3

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    iput p1, p0, Lcgl;->i:I

    const/16 v0, 0x77

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcgl;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    .line 44
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcgl;->c:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcgl;->requestLayout()V

    :cond_3
    return-void
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lpb;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcgl;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
