.class Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
.super Landroid/view/View;
.source "FrameLayoutWithShadows.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/FrameLayoutWithShadows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShadowView"
.end annotation


# instance fields
.field private mAlpha:F

.field private mDrawableBottom:Landroid/graphics/drawable/Drawable;

.field private shadowedView:Landroid/view/View;


# direct methods
.method static synthetic access$000(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->shadowedView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->shadowedView:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public getAlpha()F
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 89
    iget p0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mAlpha:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 108
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 111
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    iget-object p0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setAlpha(F)V
    .locals 2

    .line 72
    iget v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 73
    iput p1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mAlpha:F

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/high16 v0, 0x437f0000    # 255.0f

    .line 66
    iget p0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mAlpha:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method
