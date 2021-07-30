.class public Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;
.super Ljava/lang/Object;
.source "FpodKeyguardHelperForP.java"


# static fields
.field private static sPreShowTouches:I = 0x0

.field private static sPreShowTouchesUser:I = -0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static restoreShowTouchesState(Landroid/content/Context;)V
    .locals 3

    .line 27
    sget v0, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->sPreShowTouches:I

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->sPreShowTouches:I

    sget v1, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->sPreShowTouchesUser:I

    const-string v2, "show_touches"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 p0, 0x0

    .line 29
    sput p0, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->sPreShowTouches:I

    const/16 p0, -0x2710

    .line 30
    sput p0, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->sPreShowTouchesUser:I

    :cond_0
    return-void
.end method

.method public static saveShowTouchesState(Landroid/content/Context;)V
    .locals 4

    .line 19
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    sput v0, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->sPreShowTouchesUser:I

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->sPreShowTouchesUser:I

    const-string v2, "show_touches"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->sPreShowTouches:I

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->sPreShowTouchesUser:I

    invoke-static {p0, v2, v3, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method public static setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-void
.end method
