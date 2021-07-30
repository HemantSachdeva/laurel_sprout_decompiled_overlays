.class Lcom/android/systemui/classifier/brightline/DiagonalClassifier;
.super Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.source "DiagonalClassifier.java"


# instance fields
.field private final mHorizontalAngleRange:F

.field private final mVerticalAngleRange:F


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 3

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    const-string p1, "systemui"

    const-string v0, "brightline_falsing_diagonal_horizontal_angle_range"

    const v1, 0x3db2b8c2

    .line 52
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->mHorizontalAngleRange:F

    .line 56
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->mVerticalAngleRange:F

    return-void
.end method

.method private angleBetween(FFF)Z
    .locals 2

    .line 100
    invoke-direct {p0, p2}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->normalizeAngle(F)F

    move-result p2

    .line 101
    invoke-direct {p0, p3}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->normalizeAngle(F)F

    move-result p0

    cmpl-float p3, p2, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_2

    cmpl-float p2, p1, p2

    if-gez p2, :cond_1

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    cmpl-float p2, p1, p2

    if-ltz p2, :cond_3

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method private normalizeAngle(F)F
    .locals 1

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    const v0, 0x40c90fdb

    if-gez p0, :cond_0

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    return p1

    :cond_0
    cmpl-float p0, p1, v0

    if-lez p0, :cond_1

    rem-float/2addr p1, v0

    :cond_1
    return p1
.end method


# virtual methods
.method getReason()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getAngle()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isVertical()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x0

    const-string v1, "{angle=%f, vertical=%s}"

    .line 91
    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method isFalseTouch()Z
    .locals 7

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getAngle()F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getInteractionType()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getInteractionType()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    iget v1, p0, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->mHorizontalAngleRange:F

    const v3, 0x3f490fdb

    sub-float v4, v3, v1

    add-float/2addr v1, v3

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isVertical()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    iget v1, p0, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->mVerticalAngleRange:F

    sub-float v4, v3, v1

    add-float/2addr v1, v3

    .line 82
    :cond_2
    invoke-direct {p0, v0, v4, v1}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->angleBetween(FFF)Z

    move-result v3

    if-nez v3, :cond_3

    const v3, 0x3fc90fdb

    add-float v5, v4, v3

    add-float v6, v1, v3

    .line 83
    invoke-direct {p0, v0, v5, v6}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->angleBetween(FFF)Z

    move-result v5

    if-nez v5, :cond_3

    sub-float v5, v4, v3

    sub-float v3, v1, v3

    .line 84
    invoke-direct {p0, v0, v5, v3}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->angleBetween(FFF)Z

    move-result v3

    if-nez v3, :cond_3

    const v3, 0x40490fdb    # (float)Math.PI

    add-float/2addr v4, v3

    add-float/2addr v1, v3

    .line 85
    invoke-direct {p0, v0, v4, v1}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->angleBetween(FFF)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    :goto_0
    return v2
.end method
