.class Lcom/android/systemui/classifier/brightline/DistanceClassifier;
.super Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.source "DistanceClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;
    }
.end annotation


# instance fields
.field private mCachedDistance:Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

.field private mDistanceDirty:Z

.field private final mHorizontalFlingThresholdPx:F

.field private final mHorizontalSwipeThresholdPx:F

.field private final mVelocityToDistanceMultiplier:F

.field private final mVerticalFlingThresholdPx:F

.field private final mVerticalSwipeThresholdPx:F


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 6

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    const-string p1, "systemui"

    const-string v0, "brightline_falsing_distance_velcoity_to_distance"

    const/high16 v1, 0x41f00000    # 30.0f

    .line 59
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    const-string v0, "brightline_falsing_distance_horizontal_fling_threshold_in"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 64
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    const-string v1, "brightline_falsing_distance_vertical_fling_threshold_in"

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 69
    invoke-virtual {p2, p1, v1, v2}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    const-string v2, "brightline_falsing_distance_horizontal_swipe_threshold_in"

    const/high16 v3, 0x40400000    # 3.0f

    .line 74
    invoke-virtual {p2, p1, v2, v3}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v4

    .line 79
    invoke-virtual {p2, p1, v2, v3}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    const-string v3, "brightline_falsing_distance_screen_fraction_max_distance"

    const v5, 0x3f4ccccd    # 0.8f

    .line 84
    invoke-virtual {p2, p1, v3, v5}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getWidthPixels()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getXdpi()F

    move-result v3

    mul-float/2addr v0, v3

    .line 90
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mHorizontalFlingThresholdPx:F

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getHeightPixels()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getYdpi()F

    move-result v0

    mul-float/2addr v1, v0

    .line 93
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVerticalFlingThresholdPx:F

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getWidthPixels()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getXdpi()F

    move-result v0

    mul-float/2addr v4, v0

    .line 96
    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mHorizontalSwipeThresholdPx:F

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getHeightPixels()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getYdpi()F

    move-result p1

    mul-float/2addr v2, p1

    .line 99
    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVerticalSwipeThresholdPx:F

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mDistanceDirty:Z

    return-void
.end method

.method private calculateDistances()Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;
    .locals 8

    .line 115
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v1

    .line 118
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " motion events recorded."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;-><init>(Lcom/android/systemui/classifier/brightline/DistanceClassifier;FFFF)V

    return-object v0

    .line 123
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 124
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 128
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .line 129
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 131
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getLastMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getFirstMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v4, v0, v1

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getLastMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getFirstMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v5, v0, v1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " dY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " xV: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " yV: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logInfo(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;-><init>(Lcom/android/systemui/classifier/brightline/DistanceClassifier;FFFF)V

    return-object v0
.end method

.method private getDistances()Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mDistanceDirty:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->calculateDistances()Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mCachedDistance:Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mDistanceDirty:Z

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mCachedDistance:Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    return-object p0
.end method

.method private getPassedDistanceThreshold()Z
    .locals 6

    .line 176
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->getDistances()Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isHorizontal()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Threshold: "

    if-eqz v1, :cond_1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Horizontal swipe distance: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mHorizontalSwipeThresholdPx:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 181
    iget v0, v0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDx:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mHorizontalSwipeThresholdPx:F

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 184
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vertical swipe distance: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDy:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVerticalSwipeThresholdPx:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 186
    iget v0, v0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVerticalSwipeThresholdPx:F

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method private getPassedFlingThreshold()Z
    .locals 8

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->getDistances()Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    move-result-object v0

    .line 192
    iget v1, v0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDx:F

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->access$000(Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 193
    iget v2, v0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDy:F

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->access$100(Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isHorizontal()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "Threshold: "

    const-string v7, ", "

    if-eqz v3, :cond_1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Horizontal swipe and fling distance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDx:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->access$000(Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mHorizontalFlingThresholdPx:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 199
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mHorizontalFlingThresholdPx:F

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    return v4

    .line 202
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vertical swipe and fling distance: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDy:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->access$100(Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVerticalFlingThresholdPx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 205
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVerticalFlingThresholdPx:F

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    return v4
.end method


# virtual methods
.method getReason()Ljava/lang/String;
    .locals 3

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->getDistances()Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isHorizontal()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    .line 162
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mHorizontalFlingThresholdPx:F

    .line 163
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iget v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVerticalFlingThresholdPx:F

    .line 164
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iget v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mHorizontalSwipeThresholdPx:F

    .line 165
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iget p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVerticalSwipeThresholdPx:F

    .line 166
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v0, 0x6

    aput-object p0, v1, v0

    const/4 p0, 0x0

    const-string v0, "{distanceVectors=%s, isHorizontal=%s, velocityToDistanceMultiplier=%f, horizontalFlingThreshold=%f, verticalFlingThreshold=%f, horizontalSwipeThreshold=%f, verticalSwipeThreshold=%s}"

    .line 155
    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFalseTouch()Z
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->getPassedFlingThreshold()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isLongSwipe()Z
    .locals 2

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->getPassedDistanceThreshold()Z

    move-result p0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is longSwipe? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mDistanceDirty:Z

    return-void
.end method
