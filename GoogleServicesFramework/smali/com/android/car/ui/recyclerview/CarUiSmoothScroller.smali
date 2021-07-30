.class public Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "CarUiSmoothScroller.java"


# instance fields
.field mDecelerationTimeDivisor:F

.field mDensityDpi:I

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mMillisecondsPerInch:F

.field mMillisecondsPerPixel:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$dimen;->car_ui_scrollbar_milliseconds_per_inch:I

    invoke-static {v0, v1}, Lcom/android/car/ui/utils/CarUiUtils;->getFloat(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;->mMillisecondsPerInch:F

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$dimen;->car_ui_scrollbar_deceleration_times_divisor:I

    invoke-static {v0, v1}, Lcom/android/car/ui/utils/CarUiUtils;->getFloat(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;->mDecelerationTimeDivisor:F

    .line 62
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/car/ui/R$dimen;->car_ui_scrollbar_decelerate_interpolator_factor:I

    invoke-static {v1, v2}, Lcom/android/car/ui/utils/CarUiUtils;->getFloat(Landroid/content/res/Resources;I)F

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;->mDensityDpi:I

    .line 67
    iget v0, p0, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;->mMillisecondsPerInch:F

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;->mMillisecondsPerPixel:F

    return-void
.end method


# virtual methods
.method protected calculateTimeForDeceleration(I)I
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;->mDecelerationTimeDivisor:F

    div-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 0

    .line 93
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;->mMillisecondsPerPixel:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 1

    const/4 p2, -0x1

    .line 79
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result p2

    if-lez p2, :cond_1

    const/4 v0, 0x0

    neg-int p1, p1

    .line 87
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0, p1, p2, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method
