.class public Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/GlobalScreenshot$SmartActionsReceiver;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$TargetChosenReceiver;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$ActionProxyReceiver;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;
    }
.end annotation


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private final mAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mActionsContainer:Landroid/widget/HorizontalScrollView;

.field private mActionsContainerBackground:Landroid/widget/ImageView;

.field private mActionsView:Landroid/widget/LinearLayout;

.field private mBackgroundProtection:Landroid/widget/ImageView;

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private final mContext:Landroid/content/Context;

.field private mCornerSizeX:F

.field private mDirectionLTR:Z

.field private mDismissAnimation:Landroid/animation/Animator;

.field private mDismissButton:Landroid/widget/FrameLayout;

.field private mDismissDeltaY:F

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mFastOutSlowIn:Landroid/view/animation/Interpolator;

.field private mInDarkMode:Z

.field private mLeftInset:I

.field private mNavMode:I

.field private final mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

.field private mOnCompleteRunnable:Ljava/lang/Runnable;

.field private mOrientationPortrait:Z

.field private mRightInset:I

.field private mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimatedView:Landroid/widget/ImageView;

.field private mScreenshotAnimation:Landroid/animation/Animator;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private final mScreenshotHandler:Landroid/os/Handler;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotPreview:Landroid/widget/ImageView;

