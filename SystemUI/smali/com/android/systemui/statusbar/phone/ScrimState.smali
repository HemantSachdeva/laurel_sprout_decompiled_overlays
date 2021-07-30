.class public enum Lcom/android/systemui/statusbar/phone/ScrimState;
.super Ljava/lang/Enum;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/ScrimState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;


# instance fields
.field mAnimateChange:Z

.field mAnimationDuration:J

.field mAodFrontScrimAlpha:F

.field mBehindAlpha:F

.field mBehindTint:I

.field mBlankScreen:Z

.field mBubbleAlpha:F

.field mBubbleTint:I

.field mDefaultScrimAlpha:F

.field mDisplayRequiresBlanking:Z

.field mDockManager:Lcom/android/systemui/dock/DockManager;

.field mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field mFrontAlpha:F

.field mFrontTint:I

.field mHasBackdrop:Z

.field mKeyguardFadingAway:Z

.field mKeyguardFadingAwayDuration:J

.field mLaunchingAffordanceWithPreview:Z

.field mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field mScrimBehindAlphaKeyguard:F

.field mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

.field mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field mWakeLockScreenSensorActive:Z

.field mWallpaperSupportsAmbientMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$1;

    const-string v1, "OFF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/ScrimState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$2;

    const-string v1, "KEYGUARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/ScrimState$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$3;

    const-string v1, "BOUNCER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/ScrimState$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$4;

    const-string v1, "BOUNCER_SCRIMMED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/phone/ScrimState$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$5;

    const-string v1, "BRIGHTNESS_MIRROR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/phone/ScrimState$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 128
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$6;

    const-string v1, "AOD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/phone/ScrimState$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 164
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$7;

    const-string v1, "PULSING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/statusbar/phone/ScrimState$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 192
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$8;

    const-string v1, "UNLOCKED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/systemui/statusbar/phone/ScrimState$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 229
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$9;

    const-string v1, "BUBBLE_EXPANDED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/systemui/statusbar/phone/ScrimState$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 29
    sget-object v12, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v12, v1, v2

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    const-wide/16 v0, 0xdc

    .line 246
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 247
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 248
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 249
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/ScrimState$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    .line 29
    const-class v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    .line 29
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/ScrimState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object v0
.end method


# virtual methods
.method public getAnimateChange()Z
    .locals 0

    .line 334
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    return p0
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 313
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    return-wide v0
.end method

.method public getBehindAlpha()F
    .locals 0

    .line 293
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    return p0
.end method

.method public getBehindTint()I
    .locals 0

    .line 305
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    return p0
.end method

.method public getBlanksScreen()Z
    .locals 0

    .line 317
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    return p0
.end method

.method public getBubbleAlpha()F
    .locals 0

    .line 297
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    return p0
.end method

.method public getBubbleTint()I
    .locals 0

    .line 309
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    return p0
.end method

.method public getFrontAlpha()F
    .locals 0

    .line 289
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    return p0
.end method

.method public getFrontTint()I
    .locals 0

    .line 301
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    return p0
.end method

.method public init(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/dock/DockManager;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    .line 276
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 277
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    .line 279
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 280
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 281
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    return-void
.end method

.method public isLowPowerState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 0

    return-void
.end method

.method public setAodFrontScrimAlpha(F)V
    .locals 0

    .line 338
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    return-void
.end method

.method public setDefaultScrimAlpha(F)V
    .locals 0

    .line 346
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDefaultScrimAlpha:F

    return-void
.end method

.method public setHasBackdrop(Z)V
    .locals 0

    .line 362
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mHasBackdrop:Z

    return-void
.end method

.method public setKeyguardFadingAway(ZJ)V
    .locals 0

    .line 370
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mKeyguardFadingAway:Z

    .line 371
    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mKeyguardFadingAwayDuration:J

    return-void
.end method

.method public setLaunchingAffordanceWithPreview(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mLaunchingAffordanceWithPreview:Z

    return-void
.end method

.method public setScrimBehindAlphaKeyguard(F)V
    .locals 0

    .line 342
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehindAlphaKeyguard:F

    return-void
.end method

.method public setWakeLockScreenSensorActive(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 0

    .line 350
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWallpaperSupportsAmbientMode:Z

    return-void
.end method

.method public updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    const-string v0, "front_scrim_alpha"

    goto :goto_0

    :cond_0
    const-string v0, "back_scrim_alpha"

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const-wide/16 v2, 0x1000

    .line 321
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 326
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, p0, :cond_1

    const-string p0, "front_scrim_tint"

    goto :goto_1

    :cond_1
    const-string p0, "back_scrim_tint"

    .line 327
    :goto_1
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 325
    invoke-static {v2, v3, p0, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 329
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/ScrimView;->setTint(I)V

    .line 330
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ScrimView;->setViewAlpha(F)V

    return-void
.end method
