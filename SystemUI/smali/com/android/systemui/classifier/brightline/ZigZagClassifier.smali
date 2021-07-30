.class Lcom/android/systemui/classifier/brightline/ZigZagClassifier;
.super Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.source "ZigZagClassifier.java"


# instance fields
.field private mLastDevianceX:F

.field private mLastDevianceY:F

.field private mLastMaxXDeviance:F

.field private mLastMaxYDeviance:F

.field private final mMaxXPrimaryDeviance:F

.field private final mMaxXSecondaryDeviance:F

.field private final mMaxYPrimaryDeviance:F

.field private final mMaxYSecondaryDeviance:F


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    const-string p1, "systemui"

    const-string v0, "brightline_falsing_zigzag_x_primary_deviance"

    const v1, 0x3d4ccccd    # 0.05f

    .line 61
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mMaxXPrimaryDeviance:F

    const-string v0, "brightline_falsing_zigzag_y_primary_deviance"

    const v1, 0x3e19999a    # 0.15f

    .line 66
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mMaxYPrimaryDeviance:F

    const-string v0, "brightline_falsing_zigzag_x_secondary_deviance"

    const v1, 0x3ecccccd    # 0.4f

    .line 71
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mMaxXSecondaryDeviance:F

    const-string v0, "brightline_falsing_zigzag_y_secondary_deviance"

    const v1, 0x3e99999a    # 0.3f

    .line 76
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mMaxYSecondaryDeviance:F

    return-void
.end method

.method private getAtan2LastPoint()F
    .locals 4

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getFirstMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getLastMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    .line 169
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 170
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 171
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v2, v1

    .line 172
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    sub-float/2addr p0, v0

    float-to-double v0, p0

    float-to-double v2, v2

    .line 174
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private rotateHorizontal()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->getAtan2LastPoint()F

    move-result v0

    float-to-double v0, v0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rotating to horizontal by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->rotateMotionEvents(Ljava/util/List;D)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private rotateMotionEvents(Ljava/util/List;D)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;D)",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 194
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const/4 v6, 0x0

    .line 195
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/MotionEvent;

    .line 196
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 197
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 198
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/MotionEvent;

    .line 199
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float/2addr v12, v8

    .line 200
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v11, v9

    float-to-double v12, v12

    mul-double v14, v2, v12

    move-object/from16 p2, v7

    float-to-double v6, v11

    mul-double v16, v4, v6

    add-double v14, v14, v16

    move-object/from16 p3, v10

    float-to-double v10, v8

    add-double/2addr v14, v10

    neg-double v10, v4

    mul-double/2addr v10, v12

    mul-double/2addr v6, v2

    add-double/2addr v10, v6

    float-to-double v6, v9

    add-double/2addr v10, v6

    .line 203
    new-instance v6, Landroid/graphics/Point;

    double-to-int v7, v14

    double-to-int v10, v10

    invoke-direct {v6, v7, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 p2, v7

    .line 206
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    const/4 v2, 0x0

    .line 207
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 208
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "), ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-static {v4}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "After: ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    return-object v1
.end method

.method private rotateVertical()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->getAtan2LastPoint()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rotating to vertical by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v0

    neg-double v1, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->rotateMotionEvents(Ljava/util/List;D)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getReason()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 160
    iget v1, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mLastDevianceX:F

    .line 163
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mLastMaxXDeviance:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mLastDevianceY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mLastMaxYDeviance:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const/4 p0, 0x0

    const-string v1, "{devianceX=%f, maxDevianceX=%s, devianceY=%s, maxDevianceY=%s}"

    .line 160
    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method isFalseTouch()Z
    .locals 14

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->rotateHorizontal()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->rotateVertical()Ljava/util/List;

    move-result-object v0

    .line 106
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Actual: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    move v11, v4

    move v8, v5

    move v9, v8

    move v10, v9

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Point;

    if-eqz v11, :cond_2

    .line 117
    iget v9, v12, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    .line 118
    iget v10, v12, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    move v11, v1

    goto :goto_1

    .line 122
    :cond_2
    iget v13, v12, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    sub-float/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v5, v9

    .line 123
    iget v9, v12, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v8, v9

    .line 124
    iget v9, v12, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    .line 125
    iget v10, v12, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    .line 126
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(x, y, runningAbsDx, runningAbsDy) - ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sub-float/2addr v5, v2

    sub-float/2addr v8, v3

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getXdpi()F

    move-result v0

    div-float v0, v2, v0

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getYdpi()F

    move-result v9

    div-float v9, v3, v9

    mul-float/2addr v0, v0

    mul-float/2addr v9, v9

    add-float/2addr v0, v9

    float-to-double v9, v0

    .line 135
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v0, v9

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 140
    iget v2, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mMaxXPrimaryDeviance:F

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getXdpi()F

    move-result v3

    mul-float/2addr v2, v3

    .line 141
    iget v3, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mMaxYSecondaryDeviance:F

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getYdpi()F

    move-result v0

    goto :goto_2

    .line 143
    :cond_4
    iget v2, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mMaxXSecondaryDeviance:F

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getXdpi()F

    move-result v3

    mul-float/2addr v2, v3

    .line 144
    iget v3, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mMaxYPrimaryDeviance:F

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getYdpi()F

    move-result v0

    :goto_2
    mul-float/2addr v3, v0

    .line 148
    iput v5, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mLastDevianceX:F

    .line 149
    iput v8, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mLastDevianceY:F

    .line 150
    iput v2, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mLastMaxXDeviance:F

    .line 151
    iput v3, p0, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;->mLastMaxYDeviance:F

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Straightness Deviance: ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ") vs ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    cmpl-float p0, v5, v2

    if-gtz p0, :cond_5

    cmpl-float p0, v8, v3

    if-lez p0, :cond_6

    :cond_5
    move v1, v4

    :cond_6
    return v1
.end method
