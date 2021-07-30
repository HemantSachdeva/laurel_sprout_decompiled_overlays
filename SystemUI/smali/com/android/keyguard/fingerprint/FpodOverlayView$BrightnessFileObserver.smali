.class Lcom/android/keyguard/fingerprint/FpodOverlayView$BrightnessFileObserver;
.super Lcom/android/systemui/util/FpodFixedFileObserver;
.source "FpodOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessFileObserver"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/keyguard/fingerprint/FpodOverlayView;Ljava/lang/String;)V
    .locals 0

    .line 76
    sget p1, Lcom/android/systemui/util/FpodFixedFileObserver;->MASK_BRIGHTNESS:I

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/util/FpodFixedFileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method
