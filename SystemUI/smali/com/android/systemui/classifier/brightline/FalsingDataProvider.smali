.class public Lcom/android/systemui/classifier/brightline/FalsingDataProvider;
.super Ljava/lang/Object;
.source "FalsingDataProvider.java"


# instance fields
.field private mAngle:F

.field private mDirty:Z

.field private mFirstRecentMotionEvent:Landroid/view/MotionEvent;

.field private final mHeightPixels:I

.field private mInteractionType:I

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private final mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

.field private final mWidthPixels:I

.field private final mXdpi:F

.field private final mYdpi:F


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;-><init>(J)V

    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mDirty:Z

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mAngle:F

    .line 54
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mXdpi:F

    .line 55
    iget v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mYdpi:F

    .line 56
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mWidthPixels:I

    .line 57
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mHeightPixels:I

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xdpi, ydpi: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getXdpi()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getYdpi()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logInfo(Ljava/lang/String;)V

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width, height: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getWidthPixels()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getHeightPixels()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method private calculateAngleInternal()V
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 200
    iput v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mAngle:F

    goto :goto_2

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 203
    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    float-to-double v3, v0

    .line 205
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mAngle:F

    .line 206
    :goto_0
    iget v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mAngle:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const v2, 0x40c90fdb

    if-gez v1, :cond_1

    add-float/2addr v0, v2

    .line 207
    iput v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mAngle:F

    goto :goto_0

    .line 209
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mAngle:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    sub-float/2addr v0, v2

    .line 210
    iput v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mAngle:F

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private recalculateData()V
    .locals 3

    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mDirty:Z

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 187
    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->get(I)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 190
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->get(I)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->calculateAngleInternal()V

    .line 195
    iput-boolean v1, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mDirty:Z

    return-void
.end method

.method private unpackMotionEvent(Landroid/view/MotionEvent;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    const/4 v14, 0x0

    move v3, v14

    :goto_0
    if-ge v3, v15, :cond_0

    .line 220
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 221
    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 222
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v13, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 226
    invoke-interface {v2, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    move v12, v14

    :goto_1
    if-ge v12, v2, :cond_2

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v14

    :goto_2
    if-ge v4, v15, :cond_1

    .line 232
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 233
    invoke-virtual {v0, v4, v12, v5}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 234
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 237
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    .line 238
    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    new-array v9, v14, [Landroid/view/MotionEvent$PointerCoords;

    .line 242
    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, [Landroid/view/MotionEvent$PointerCoords;

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v17

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v18

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v19

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v20

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v21

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v22

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    move v8, v15

    move-object v9, v13

    move/from16 v23, v12

    move/from16 v12, v16

    move-object/from16 v24, v13

    move/from16 v13, v17

    move/from16 v25, v14

    move/from16 v14, v18

    move/from16 v26, v15

    move/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    .line 236
    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v23, 0x1

    move-object/from16 v13, v24

    move/from16 v14, v25

    move/from16 v15, v26

    goto :goto_1

    .line 254
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method getAngle()F
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->recalculateData()V

    .line 145
    iget p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mAngle:F

    return p0
.end method

.method getFirstRecentMotionEvent()Landroid/view/MotionEvent;
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->recalculateData()V

    .line 130
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method getHeightPixels()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mHeightPixels:I

    return p0
.end method

.method final getInteractionType()I
    .locals 0

    .line 121
    iget p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mInteractionType:I

    return p0
.end method

.method getLastMotionEvent()Landroid/view/MotionEvent;
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->recalculateData()V

    .line 135
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method getRecentMotionEvents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    return-object p0
.end method

.method getWidthPixels()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mWidthPixels:I

    return p0
.end method

.method getXdpi()F
    .locals 0

    .line 98
    iget p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mXdpi:F

    return p0
.end method

.method getYdpi()F
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mYdpi:F

    return p0
.end method

.method public isDirty()Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mDirty:Z

    return p0
.end method

.method isHorizontal()Z
    .locals 3

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->recalculateData()V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 155
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    sub-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isRight()Z
    .locals 2

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->recalculateData()V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isUp()Z
    .locals 2

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->recalculateData()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isVertical()Z
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->isHorizontal()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->unpackMotionEvent(Landroid/view/MotionEvent;)Ljava/util/List;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unpacked into: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 70
    sget-boolean v1, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x,y,t: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->clear()V

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->addAll(Ljava/util/Collection;)Z

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mDirty:Z

    return-void
.end method

.method onSessionEnd()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 263
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->clear()V

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mDirty:Z

    return-void
.end method

.method final setInteractionType(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->mInteractionType:I

    return-void
.end method
