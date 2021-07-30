.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$8;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 3

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    .line 197
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    .line 198
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    .line 200
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mKeyguardFadingAway:Z

    if-eqz v0, :cond_0

    .line 201
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mKeyguardFadingAwayDuration:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x12c

    .line 202
    :goto_0
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 204
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mLaunchingAffordanceWithPreview:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 207
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 208
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    .line 209
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 211
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_1

    .line 213
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 214
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 215
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 218
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 219
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 220
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    .line 221
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    :cond_1
    return-void
.end method
