.class public Lcom/android/keyguard/fingerprint/FpodTipView;
.super Landroid/widget/FrameLayout;
.source "FpodTipView.java"


# instance fields
.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFontScale:F

.field private mFpodAnimHeight:I

.field private mFpodAnimWidth:I

.field private mFpodIconHeight:I

.field private mFpodIconWidth:I

.field private mFpodIconX:I

.field private mFpodIconY:I

.field private mKeyguardAuthen:Z

.field private mLongPressAnimator:Landroid/animation/ObjectAnimator;

.field private mLongPressContainer:Landroid/view/View;

.field private mLongPressImage:Landroid/widget/ImageView;

.field private mLongPressText:Landroid/widget/TextView;

.field private mPortraitOrientation:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowed:Z

.field private mTryAgain:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mPortraitOrientation:Z

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mShowed:Z

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->fpod_keyguard_tip_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    sget v0, Lcom/android/systemui/R$id;->fpod_anim_try_again:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mTryAgain:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/android/systemui/R$id;->fpod_anim_long_press_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressContainer:Landroid/view/View;

    const/high16 v1, 0x434e0000    # 206.0f

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 55
    sget v0, Lcom/android/systemui/R$id;->fpod_anim_long_press_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressText:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/android/systemui/R$id;->fpod_anim_long_press_img:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressImage:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_X:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconX:I

    .line 58
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_Y:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconY:I

    .line 59
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_WIDTH:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconWidth:I

    .line 60
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_HEIGHT:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconHeight:I

    const/16 v0, 0x3f0

    .line 61
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodAnimWidth:I

    .line 62
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodAnimHeight:I

    .line 65
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 68
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mScreenWidth:I

    .line 69
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mScreenHeight:I

    const/16 v0, 0x1300

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000f

    .line 71
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private updateFontScale()V
    .locals 5

    .line 195
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 196
    iget v1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFontScale:F

    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mTryAgain:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->fpod_tip_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 198
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$dimen;->fpod_tip_long_press:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 199
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFontScale:F

    :cond_0
    return-void
.end method

.method private updateLpByOrientation(Landroid/view/WindowManager$LayoutParams;)V
    .locals 7

    .line 218
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mPortraitOrientation:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 219
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconX:I

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodAnimWidth:I

    iget v3, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconWidth:I

    sub-int v3, v2, v3

    div-int/2addr v3, v1

    sub-int/2addr v0, v3

    .line 220
    iget v3, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconY:I

    iget v4, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodAnimHeight:I

    iget v5, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconHeight:I

    sub-int v5, v4, v5

    div-int/2addr v5, v1

    sub-int/2addr v3, v5

    goto :goto_0

    .line 224
    :cond_0
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconX:I

    iget v4, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodAnimWidth:I

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconWidth:I

    sub-int v2, v4, v2

    div-int/2addr v2, v1

    sub-int v3, v0, v2

    .line 225
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconY:I

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodAnimHeight:I

    iget v5, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconHeight:I

    sub-int v5, v2, v5

    div-int/2addr v5, v1

    sub-int/2addr v0, v5

    .line 231
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 232
    iget-boolean v6, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mKeyguardAuthen:Z

    if-nez v6, :cond_4

    if-eq v5, v1, :cond_1

    const/4 v1, 0x3

    if-ne v5, v1, :cond_4

    .line 233
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mPortraitOrientation:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mScreenWidth:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mScreenHeight:I

    :goto_1
    sub-int/2addr v1, v0

    sub-int v0, v1, v2

    .line 234
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mPortraitOrientation:Z

    if-eqz v1, :cond_3

    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mScreenHeight:I

    goto :goto_2

    :cond_3
    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mScreenWidth:I

    :goto_2
    sub-int/2addr p0, v3

    sub-int v3, p0, v4

    .line 236
    :cond_4
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 237
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 238
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 239
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private updateOrientation(Z)V
    .locals 2

    .line 204
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mPortraitOrientation:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mPortraitOrientation:Z

    .line 207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .line 208
    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodTipView;->updateLpByOrientation(Landroid/view/WindowManager$LayoutParams;)V

    .line 209
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanLongPressTip()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 112
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mShowed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mShowed:Z

    .line 114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x8

    .line 118
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 185
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 187
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mKeyguardAuthen:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 190
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodTipView;->updateOrientation(Z)V

    .line 191
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->updateFontScale()V

    return-void
.end method

.method public onKeyguardAuthen(Z)V
    .locals 1

    .line 147
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mKeyguardAuthen:Z

    .line 149
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mKeyguardAuthen:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 152
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodTipView;->updateOrientation(Z)V

    return-void
.end method

.method public setLongPressColor(Z)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v1, -0x33000001    # -1.3421772E8f

    goto :goto_0

    :cond_0
    const/high16 v1, -0x34000000    # -3.3554432E7f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    sget p1, Lcom/android/systemui/R$drawable;->fpod_tip_arrow_light:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/systemui/R$drawable;->fpod_tip_arrow_dark:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public show()V
    .locals 10

    .line 76
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mShowed:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mShowed:Z

    .line 79
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    if-eq v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mKeyguardAuthen:Z

    if-nez v2, :cond_0

    move v0, v3

    .line 83
    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mPortraitOrientation:Z

    .line 84
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_X:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconX:I

    .line 85
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_Y:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconY:I

    .line 86
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_WIDTH:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconWidth:I

    .line 87
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_HEIGHT:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodIconHeight:I

    .line 88
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodAnimWidth:I

    iget v6, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFpodAnimHeight:I

    const/16 v7, 0x7df

    const v8, 0x1000618

    const/4 v9, -0x2

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 93
    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v2, 0x33

    .line 94
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 95
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodTipView;->updateLpByOrientation(Landroid/view/WindowManager$LayoutParams;)V

    const-string v2, "gxzw_tip"

    .line 97
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 102
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 105
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->updateFontScale()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public showLongPressTipIfNeed()V
    .locals 5

    .line 156
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mKeyguardAuthen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodQuickOpenUtil;->isShowQuickOpenTip(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->isUnlockByFpod()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressText:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->fpod_long_press_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x1f4

    .line 163
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 167
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mLongPressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41c80000    # 25.0f
    .end array-data
.end method

.method public startTipAnim(ZLjava/lang/String;F)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mTryAgain:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p2, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mTryAgain:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object p2, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mTryAgain:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/high16 p1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 127
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 128
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mTryAgain:Landroid/widget/TextView;

    const/4 p2, 0x2

    new-array p3, p2, [F

    fill-array-data p3, :array_0

    const-string v1, "translationX"

    invoke-static {p1, v1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x2bc

    .line 129
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 132
    iget-object p3, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    new-instance p3, Landroid/animation/ObjectAnimator;

    invoke-direct {p3}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 134
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mTryAgain:Landroid/widget/TextView;

    new-array p3, p2, [F

    fill-array-data p3, :array_1

    const-string v1, "alpha"

    invoke-static {p0, v1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v1, 0x96

    .line 135
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 136
    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    .line 138
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 139
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x42700000    # 60.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stopTipAnim()V
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodTipView;->mTryAgain:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
