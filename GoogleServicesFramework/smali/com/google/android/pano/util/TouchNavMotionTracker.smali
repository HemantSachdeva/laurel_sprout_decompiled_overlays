.class public Lcom/google/android/pano/util/TouchNavMotionTracker;
.super Ljava/lang/Object;
.source "TouchNavMotionTracker.java"


# instance fields
.field private mCurrX:F

.field private mCurrY:F

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mMaxFlingVelocityX:F

.field private final mMaxFlingVelocityY:F

.field private final mMinFlingVelocityX:F

.field private final mMinFlingVelocityY:F

.field private final mMinScrollX:F

.field private final mMinScrollY:F

.field private mPrevX:F

.field private mPrevY:F

.field private final mResolutionX:F

.field private final mResolutionY:F

.field private mScrollX:F

.field private mScrollY:F

.field private mVelX:F

.field private mVelY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(FFF)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const v2, 0x40c9999a    # 6.3f

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    .line 56
    :goto_0
    iput p1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionX:F

    cmpl-float p1, p2, v0

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v2

    .line 58
    :goto_1
    iput p2, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionY:F

    .line 59
    iget p1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionX:F

    const v0, 0x449ec000    # 1270.0f

    mul-float v1, p1, v0

    iput v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMaxFlingVelocityX:F

    mul-float/2addr v0, p2

    .line 60
    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMaxFlingVelocityY:F

    const/high16 v0, 0x43480000    # 200.0f

    mul-float v1, p1, v0

    .line 61
    iput v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinFlingVelocityX:F

    mul-float/2addr v0, p2

    .line 62
    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinFlingVelocityY:F

    mul-float/2addr p1, p3

    .line 63
    iput p1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinScrollX:F

    mul-float/2addr p3, p2

    .line 64
    iput p3, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinScrollY:F

    return-void
.end method

.method public static buildTrackerForDevice(Landroid/view/InputDevice;F)Lcom/google/android/pano/util/TouchNavMotionTracker;
    .locals 4

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v0

    :goto_0
    cmpg-float v2, v0, v1

    const v3, 0x40c9999a    # 6.3f

    if-gtz v2, :cond_1

    move v0, v3

    :cond_1
    const/4 v2, 0x1

    .line 74
    invoke-virtual {p0, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object p0

    if-nez p0, :cond_2

    move p0, v1

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p0}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result p0

    :goto_1
    cmpg-float v1, p0, v1

    if-gtz v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, p0

    .line 80
    :goto_2
    new-instance p0, Lcom/google/android/pano/util/TouchNavMotionTracker;

    invoke-direct {p0, v0, v3, p1}, Lcom/google/android/pano/util/TouchNavMotionTracker;-><init>(FFF)V

    return-object p0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 179
    iput-object v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 183
    iput-object v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method public computeVelocity()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 118
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMaxFlingVelocityX:F

    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelX:F

    .line 119
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMaxFlingVelocityY:F

    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelY:F

    .line 120
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinFlingVelocityX:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinFlingVelocityY:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getDownEvent()Landroid/view/MotionEvent;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public getPhysicalX(F)F
    .locals 0

    .line 154
    iget p0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionX:F

    div-float/2addr p1, p0

    return p1
.end method

.method public getPhysicalY(F)F
    .locals 0

    .line 164
    iget p0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionY:F

    div-float/2addr p1, p0

    return p1
.end method

.method public getScrollX()F
    .locals 0

    .line 124
    iget p0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mScrollX:F

    return p0
.end method

.method public getScrollY()F
    .locals 0

    .line 128
    iget p0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mScrollY:F

    return p0
.end method

.method public getXVel()F
    .locals 0

    .line 132
    iget p0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelX:F

    return p0
.end method

.method public getYVel()F
    .locals 0

    .line 136
    iget p0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelY:F

    return p0
.end method

.method public setDownEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public setNewValues(FF)Z
    .locals 1

    .line 106
    iput p1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mCurrX:F

    .line 107
    iput p2, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mCurrY:F

    .line 108
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mPrevX:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mScrollX:F

    .line 109
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mPrevY:F

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mScrollY:F

    .line 110
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinScrollX:F

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mScrollY:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinScrollY:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public updatePrevValues()V
    .locals 1

    .line 168
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mCurrX:F

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mPrevX:F

    .line 169
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mCurrY:F

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mPrevY:F

    return-void
.end method
