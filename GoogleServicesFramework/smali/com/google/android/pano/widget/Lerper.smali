.class public final Lcom/google/android/pano/widget/Lerper;
.super Ljava/lang/Object;
.source "Lerper.java"


# instance fields
.field private mDivisor:F

.field private mMinDelta:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    iput v0, p0, Lcom/google/android/pano/widget/Lerper;->mDivisor:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 13
    iput v0, p0, Lcom/google/android/pano/widget/Lerper;->mMinDelta:F

    return-void
.end method


# virtual methods
.method public getValue(FF)F
    .locals 3

    sub-float v0, p2, p1

    .line 61
    iget v1, p0, Lcom/google/android/pano/widget/Lerper;->mMinDelta:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 63
    iget p0, p0, Lcom/google/android/pano/widget/Lerper;->mDivisor:F

    div-float/2addr v0, p0

    add-float/2addr p1, v0

    cmpl-float p0, p1, p2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    goto :goto_0

    :cond_1
    neg-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 70
    iget p0, p0, Lcom/google/android/pano/widget/Lerper;->mDivisor:F

    div-float/2addr v0, p0

    add-float/2addr p1, v0

    cmpg-float p0, p1, p2

    if-gez p0, :cond_0

    :cond_2
    :goto_0
    return p2
.end method

.method public setDivisor(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 17
    iput p1, p0, Lcom/google/android/pano/widget/Lerper;->mDivisor:F

    div-float/2addr v0, p1

    .line 18
    iput v0, p0, Lcom/google/android/pano/widget/Lerper;->mMinDelta:F

    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
