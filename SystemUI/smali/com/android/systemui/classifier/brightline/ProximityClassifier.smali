.class Lcom/android/systemui/classifier/brightline/ProximityClassifier;
.super Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.source "ProximityClassifier.java"


# instance fields
.field private final mDistanceClassifier:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

.field private mGestureStartTimeNs:J

.field private mNear:Z

.field private mNearDurationNs:J

.field private final mPercentCoveredThreshold:F

.field private mPercentNear:F

.field private mPrevNearTimeNs:J


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/DistanceClassifier;Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 1

    .line 51
    invoke-direct {p0, p2}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    .line 52
    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mDistanceClassifier:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    const-string p1, "systemui"

    const-string p2, "brightline_falsing_proximity_percent_covered_threshold"

    const v0, 0x3dcccccd    # 0.1f

    .line 54
    invoke-virtual {p3, p1, p2, v0}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentCoveredThreshold:F

    return-void
.end method

.method private update(ZJ)V
    .locals 4

    .line 141
    iget-wide v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNear:Z

    if-eqz v2, :cond_0

    .line 142
    iget-wide v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    sub-long v0, p2, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set prevNearTimeNs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 148
    iput-wide p2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    .line 151
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNear:Z

    return-void
.end method


# virtual methods
.method getReason()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 128
    iget v1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    .line 131
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentCoveredThreshold:F

    .line 132
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mDistanceClassifier:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->getReason()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x0

    const-string v1, "{percentInProximity=%f, threshold=%f, distanceClassifier=%s}"

    .line 128
    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFalseTouch()Z
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getInteractionType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Percent of gesture in proximity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logInfo(Ljava/lang/String;)V

    .line 119
    iget v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    iget v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentCoveredThreshold:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 120
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mDistanceClassifier:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->isLongSwipe()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public onProximityEvent(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V
    .locals 4

    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;->getNear()Z

    move-result v0

    .line 106
    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;->getTimestampNs()J

    move-result-wide v1

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor is: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " at time "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->update(ZJ)V

    return-void
.end method

.method onSessionEnded()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    return-void
.end method

.method onSessionStarted()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mGestureStartTimeNs:J

    .line 78
    iget-wide v3, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    .line 83
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gesture start time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mGestureStartTimeNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 84
    iput-wide v1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 88
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNear:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->update(ZJ)V

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mGestureStartTimeNs:J

    sub-long/2addr v3, v5

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Gesture duration, Proximity duration: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    cmp-long p1, v3, v1

    if-nez p1, :cond_4

    .line 94
    iget-boolean p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNear:Z

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    goto :goto_1

    .line 96
    :cond_4
    iget-wide v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    long-to-float p1, v0

    long-to-float v0, v3

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    :cond_5
    :goto_1
    return-void
.end method
