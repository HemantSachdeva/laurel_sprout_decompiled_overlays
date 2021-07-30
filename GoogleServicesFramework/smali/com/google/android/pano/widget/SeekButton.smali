.class public Lcom/google/android/pano/widget/SeekButton;
.super Landroid/view/View;
.source "SeekButton.java"


# instance fields
.field protected mAnimationStartTime:J

.field protected mAnimationState:I

.field protected mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

.field protected mDirection:I

.field protected mDisplayRate:Ljava/lang/String;

.field private mIconHeight:I

.field private mIconWidth:I

.field private mInactiveIconHeight:I

.field private mInactiveIconWidth:I

.field protected mInactiveScale:F

.field private mMaxTextWidth:F

.field protected mPosition:F

.field protected mRect:Landroid/graphics/Rect;

.field protected mRes:Landroid/content/res/Resources;

.field protected mSeek:Landroid/graphics/drawable/Drawable;

.field protected mSeekActiveAlpha:I

.field protected mSeekAlpha:I

.field protected mSeekRes:I

.field protected mStartSnapTime:J

.field protected mStretch:Landroid/graphics/drawable/Drawable;

.field protected mStretchRes:I

.field protected mTargetPosition:F

.field protected mTextColor:I

.field protected mTextPadding:I

.field protected mTextPaint:Landroid/graphics/Paint;

.field protected mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    const-wide/16 v0, -0x1

    .line 93
    iput-wide v0, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationStartTime:J

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    .line 95
    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lcom/google/android/pano/widget/SeekButton;->mStartSnapTime:J

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mDisplayRate:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    .line 132
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->initDefaults()V

    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/SeekButton;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method

