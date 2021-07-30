.class Lcom/android/systemui/classifier/brightline/PointerCountClassifier;
.super Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.source "PointerCountClassifier.java"


# instance fields
.field private mMaxPointerCount:I


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    return-void
.end method


# virtual methods
.method getReason()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    iget p0, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const/4 p0, 0x0

    const-string v1, "{pointersObserved=%d, threshold=%d}"

    .line 66
    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFalseTouch()Z
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getInteractionType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget p0, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    if-le p0, v3, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 59
    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    if-le p0, v2, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 44
    iget v0, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    goto :goto_0

    .line 48
    :cond_0
    iget v1, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    .line 50
    :goto_0
    iget p1, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    if-eq v0, p1, :cond_1

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pointers observed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
