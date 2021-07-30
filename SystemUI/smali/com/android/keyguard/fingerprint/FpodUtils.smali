.class public Lcom/android/keyguard/fingerprint/FpodUtils;
.super Ljava/lang/Object;
.source "FpodUtils.java"


# static fields
.field static final DEFAULT_AOD_BACK_ANIM_RES:[I

.field static final DEFAULT_NORMAL_BACK_ANIM_RES:[I

.field static final FINGERPRINT_ICON_ANIM_RES:[I

.field static final FINGERPRINT_SCAN_ANIM_RES:[I

.field public static FPOD_ICON_HEIGHT:I = 0xad

.field public static FPOD_ICON_WIDTH:I = 0xad

.field public static FPOD_ICON_X:I = 0x1c5

.field public static FPOD_ICON_Y:I = 0x668

.field private static final SUPPORT_LOW_BRIGHTNESS_FOD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 27
    sget v2, Lcom/android/systemui/R$drawable;->finger_image_aod:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/keyguard/fingerprint/FpodUtils;->DEFAULT_AOD_BACK_ANIM_RES:[I

    new-array v1, v0, [I

    .line 29
    sget v2, Lcom/android/systemui/R$drawable;->finger_image_normal:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/keyguard/fingerprint/FpodUtils;->DEFAULT_NORMAL_BACK_ANIM_RES:[I

    const/16 v1, 0x18

    new-array v2, v1, [I

    .line 34
    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_00:I

    aput v4, v2, v3

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_01:I

    aput v4, v2, v0

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_02:I

    const/4 v5, 0x2

    aput v4, v2, v5

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_03:I

    const/4 v6, 0x3

    aput v4, v2, v6

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_04:I

    const/4 v7, 0x4

    aput v4, v2, v7

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_05:I

    const/4 v8, 0x5

    aput v4, v2, v8

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_06:I

    const/4 v9, 0x6

    aput v4, v2, v9

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_07:I

    const/4 v10, 0x7

    aput v4, v2, v10

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_08:I

    const/16 v11, 0x8

    aput v4, v2, v11

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_09:I

    const/16 v12, 0x9

    aput v4, v2, v12

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_10:I

    const/16 v13, 0xa

    aput v4, v2, v13

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_11:I

    const/16 v14, 0xb

    aput v4, v2, v14

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_12:I

    const/16 v15, 0xc

    aput v4, v2, v15

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_13:I

    const/16 v16, 0xd

    aput v4, v2, v16

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_14:I

    const/16 v17, 0xe

    aput v4, v2, v17

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_15:I

    const/16 v18, 0xf

    aput v4, v2, v18

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_16:I

    const/16 v19, 0x10

    aput v4, v2, v19

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_17:I

    const/16 v20, 0x11

    aput v4, v2, v20

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_18:I

    const/16 v21, 0x12

    aput v4, v2, v21

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_19:I

    const/16 v22, 0x13

    aput v4, v2, v22

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_20:I

    const/16 v23, 0x14

    aput v4, v2, v23

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_21:I

    const/16 v24, 0x15

    aput v4, v2, v24

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_22:I

    const/16 v24, 0x16

    aput v4, v2, v24

    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_icon_23:I

    const/16 v24, 0x17

    aput v4, v2, v24

    sput-object v2, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_ICON_ANIM_RES:[I

    const/16 v2, 0x24

    new-array v2, v2, [I

    .line 35
    sget v4, Lcom/android/systemui/R$drawable;->fingerprint_scan_00:I

    aput v4, v2, v3

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_01:I

    aput v3, v2, v0

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_02:I

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_03:I

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_04:I

    aput v3, v2, v7

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_05:I

    aput v3, v2, v8

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_06:I

    aput v3, v2, v9

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_07:I

    aput v3, v2, v10

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_08:I

    aput v3, v2, v11

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_09:I

    aput v3, v2, v12

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_10:I

    aput v3, v2, v13

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_11:I

    aput v3, v2, v14

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_12:I

    aput v3, v2, v15

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_13:I

    aput v3, v2, v16

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_14:I

    aput v3, v2, v17

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_15:I

    aput v3, v2, v18

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_16:I

    aput v3, v2, v19

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_17:I

    aput v3, v2, v20

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_18:I

    aput v3, v2, v21

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_19:I

    aput v3, v2, v22

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_20:I

    aput v3, v2, v23

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_21:I

    const/16 v4, 0x15

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_22:I

    const/16 v4, 0x16

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_23:I

    const/16 v4, 0x17

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_scan_24:I

    aput v3, v2, v1

    sget v1, Lcom/android/systemui/R$drawable;->fingerprint_scan_25:I

    const/16 v3, 0x19

    aput v1, v2, v3

    sget v1, Lcom/android/systemui/R$drawable;->fingerprint_scan_26:I

    const/16 v3, 0x1a

    aput v1, v2, v3

    sget v1, Lcom/android/systemui/R$drawable;->fingerprint_scan_27:I

    const/16 v3, 0x1b

    aput v1, v2, v3

    sget v1, Lcom/android/systemui/R$drawable;->fingerprint_scan_28:I

    const/16 v3, 0x1c

    aput v1, v2, v3

    sget v1, Lcom/android/systemui/R$drawable;->fingerprint_scan_29:I

    const/16 v3, 0x1d

    aput v1, v2, v3

    sget v1, Lcom/android/systemui/R$drawable;->fingerprint_scan_30:I

    const/16 v3, 0x1e

    aput v1, v2, v3

    sget v1, Lcom/android/systemui/R$drawable;->fingerprint_scan_31:I

    const/16 v3, 0x1f

    aput v1, v2, v3

    sget v1, Lcom/android/systemui/R$drawable;->fingerprint_scan_32:I

    const/16 v3, 0x20

    aput v1, v2, v3

    sget v1, Lcom/android/systemui/R$drawable;->fingerprint_scan_33:I

    const/16 v3, 0x21

    aput v1, v2, v3

    sget v1, Lcom/android/systemui/R$drawable;->fingerprint_scan_34:I

    const/16 v3, 0x22

    aput v1, v2, v3

    sget v1, Lcom/android/systemui/R$drawable;->fingerprint_scan_35:I

    const/16 v3, 0x23

    aput v1, v2, v3

    sput-object v2, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_SCAN_ANIM_RES:[I

    const-string v1, "equuleus"

    const-string v2, "ursa"

    .line 41
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 42
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/keyguard/fingerprint/FpodUtils;->SUPPORT_LOW_BRIGHTNESS_FOD:Z

    return-void
.end method

.method public static caculateFpodIconSize()V
    .locals 5

    const-string v0, ","

    const-string v1, "persist.sys.fp.fod.location.X_Y"

    const-string v2, ""

    .line 49
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "persist.vendor.sys.fp.fod.location.X_Y"

    .line 51
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v3, "persist.sys.fp.fod.size.width_height"

    .line 53
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "persist.vendor.sys.fp.fod.size.width_height"

    .line 55
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 62
    :cond_2
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_X:I

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_Y:I

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_WIDTH:I

    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_HEIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodUtils;->resetDefaultValue()V

    :goto_0
    return-void

    .line 58
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodUtils;->resetDefaultValue()V

    return-void
.end method

.method public static getBaseDisplayDensity(I)I
    .locals 1

    .line 141
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 142
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getDefaultDisplayDensity(I)I
    .locals 1

    .line 133
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 134
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 2

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fingerprint"

    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFpodCircleColor()I
    .locals 2

    .line 73
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "trinket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "laurel_sprout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, -0xff0100

    return v0

    :cond_1
    :goto_0
    const v0, -0xff0001

    return v0
.end method

.method public static hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 1

    .line 92
    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodUtils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 96
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p0

    return p0
.end method

.method public static hasPressureSensor()Z
    .locals 2

    .line 80
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "trinket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "laurel_sprout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static resetDefaultValue()V
    .locals 1

    const/16 v0, 0x1c5

    .line 112
    sput v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_X:I

    const/16 v0, 0x668

    .line 113
    sput v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_Y:I

    const/16 v0, 0xad

    .line 114
    sput v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_WIDTH:I

    .line 115
    sput v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_HEIGHT:I

    return-void
.end method

.method public static setDefaultDisplay(Landroid/content/Context;)V
    .locals 3

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    .line 122
    invoke-static {v1}, Lcom/android/keyguard/fingerprint/FpodUtils;->getBaseDisplayDensity(I)I

    move-result v2

    .line 123
    invoke-static {v1}, Lcom/android/keyguard/fingerprint/FpodUtils;->getDefaultDisplayDensity(I)I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 125
    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method public static supportLowBrightnessFod()Z
    .locals 1

    .line 100
    sget-boolean v0, Lcom/android/keyguard/fingerprint/FpodUtils;->SUPPORT_LOW_BRIGHTNESS_FOD:Z

    return v0
.end method