.field private mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/systemui/screenshot/ScreenshotNotificationsController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 10

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mInDarkMode:Z

    const/4 v1, 0x1

    .line 220
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    .line 235
    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    .line 258
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 259
    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    .line 260
    iput-object p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->reloadAssets()V

    .line 263
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 264
    invoke-virtual {p3}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mInDarkMode:Z

    .line 265
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p4

    if-nez p4, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    iput-boolean p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    .line 266
    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne p3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    .line 269
    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x7f4

    const v8, 0xe0520

    const/4 v9, -0x3

    move-object v2, p3

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string p4, "ScreenshotAnimation"

    .line 279
    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p4, 0x3

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 281
    invoke-virtual {p3, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string p3, "window"

    .line 282
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 283
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 284
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 285
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 287
    sget p1, Lcom/android/systemui/R$dimen;->global_screenshot_x_scale:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCornerSizeX:F

    .line 288
    sget p1, Lcom/android/systemui/R$dimen;->screenshot_dismissal_height_delta:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissDeltaY:F

    .line 290
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const p2, 0x10c000d

    .line 291
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    .line 294
    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    .line 295
    invoke-virtual {p1, v0}, Landroid/media/MediaActionSound;->load(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/FrameLayout;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showUiOnActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotActionsShadeAnimation(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->logSuccessOnActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotNotificationsController;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/os/Handler;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->clearScreenshot()V

    return-void
.end method

.method private aspectRatiosMatch(Landroid/graphics/Bitmap;Landroid/graphics/Insets;Landroid/graphics/Rect;)Z
    .locals 6

    .line 1088
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    iget v0, p2, Landroid/graphics/Insets;->left:I

    sub-int/2addr p0, v0

    iget v0, p2, Landroid/graphics/Insets;->right:I

    sub-int/2addr p0, v0

    .line 1089
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    const-string v2, "GlobalScreenshot"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    .line 1091
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1092
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p0, p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    .line 1100
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    sub-float p2, p0, p1

    .line 1102
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const p3, 0x3dcccccd    # 0.1f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1

    move p2, v3

    goto :goto_0

    :cond_1
    move p2, v4

    :goto_0
    if-nez p2, :cond_2

    new-array p3, v1, [Ljava/lang/Object;

    .line 1105
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p3, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p3, v3

    const-string p0, "aspectRatiosMatch: don\'t match bitmap: %f, bounds: %f"

    .line 1104
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p2

    :cond_3
    :goto_1
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    .line 1095
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p0, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    aput-object p2, p0, v1

    const-string p1, "Provided bitmap and insets create degenerate region: %dx%d %s"

    .line 1093
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private clearScreenshot()V
    .locals 4

    .line 703
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 709
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 710
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundProtection:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 718
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->screenshot_preview_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 717
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 720
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 721
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 722
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 723
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private createScreenDrawable(Landroid/graphics/Bitmap;Landroid/graphics/Insets;)Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 1115
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v1

    .line 1116
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    .line 1118
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v3, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p0, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1120
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1128
    :cond_0
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p2, Landroid/graphics/Insets;->left:I

    int-to-float v2, v2

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v2, v4

    int-to-float v0, v0

    div-float v5, v2, v0

    iget v2, p2, Landroid/graphics/Insets;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    int-to-float v1, v1

    div-float v6, v2, v1

    iget v2, p2, Landroid/graphics/Insets;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float v0, v2, v0

    iget v2, p2, Landroid/graphics/Insets;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float v7, v2, v1

    move-object v2, p1

    move v4, v5

    move v5, v6

    move v6, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    .line 1134
    iget v0, p2, Landroid/graphics/Insets;->left:I

    if-ltz v0, :cond_2

    iget v0, p2, Landroid/graphics/Insets;->top:I

    if-ltz v0, :cond_2

    iget v0, p2, Landroid/graphics/Insets;->right:I

    if-ltz v0, :cond_2

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    .line 1137
    :cond_2
    :goto_0
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    new-array p0, p0, [Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v0, p0, v9

    aput-object p1, p0, v8

    invoke-direct {p2, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_3
    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1124
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v8

    aput-object p2, v0, p0

    const-string p0, "Can\'t create insetted drawable, using 0 insets bitmap and insets create degenerate region: %dx%d %s"

    .line 1121
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalScreenshot"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private createScreenshotActionsShadeAnimation(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)Landroid/animation/ValueAnimator;
    .locals 7

    .line 950
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 951
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 952
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 953
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 954
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 959
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :catch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 965
    iget-object v2, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->smartActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 966
    sget v5, Lcom/android/systemui/R$layout;->global_screenshot_action_chip:I

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 968
    iget-object v6, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 969
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 970
    iget-object v3, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$zoiJ7VfPKwI7yIJvbi190g-D1F0;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$zoiJ7VfPKwI7yIJvbi190g-D1F0;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setPendingIntent(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 976
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 977
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 980
    :cond_0
    sget v2, Lcom/android/systemui/R$layout;->global_screenshot_action_chip:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 982
    iget-object v3, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->shareAction:Landroid/app/Notification$Action;

    iget-object v3, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v3, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->shareAction:Landroid/app/Notification$Action;

    invoke-virtual {v3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 984
    iget-object v3, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->shareAction:Landroid/app/Notification$Action;

    iget-object v3, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v6, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$MkAlXNeoR7_50KjiDre0R4wGids;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$MkAlXNeoR7_50KjiDre0R4wGids;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v3, v6}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setPendingIntent(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 989
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 990
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    sget v2, Lcom/android/systemui/R$layout;->global_screenshot_action_chip:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 994
    iget-object v2, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    iget-object v2, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 995
    iget-object v2, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    invoke-virtual {v2}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 996
    iget-object v2, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    iget-object v2, v2, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v3, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$XXIG7j6dPGZ6Zn1FXTR5gWo8g0I;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$XXIG7j6dPGZ6Zn1FXTR5gWo8g0I;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setPendingIntent(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 1001
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1002
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$VvfHRCrWoGQwVLoHepVN1CIElwE;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$VvfHRCrWoGQwVLoHepVN1CIElwE;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    iget-object p1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1017
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    .line 1018
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1019
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 1021
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0x190

    .line 1022
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/high16 v0, 0x3e800000    # 0.25f

    .line 1025
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 1026
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1027
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1028
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1030
    new-instance v2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$keIEq4fnGhzmco-MhgArWXJcCzY;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$keIEq4fnGhzmco-MhgArWXJcCzY;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;FLjava/util/ArrayList;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDismissAnimation()Landroid/animation/AnimatorSet;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1053
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x32

    .line 1054
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0xb7

    .line 1055
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1056
    new-instance v2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$lwSCWVmpTO3-JMK1heDr17u172Q;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$lwSCWVmpTO3-JMK1heDr17u172Q;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 1060
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1061
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    .line 1062
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1063
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    .line 1064
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    .line 1065
    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2_tLLQ8ajKLz2LczKwL5qBWTPFQ;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2_tLLQ8ajKLz2LczKwL5qBWTPFQ;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;FF)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1073
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1074
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDropInAnimation(Landroid/graphics/Rect;Z)Landroid/animation/AnimatorSet;
    .locals 18

    move-object/from16 v9, p0

    .line 828
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 829
    iget-object v1, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 831
    iget v1, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCornerSizeX:F

    .line 832
    iget-boolean v2, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    div-float v10, v1, v2

    .line 835
    iget-object v1, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 836
    iget-object v1, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 838
    iget-object v1, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 839
    iget-object v1, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 841
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 842
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    const-wide/16 v2, 0x85

    .line 843
    invoke-virtual {v14, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 844
    iget-object v2, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 845
    new-instance v2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$YZI2_eat7pqyqR-5GQVbxZaUURE;

    invoke-direct {v2, v9}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$YZI2_eat7pqyqR-5GQVbxZaUURE;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    .line 848
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    const-wide/16 v2, 0xd9

    .line 849
    invoke-virtual {v15, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 850
    iget-object v2, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 851
    new-instance v2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$YQUkDp6F-qmNgj235g5aM4pPh0E;

    invoke-direct {v2, v9}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$YQUkDp6F-qmNgj235g5aM4pPh0E;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v15, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 855
    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v5, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 856
    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v8, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-array v0, v1, [F

    .line 858
    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-wide/16 v0, 0x1f4

    .line 859
    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const v4, 0x3eef9db2    # 0.468f

    const v16, 0x3ecccccd    # 0.4f

    const v2, 0x3eef9db2    # 0.468f

    .line 866
    new-instance v6, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;

    move-object v0, v6

    move-object/from16 v1, p0

    move v3, v10

    move-object v12, v6

    move-object v6, v8

    move-object v11, v7

    move-object/from16 v7, p1

    move/from16 v17, v10

    move-object v10, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;FFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Rect;F)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 906
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;

    invoke-direct {v0, v9}, Lcom/android/systemui/screenshot/GlobalScreenshot$11;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 914
    iget-object v0, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 915
    iget-object v0, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 918
    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 919
    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 921
    :cond_1
    invoke-virtual {v13, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 924
    :goto_1
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot$12;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/PointF;Landroid/graphics/Rect;F)V

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v13

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isUserSetupComplete()Z
    .locals 2

    .line 676
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$11()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SMART_ACTION_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string v0, "chip tapped"

    const/4 v1, 0x0

    .line 973
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 974
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$12()V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string v0, "chip tapped"

    const/4 v1, 0x0

    .line 986
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 987
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$13()V
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string v0, "chip tapped"

    const/4 v1, 0x0

    .line 998
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 999
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$14(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;Landroid/view/View;)V
    .locals 0

    .line 1006
    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    iget-object p1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V

    .line 1007
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string p1, "screenshot preview tapped"

    const/4 p2, 0x0

    .line 1008
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 1009
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GlobalScreenshot"

    const-string p2, "Intent cancelled"

    .line 1011
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$15(FLjava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1031
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    .line 1032
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundProtection:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    cmpg-float v0, p3, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    div-float p1, p3, p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1034
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    const p1, 0x3f333333    # 0.7f

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    .line 1038
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setScaleX(F)V

    .line 1039
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1040
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 1041
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    div-float v2, v1, v0

    .line 1042
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    goto :goto_1

    .line 1044
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    iget-boolean p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    .line 1045
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    iget-boolean p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    move p2, p3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setPivotX(F)V

    .line 1046
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 1047
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    int-to-float p3, p0

    .line 1046
    :goto_4
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setPivotX(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDismissAnimation$16(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1057
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDismissAnimation$17(FFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1066
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissDeltaY:F

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    const/4 v1, 0x0

    invoke-static {v1, v0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    add-float/2addr p1, p3

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1068
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1069
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, p3}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 1070
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDropInAnimation$10(FFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Rect;FLandroid/animation/ValueAnimator;)V
    .locals 5

    .line 867
    invoke-virtual {p8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p8

    cmpg-float v0, p8, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    div-float p1, p8, p1

    .line 870
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 869
    invoke-static {v1, p2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 871
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 872
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    .line 874
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 875
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 878
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleX()F

    move-result p1

    .line 879
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getScaleY()F

    move-result p2

    cmpg-float v0, p8, p3

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_1

    .line 882
    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget v3, p5, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    div-float p3, p8, p3

    .line 883
    invoke-interface {v4, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    .line 882
    invoke-static {v0, v3, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    .line 884
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v2

    sub-float/2addr p3, v3

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_1

    .line 886
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    iget v0, p5, Landroid/graphics/PointF;->x:F

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 888
    :goto_1
    iget p3, p4, Landroid/graphics/PointF;->y:F

    iget p4, p5, Landroid/graphics/PointF;->y:F

    iget-object p5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    .line 889
    invoke-interface {p5, p8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p5

    .line 888
    invoke-static {p3, p4, p5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    .line 890
    iget-object p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, p2

    div-float/2addr p5, v2

    sub-float/2addr p3, p5

    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setY(F)V

    cmpl-float p2, p8, p7

    if-ltz p2, :cond_3

    .line 893
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    sub-float/2addr p8, p7

    sub-float/2addr v1, p7

    div-float/2addr p8, v1

    invoke-virtual {p2, p8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 894
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getX()F

    move-result p2

    .line 895
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getY()F

    move-result p3

    .line 896
    iget-object p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, v2

    sub-float/2addr p3, p5

    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->setY(F)V

    .line 897
    iget-boolean p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    if-eqz p3, :cond_2

    .line 898
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    .line 899
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p1

    add-float/2addr p2, p4

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    sub-float/2addr p2, p0

    .line 898
    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setX(F)V

    goto :goto_2

    .line 901
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setX(F)V

    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic lambda$createScreenshotDropInAnimation$8(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 846
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDropInAnimation$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 852
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$reloadAssets$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 396
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 398
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setWindowFocusable(Z)V

    :cond_0
    return p2
.end method

.method private synthetic lambda$reloadAssets$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 403
    iget p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNavMode:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 405
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result p1

    .line 404
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 406
    iget v0, p1, Landroid/graphics/Insets;->left:I

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mLeftInset:I

    .line 407
    iget p1, p1, Landroid/graphics/Insets;->right:I

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRightInset:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 409
    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRightInset:I

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mLeftInset:I

    .line 411
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$reloadAssets$2(Landroid/view/View;)V
    .locals 1

    .line 456
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EXPLICIT_DISMISSAL:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string p1, "dismiss_button"

    const/4 v0, 0x0

    .line 457
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 458
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$saveScreenshotAndToast$4()V
    .locals 1

    .line 652
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaActionSound;->play(I)V

    return-void
.end method

.method private synthetic lambda$showUiOnActionsReady$5(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$9;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 754
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotActionsShadeAnimation(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startAnimation$6(Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 805
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation(Landroid/graphics/Rect;Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/Animator;

    .line 807
    new-instance p1, Lcom/android/systemui/screenshot/GlobalScreenshot$10;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$10;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-direct {p0, p3, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;)V

    .line 815
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->audioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->audioManager:Landroid/media/AudioManager;

    .line 816
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 817
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaActionSound;->play(I)V

    .line 820
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 821
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->buildLayer()V

    .line 822
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private synthetic lambda$startAnimation$7(Landroid/graphics/Insets;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
    .locals 3

    .line 788
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 792
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenDrawable(Landroid/graphics/Bitmap;Landroid/graphics/Insets;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 791
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 793
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimatedViewSize(II)V

    .line 795
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenDrawable(Landroid/graphics/Bitmap;Landroid/graphics/Insets;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 799
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 801
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-j-LPtsifwwAXetcpkY7zTdj5sE;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-j-LPtsifwwAXetcpkY7zTdj5sE;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$takeScreenshotPartial$3()V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private logSuccessOnActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 1

    .line 764
    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->uri:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 765
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 766
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    sget p1, Lcom/android/systemui/R$string;->screenshot_failed_to_capture_text:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    goto :goto_0

    .line 769
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_0
    return-void
.end method

.method private onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 328
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mInDarkMode:Z

    if-nez v0, :cond_1

    .line 331
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mInDarkMode:Z

    goto :goto_0

    .line 336
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mInDarkMode:Z

    if-eqz v0, :cond_1

    .line 337
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mInDarkMode:Z

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 343
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_2

    goto :goto_3

    .line 351
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    if-eqz v3, :cond_4

    .line 352
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    goto :goto_2

    .line 345
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    if-nez v3, :cond_4

    .line 346
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    :goto_2
    move v0, v2

    .line 359
    :cond_4
    :goto_3
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v2, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    goto :goto_4

    .line 367
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    if-eqz p1, :cond_7

    .line 368
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    goto :goto_5

    .line 361
    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    if-nez p1, :cond_7

    .line 362
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    goto :goto_5

    :cond_7
    :goto_4
    move v2, v0

    :goto_5
    if-eqz v2, :cond_8

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->reloadAssets()V

    .line 378
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0084

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNavMode:I

    return-void
.end method

.method private reloadAssets()V
    .locals 6

    .line 387
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 389
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 393
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$layout;->global_screenshot:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 395
    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$cjbBbqRWya3kStc4feynRVu5-_w;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$cjbBbqRWya3kStc4feynRVu5-_w;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6btUb3pURbXlvq3U7gZEq6_gft0;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6btUb3pURbXlvq3U7gZEq6_gft0;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 413
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 424
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 425
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 427
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_animated_view:I

    .line 428
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    .line 429
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 430
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 437
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_preview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 438
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 439
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 447
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_actions_container_background:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 449
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_actions_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 451
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_actions:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    .line 452
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_actions_background:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundProtection:Landroid/widget/ImageView;

    .line 454
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_dismiss_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    .line 455
    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ivNcVUrtovF5MBU69iA0tYfbicU;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ivNcVUrtovF5MBU69iA0tYfbicU;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_flash:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 462
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_selector:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    .line 463
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 464
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 465
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 466
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 467
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 468
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private saveScreenshotAndToast(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$NW_abdlllKq5tF4cCHzAFPVwopQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$NW_abdlllKq5tF4cCHzAFPVwopQ;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 655
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;)V

    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;",
            ")V"
        }
    .end annotation

    .line 496
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;-><init>()V

    .line 497
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 498
    iput-object p1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    .line 499
    iput-object p2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;

    .line 501
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    if-eqz p1, :cond_0

    .line 503
    new-instance p2, Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->setActionsReadyListener(Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;)V

    .line 511
    :cond_0
    new-instance p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 512
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setAnimatedViewSize(II)V
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1081
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1082
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1083
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setWindowFocusable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 486
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 487
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private showUiOnActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 4

    .line 730
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->logSuccessOnActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    .line 732
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 733
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x1770

    const/4 v2, 0x4

    .line 734
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    int-to-long v0, v0

    .line 738
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 739
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    .line 740
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 739
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 743
    iget-object v0, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4lRJxCebWv6lMPOxNapvb200hVc;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4lRJxCebWv6lMPOxNapvb200hVc;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private startAnimation(Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Insets;",
            "Z)V"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 782
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->audioManager:Landroid/media/AudioManager;

    .line 783
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->screenshot_saved_title:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$wtfj5YdXpTdwTAi0ronJ8c-HaMQ;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$wtfj5YdXpTdwTAi0ronJ8c-HaMQ;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/Insets;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private takeScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Insets;",
            "Z)V"
        }
    .end annotation

    const-string v0, "new screenshot requested"

    const/4 v1, 0x1

    .line 530
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 532
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    sget p3, Lcom/android/systemui/R$string;->screenshot_failed_to_capture_text:I

    invoke-virtual {p1, p3}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    const/4 p1, 0x0

    .line 537
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 538
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 542
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isUserSetupComplete()Z

    move-result p1

    if-nez p1, :cond_1

    .line 545
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotAndToast(Ljava/util/function/Consumer;)V

    return-void

    .line 550
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 551
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 553
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 555
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissAnimation:Landroid/animation/Animator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 556
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissAnimation:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 560
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setWindowFocusable(Z)V

    .line 563
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V

    return-void
.end method

.method private takeScreenshot(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 520
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 521
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 522
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 523
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 524
    invoke-static {p2, v1, v2, v0}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V

    return-void
.end method


# virtual methods
.method dismissScreenshot(Ljava/lang/String;Z)V
    .locals 2

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearing screenshot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlobalScreenshot"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 686
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    if-nez p2, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDismissAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissAnimation:Landroid/animation/Animator;

    .line 689
    new-instance p2, Lcom/android/systemui/screenshot/GlobalScreenshot$8;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 696
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 698
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->clearScreenshot()V

    :goto_0
    return-void
.end method

.method handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Insets;",
            "II",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 580
    iput-object p8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    .line 581
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->aspectRatiosMatch(Landroid/graphics/Bitmap;Landroid/graphics/Insets;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    move-object v3, p2

    move-object v4, p3

    .line 582
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V

    goto :goto_0

    .line 584
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    .line 585
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    .line 584
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$createScreenshotActionsShadeAnimation$11$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotActionsShadeAnimation$11()V

    return-void
.end method

.method public synthetic lambda$createScreenshotActionsShadeAnimation$12$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotActionsShadeAnimation$12()V

    return-void
.end method

.method public synthetic lambda$createScreenshotActionsShadeAnimation$13$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotActionsShadeAnimation$13()V

    return-void
.end method

.method public synthetic lambda$createScreenshotActionsShadeAnimation$14$GlobalScreenshot(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotActionsShadeAnimation$14(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotActionsShadeAnimation$15$GlobalScreenshot(FLjava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotActionsShadeAnimation$15(FLjava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotDismissAnimation$16$GlobalScreenshot(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDismissAnimation$16(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotDismissAnimation$17$GlobalScreenshot(FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDismissAnimation$17(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotDropInAnimation$10$GlobalScreenshot(FFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Rect;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDropInAnimation$10(FFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Rect;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotDropInAnimation$8$GlobalScreenshot(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDropInAnimation$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotDropInAnimation$9$GlobalScreenshot(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDropInAnimation$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$reloadAssets$0$GlobalScreenshot(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$reloadAssets$1$GlobalScreenshot(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$reloadAssets$2$GlobalScreenshot(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$2(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$saveScreenshotAndToast$4$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$saveScreenshotAndToast$4()V

    return-void
.end method

.method public synthetic lambda$showUiOnActionsReady$5$GlobalScreenshot(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$showUiOnActionsReady$5(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    return-void
.end method

.method public synthetic lambda$startAnimation$6$GlobalScreenshot(Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$startAnimation$6(Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$startAnimation$7$GlobalScreenshot(Landroid/graphics/Insets;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$startAnimation$7(Landroid/graphics/Insets;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$takeScreenshotPartial$3$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$takeScreenshotPartial$3()V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    const/4 v0, 0x3

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 301
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 303
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 304
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 305
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 306
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 307
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 308
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 309
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 310
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 311
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 313
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNavMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mLeftInset:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 316
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 317
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRightInset:I

    sub-int p0, v3, p0

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, p0, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 319
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 322
    :cond_0
    iget-object p0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method stopScreenshot()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 641
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stopSelection()V

    :cond_0
    return-void
.end method

.method takeScreenshot(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 567
    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    .line 569
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 570
    new-instance p2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    return-void
.end method

.method takeScreenshotPartial(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "new screenshot requested"

    const/4 v1, 0x1

    .line 595
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 596
    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    .line 598
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 628
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance p2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$Tc_8QADSt7VB0ZmgXdNNGChxZmU;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$Tc_8QADSt7VB0ZmgXdNNGChxZmU;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
