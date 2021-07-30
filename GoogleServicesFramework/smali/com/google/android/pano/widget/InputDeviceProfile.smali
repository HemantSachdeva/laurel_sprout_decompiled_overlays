.class public final Lcom/google/android/pano/widget/InputDeviceProfile;
.super Ljava/lang/Object;
.source "InputDeviceProfile.java"


# instance fields
.field protected mBlockMovementOnKeyDown:Z

.field protected mGenerateDpadCenter:Z

.field protected mGenerateFling:Z

.field protected mOverShootProtection:F

.field protected mThreshold:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfile(Landroid/view/InputDevice;)Lcom/google/android/pano/widget/InputDeviceProfile;
    .locals 5

    .line 50
    new-instance v0, Lcom/google/android/pano/widget/InputDeviceProfile;

    invoke-direct {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;-><init>()V

    .line 51
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "athome_remote"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0, v4}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result p0

    const v1, 0x40accccd    # 5.4f

    div-float/2addr p0, v1

    iput p0, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mThreshold:F

    .line 54
    iput v2, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mOverShootProtection:F

    .line 59
    iput-boolean v4, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mGenerateDpadCenter:Z

    .line 60
    iput-boolean v3, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mGenerateFling:Z

    .line 61
    iput-boolean v3, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mBlockMovementOnKeyDown:Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result p0

    const v1, 0x40c66666    # 6.2f

    div-float/2addr p0, v1

    iput p0, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mThreshold:F

    .line 65
    iput v2, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mOverShootProtection:F

    .line 66
    iput-boolean v4, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mGenerateDpadCenter:Z

    .line 67
    iput-boolean v3, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mGenerateFling:Z

    .line 68
    iput-boolean v4, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mBlockMovementOnKeyDown:Z

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getBlockMovementOnKeyDown()Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/google/android/pano/widget/InputDeviceProfile;->mBlockMovementOnKeyDown:Z

    return p0
.end method

.method public getGenerateDpadCenter()Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/android/pano/widget/InputDeviceProfile;->mGenerateDpadCenter:Z

    return p0
.end method

.method public getGenerateFling()Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/google/android/pano/widget/InputDeviceProfile;->mGenerateFling:Z

    return p0
.end method

.method public getOvershootProtection()F
    .locals 0

    .line 34
    iget p0, p0, Lcom/google/android/pano/widget/InputDeviceProfile;->mOverShootProtection:F

    return p0
.end method

.method public getThreshold()F
    .locals 0

    .line 30
    iget p0, p0, Lcom/google/android/pano/widget/InputDeviceProfile;->mThreshold:F

    return p0
.end method
