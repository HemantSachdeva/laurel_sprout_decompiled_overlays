.class public Lcom/google/android/pano/widget/StateScaledDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "StateScaledDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;
    }
.end annotation


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mScale:Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

.field private mScales:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 28
    iput v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mAlpha:I

    .line 32
    iput-object p1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object p2, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScales:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 68
    iget-object v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 73
    iget v1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mAlpha:I

    .line 74
    iget-object v2, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScale:Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    .line 75
    iget v1, v2, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->scale:F

    .line 76
    iget v2, v2, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->alpha:I

    goto :goto_0

    :cond_1
    move v2, v1

    move v1, v3

    :goto_0
    cmpl-float v3, v1, v3

    if-eqz v3, :cond_2

    .line 79
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 80
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Height is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " width is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " scale is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StateScaledDrawable"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-float v5, v1, v3

    sub-float/2addr v5, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v5, v3

    mul-float/2addr v1, v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    .line 85
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 86
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 87
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 88
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 92
    iget-object p0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStateChange([I)Z
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScales:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScales:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 135
    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->state:[I

    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    iget-object p1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScales:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    aget-object p1, p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 141
    :goto_1
    iget-object v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScale:Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    if-eq p1, v0, :cond_2

    .line 142
    iput-object p1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScale:Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public setAlpha(I)V
    .locals 0

    and-int/lit16 p1, p1, 0xff

    .line 97
    iput p1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mAlpha:I

    .line 98
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 103
    iput-object p1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 104
    iget-object v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 106
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method
