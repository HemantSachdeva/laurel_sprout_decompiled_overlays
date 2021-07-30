.class abstract Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.super Ljava/lang/Object;
.source "FalsingClassifier.java"


# instance fields
.field private final mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    return-void
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static logInfo(Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getAngle()F
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getAngle()F

    move-result p0

    return p0
.end method

.method getFirstMotionEvent()Landroid/view/MotionEvent;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getFirstRecentMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method getHeightPixels()I
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getHeightPixels()I

    move-result p0

    return p0
.end method

.method final getInteractionType()I
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getInteractionType()I

    move-result p0

    return p0
.end method

.method getLastMotionEvent()Landroid/view/MotionEvent;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getLastMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method abstract getReason()Ljava/lang/String;
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

    .line 37
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getWidthPixels()I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getWidthPixels()I

    move-result p0

    return p0
.end method

.method getXdpi()F
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getXdpi()F

    move-result p0

    return p0
.end method

.method getYdpi()F
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getYdpi()F

    move-result p0

    return p0
.end method

.method abstract isFalseTouch()Z
.end method

.method isHorizontal()Z
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->isHorizontal()Z

    move-result p0

    return p0
.end method

.method isRight()Z
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->isRight()Z

    move-result p0

    return p0
.end method

.method isUp()Z
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->isUp()Z

    move-result p0

    return p0
.end method

.method isVertical()Z
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->isVertical()Z

    move-result p0

    return p0
.end method

.method onProximityEvent(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V
    .locals 0

    return-void
.end method

.method onSessionEnded()V
    .locals 0

    return-void
.end method

.method onSessionStarted()V
    .locals 0

    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
