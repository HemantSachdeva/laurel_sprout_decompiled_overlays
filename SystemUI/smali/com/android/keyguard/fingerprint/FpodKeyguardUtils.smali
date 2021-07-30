.class public Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;
.super Ljava/lang/Object;
.source "FpodKeyguardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;
    }
.end annotation


# static fields
.field private static final FPOD_SENSOR:I

.field private static isClickEmergencyButton:Z

.field private static mAlwaysOnByDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const-string v0, "ro.fpod.customized.region"

    const-string v1, ""

    .line 50
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ro.androidone_mode"

    const/4 v1, 0x0

    .line 51
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->FPOD_SENSOR:I

    .line 52
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/wireless/signal_strength"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    sput-boolean v1, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isClickEmergencyButton:Z

    const-string v0, "ro.vendor.audio.us.proximity"

    .line 77
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.audio.us.proximity"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return-void
.end method

.method public static accessibilityInversionEnabled(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "accessibility_display_inversion_enabled"

    .line 292
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->boolSettingDefaultOff(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static alwaysOnAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 271
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->alwaysOnDisplayDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->alwaysOnDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->ambientDisplayAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static alwaysOnDisplayAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111005e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private static alwaysOnDisplayDebuggingEnabled()Z
    .locals 2

    const-string v0, "debug.doze.aod"

    const/4 v1, 0x0

    .line 276
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static ambientDisplayAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 284
    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->ambientDisplayComponent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static ambientDisplayComponent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x104020e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static boolSetting(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 0

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static boolSettingDefaultOff(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 296
    invoke-static {p0, p1, p2, v0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->boolSetting(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static canSwitchUser(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 455
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasOwnerUserAuthenticatedSinceBoot()Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 458
    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isPhoneCalling(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "FpodKeyguardUtils"

    const-string p1, "Can\'t switch user when phone calling."

    .line 461
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getAuthUserId(Landroid/content/Context;I)I
    .locals 2

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "second_user_id"

    const/16 v0, -0x2710

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v0, :cond_0

    :cond_0
    return v1
.end method

.method public static getClickEmergencyButton()Z
    .locals 1

    .line 152
    sget-boolean v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isClickEmergencyButton:Z

    return v0
.end method

.method public static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 2

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fingerprint"

    .line 448
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAodEnable(Landroid/content/Context;I)Z
    .locals 2

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->mAlwaysOnByDefault:Z

    const-string v1, "doze_always_on"

    .line 262
    invoke-static {p0, v1, p1, v0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->boolSetting(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->alwaysOnAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->accessibilityInversionEnabled(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDozing()Z
    .locals 1

    .line 344
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFpodAodShowEnable(Landroid/content/Context;)Z
    .locals 3

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fpod_icon_aod_show_enable"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isFpodSensor()Z
    .locals 2

    .line 193
    sget v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->FPOD_SENSOR:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isInvertColorsEnable(Landroid/content/Context;)Z
    .locals 3

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_display_inversion_enabled"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isPhoneCalling(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "phone"

    .line 467
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static setClickEmergencyButton(Z)Z
    .locals 0

    .line 147
    sput-boolean p0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isClickEmergencyButton:Z

    return p0
.end method