.method private drawSeekIcon(Landroid/graphics/Canvas;III)V
    .locals 5

    .line 478
    invoke-direct {p0}, Lcom/google/android/pano/widget/SeekButton;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconHeight:I

    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 480
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    iget v3, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconHeight:I

    sub-int/2addr v0, v3

    div-int/2addr v0, v2

    .line 482
    :goto_1
    iget v3, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v3, v2, :cond_2

    .line 483
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v4, p2, p3

    iput v4, v3, Landroid/graphics/Rect;->left:I

    add-int v4, p2, p4

    .line 484
    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 486
    :cond_2
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v4, p2, p4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    add-int v4, p2, p3

    .line 487
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 489
    :goto_2
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 490
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 492
    iget-object v1, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ClipDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 493
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 495
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v0, v2, :cond_3

    .line 496
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int p4, p2, p4

    iput p4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p3

    .line 497
    iput p2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 499
    :cond_3
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int p3, p2, p3

    iput p3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p4

    .line 500
    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 503
    :goto_3
    iget-object p2, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 504
    iget-object p0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSeekIconAnimating(Landroid/graphics/Canvas;III)Z
    .locals 14

    move-object v0, p0

    move-object v1, p1

    .line 383
    iget v2, v0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 386
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/pano/widget/SeekButton;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    long-to-float v2, v4

    const/high16 v4, 0x43fa0000    # 500.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v4

    if-ltz v5, :cond_1

    .line 390
    iput v3, v0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    const-wide/16 v1, -0x1

    .line 391
    iput-wide v1, v0, Lcom/google/android/pano/widget/SeekButton;->mAnimationStartTime:J

    return v3

    .line 395
    :cond_1
    iget v3, v0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    int-to-float v5, v3

    mul-float/2addr v5, v4

    sub-float v6, v4, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v3, v3

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-int v3, v3

    sub-int v4, p4, p3

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 404
    iget v7, v0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    int-to-float v8, v7

    int-to-float v9, v7

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v11, v2, v10

    add-float/2addr v11, v10

    mul-float/2addr v9, v11

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v11, v7

    int-to-float v7, v7

    mul-float/2addr v6, v10

    add-float/2addr v6, v10

    mul-float/2addr v7, v6

    sub-float/2addr v11, v7

    div-float/2addr v11, v9

    float-to-int v6, v11

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 412
    iget v7, v0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v3

    .line 414
    :goto_0
    iget v10, v0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 415
    iget-object v10, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v12, p2, p3

    add-int/2addr v12, v7

    iput v12, v10, Landroid/graphics/Rect;->left:I

    add-int v12, p2, p4

    add-int/2addr v12, v7

    .line 416
    iput v12, v10, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 418
    :cond_3
    iget-object v10, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v12, p2, p4

    sub-int/2addr v12, v7

    iput v12, v10, Landroid/graphics/Rect;->left:I

    add-int v12, p2, p3

    sub-int/2addr v12, v7

    .line 419
    iput v12, v10, Landroid/graphics/Rect;->right:I

    .line 422
    :goto_1
    iget v7, v0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    if-ne v7, v9, :cond_4

    move v7, v8

    goto :goto_2

    :cond_4
    move v7, v6

    .line 425
    :goto_2
    iget-object v10, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    add-int/2addr v12, v7

    iput v12, v10, Landroid/graphics/Rect;->top:I

    .line 426
    iget-object v10, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    iget v13, v0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    add-int/2addr v12, v13

    sub-int/2addr v12, v7

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 428
    iget-object v7, v0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    if-ne v10, v9, :cond_5

    move v10, v2

    goto :goto_3

    :cond_5
    rsub-int v10, v2, 0xff

    :goto_3
    invoke-virtual {v7, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 429
    iget-object v7, v0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 430
    iget-object v7, v0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 436
    iget v7, v0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v7, v11, :cond_6

    iget v7, v0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    if-eq v7, v9, :cond_7

    :cond_6
    iget v7, v0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v7, v9, :cond_8

    iget v7, v0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    if-ne v7, v11, :cond_8

    .line 438
    :cond_7
    iget-object v7, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v10, p2, p3

    sub-int/2addr v10, v4

    iput v10, v7, Landroid/graphics/Rect;->left:I

    add-int v10, p2, p4

    sub-int/2addr v10, v4

    .line 439
    iput v10, v7, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 442
    :cond_8
    iget-object v7, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v10, p2, p4

    add-int/2addr v10, v4

    iput v10, v7, Landroid/graphics/Rect;->left:I

    add-int v10, p2, p3

    add-int/2addr v10, v4

    .line 443
    iput v10, v7, Landroid/graphics/Rect;->right:I

    .line 445
    :goto_4
    iget-object v4, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 446
    iget-object v4, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iget v10, v0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    add-int/2addr v7, v10

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 448
    iget-object v4, v0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0xff

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 449
    iget-object v4, v0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget-object v7, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 450
    iget-object v4, v0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 453
    iget v4, v0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    if-ne v4, v9, :cond_9

    move v5, v3

    .line 456
    :cond_9
    iget v3, v0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v3, v11, :cond_a

    .line 457
    iget-object v3, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v4, p2, p4

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    add-int v4, p2, p3

    sub-int/2addr v4, v5

    .line 458
    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 460
    :cond_a
    iget-object v3, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v4, p2, p3

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    add-int v4, p2, p4

    add-int/2addr v4, v5

    .line 461
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 464
    :goto_5
    iget v3, v0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    if-ne v3, v9, :cond_b

    move v8, v6

    .line 466
    :cond_b
    iget-object v3, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v8

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 467
    iget-object v3, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v8

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 469
    iget-object v3, v0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    if-ne v4, v9, :cond_c

    rsub-int v2, v2, 0xff

    :cond_c
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 470
    iget-object v2, v0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 471
    iget-object v2, v0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return v9
.end method

.method private isActive()Z
    .locals 0

    .line 508
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected initDefaults()V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/pano/ui/R$dimen;->playback_rate_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    .line 574
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/pano/ui/R$color;->text_primary_color_half_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    .line 575
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/pano/ui/R$dimen;->playback_rate_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPadding:I

    .line 576
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 577
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 578
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 579
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 581
    sget v0, Lcom/google/android/pano/ui/R$drawable;->ic_playback_scrub_fwd:I

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    .line 582
    sget v0, Lcom/google/android/pano/ui/R$drawable;->ic_playback_scrubber_line:I

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    const/16 v0, 0x66

    .line 583
    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    const/16 v0, 0xff

    .line 584
    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    .line 585
    iput v1, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    const v0, 0x3f3ae148    # 0.73f

    .line 586
    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveScale:F

    .line 587
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->updateDrawables()V

    return-void
.end method

.method protected initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 591
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 592
    sget-object v0, Lcom/google/android/pano/ui/R$styleable;->SeekButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 596
    sget p2, Lcom/google/android/pano/ui/R$styleable;->SeekButton_seekAlpha:I

    const/16 v0, 0x66

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    .line 597
    sget p2, Lcom/google/android/pano/ui/R$styleable;->SeekButton_seekActiveAlpha:I

    const/16 v0, 0xff

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    .line 598
    sget p2, Lcom/google/android/pano/ui/R$styleable;->SeekButton_seekDirection:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    .line 600
    sget p2, Lcom/google/android/pano/ui/R$styleable;->SeekButton_seekIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 601
    sget p2, Lcom/google/android/pano/ui/R$styleable;->SeekButton_seekIcon:I

    sget v1, Lcom/google/android/pano/ui/R$drawable;->ic_playback_scrub_fwd:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 606
    :goto_0
    sget v1, Lcom/google/android/pano/ui/R$styleable;->SeekButton_seekStretchIcon:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    sget p2, Lcom/google/android/pano/ui/R$styleable;->SeekButton_seekStretchIcon:I

    sget v1, Lcom/google/android/pano/ui/R$drawable;->ic_playback_scrubber_line:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    move p2, v0

    .line 612
    :cond_1
    sget v1, Lcom/google/android/pano/ui/R$styleable;->SeekButton_seekTextColor:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 613
    sget v1, Lcom/google/android/pano/ui/R$styleable;->SeekButton_seekTextColor:I

    iget v2, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    .line 614
    iget-object v2, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 617
    :cond_2
    sget v1, Lcom/google/android/pano/ui/R$styleable;->SeekButton_seekTextSize:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 618
    sget v1, Lcom/google/android/pano/ui/R$styleable;->SeekButton_seekTextSize:I

    iget v2, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    .line 619
    iget-object v2, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 622
    :cond_3
    sget v1, Lcom/google/android/pano/ui/R$styleable;->SeekButton_inactiveScale:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 623
    sget p2, Lcom/google/android/pano/ui/R$styleable;->SeekButton_inactiveScale:I

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveScale:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveScale:F

    .line 625
    iget p2, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconHeight:I

    .line 626
    iget p2, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconWidth:I

    goto :goto_1

    :cond_4
    move v0, p2

    :goto_1
    if-eqz v0, :cond_5

    .line 630
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->updateDrawables()V

    :cond_5
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 297
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 300
    invoke-direct {p0}, Lcom/google/android/pano/widget/SeekButton;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    iget v3, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconWidth:I

    .line 303
    :goto_0
    div-int/lit8 v4, v3, 0x2

    .line 304
    iget v5, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v4

    goto :goto_1

    .line 307
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v5, v7, v5

    .line 310
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int v7, v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mMaxTextWidth:F

    sub-float/2addr v7, v8

    int-to-float v3, v3

    sub-float/2addr v7, v3

    float-to-int v7, v7

    .line 313
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    const/4 v6, -0x1

    .line 317
    :cond_2
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_4

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/android/pano/widget/SeekButton;->mStartSnapTime:J

    sub-long/2addr v10, v12

    long-to-float v8, v10

    const/high16 v10, 0x43160000    # 150.0f

    div-float/2addr v8, v10

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v8, v10

    if-ltz v10, :cond_3

    .line 321
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    iput v8, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    goto :goto_2

    .line 324
    :cond_3
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    iget v11, p0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    sub-float/2addr v11, v10

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    iput v10, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_4
    :goto_2
    mul-int/2addr v6, v7

    int-to-float v6, v6

    .line 329
    iget v7, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    float-to-int v3, v3

    sub-int/2addr v4, v3

    if-eqz v2, :cond_5

    .line 338
    iget v2, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    goto :goto_3

    .line 340
    :cond_5
    iget v2, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    .line 343
    :goto_3
    iget v7, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    .line 344
    iget-object v7, p0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 345
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    div-int/lit8 v10, v1, 0x2

    div-int/2addr v7, v9

    sub-int v11, v10, v7

    iput v11, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v7

    .line 346
    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 347
    iget v7, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v7, v9, :cond_6

    add-int v7, v5, v4

    .line 348
    iput v7, v8, Landroid/graphics/Rect;->left:I

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v0, v7

    iput v0, v8, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 351
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 352
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v7, v5, v4

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 355
    :goto_4
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 356
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 357
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    :cond_7
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 361
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ClipDrawable;->setAlpha(I)V

    .line 363
    invoke-direct {p0, p1, v5, v3, v4}, Lcom/google/android/pano/widget/SeekButton;->drawSeekIconAnimating(Landroid/graphics/Canvas;III)Z

    move-result v0

    if-nez v0, :cond_8

    .line 364
    invoke-direct {p0, p1, v5, v3, v4}, Lcom/google/android/pano/widget/SeekButton;->drawSeekIcon(Landroid/graphics/Canvas;III)V

    .line 367
    :cond_8
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mDisplayRate:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 369
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v0, v9, :cond_9

    .line 370
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPadding:I

    add-int/2addr v4, v0

    sub-int/2addr v5, v4

    goto :goto_5

    .line 372
    :cond_9
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPadding:I

    add-int/2addr v4, v0

    add-int/2addr v5, v4

    .line 374
    :goto_5
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 376
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v3, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    sub-float/2addr v3, v0

    div-int/2addr v1, v9

    int-to-float v0, v1

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 377
    iget-object v1, p0, Lcom/google/android/pano/widget/SeekButton;->mDisplayRate:Ljava/lang/String;

    int-to-float v2, v5

    int-to-float v0, v0

    iget-object p0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 513
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    .line 514
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    .line 516
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    const-string v1, "125.5x"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mMaxTextWidth:F

    .line 517
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    iget-object v1, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    .line 519
    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/pano/widget/SeekButton;->mMaxTextWidth:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 521
    iget v2, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 524
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 525
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 526
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 527
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    goto :goto_0

    .line 537
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, p2

    goto :goto_1

    .line 552
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 562
    :goto_1
    iget p1, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    if-eq p1, v0, :cond_4

    int-to-float p2, v0

    int-to-float v2, p1

    div-float/2addr p2, v2

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 564
    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    .line 565
    iget p1, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    .line 567
    :cond_4
    iget p1, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    int-to-float p1, p1

    iget p2, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveScale:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconHeight:I

    .line 568
    iget p1, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconWidth:I

    .line 569
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setButtonActiveAlpha(I)V
    .locals 1

    .line 204
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    if-eq v0, p1, :cond_0

    and-int/lit16 p1, p1, 0xff

    .line 205
    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setButtonAlpha(I)V
    .locals 1

    .line 192
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    if-eq v0, p1, :cond_0

    and-int/lit16 p1, p1, 0xff

    .line 193
    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setResource(II)V
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 177
    iget p2, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_6

    .line 178
    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    .line 179
    iget-object p2, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/SeekButton;->setButtonActiveAlpha(I)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 169
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/SeekButton;->setButtonAlpha(I)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object p1, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 161
    iget p2, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    if-eq p2, p1, :cond_6

    .line 162
    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    .line 163
    iget-object p2, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 153
    :cond_4
    iget p1, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    if-eq p1, p2, :cond_6

    .line 154
    iput p2, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    .line 155
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->updateDrawables()V

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 146
    :cond_5
    iget p1, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    if-eq p1, p2, :cond_6

    .line 147
    iput p2, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    .line 148
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->updateDrawables()V

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_6
    :goto_0
    return-void
.end method

.method protected updateDrawables()V
    .locals 4

    .line 635
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 636
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 635
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 637
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    .line 638
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    iget-object v1, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    .line 639
    iget v2, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    :goto_1
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    .line 641
    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 643
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    .line 644
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 645
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public updatePosition(F)V
    .locals 5

    .line 231
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 232
    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    iget v2, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    cmpl-float v1, v1, v2

    const v2, 0x3d4ccccd    # 0.05f

    if-nez v1, :cond_0

    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/pano/widget/SeekButton;->mStartSnapTime:J

    .line 235
    :cond_0
    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 237
    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    .line 239
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
