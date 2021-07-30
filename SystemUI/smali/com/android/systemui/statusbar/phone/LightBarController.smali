.class public Lcom/android/systemui/statusbar/phone/LightBarController;
.super Ljava/lang/Object;
.source "LightBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private mAppearance:I

.field private mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private mDirectReplying:Z

.field private mForceDarkForScrim:Z

.field private mHasLightNavigationBar:Z

.field private mNavbarColorManagedByIme:Z

.field private mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mNavigationBarMode:I

.field private mNavigationLight:Z

.field private mNavigationMode:I

.field private mQsCustomizing:Z

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

.field private mStatusBarMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/view/AppearanceRegion;

    .line 59
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 90
    sget v0, Lcom/android/systemui/R$color;->dark_mode_icon_color_single_tone:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 91
    check-cast p2, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    .line 92
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 93
    invoke-interface {p3, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 94
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$jv_bCwiUMKhQXOE_5D5jhZNF2Tw;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$jv_bCwiUMKhQXOE_5D5jhZNF2Tw;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationMode:I

    return-void
.end method

.method private animateChange()Z
    .locals 3

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method private static isLight(III)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    and-int/2addr p0, p2

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v0

    :goto_2
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationMode:I

    return-void
.end method

.method private reevaluate()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    .line 154
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IZIZ)V

    return-void
.end method

.method private updateNavigation()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationMode:I

    .line 243
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    :cond_0
    return-void
.end method

.method private updateStatus()V
    .locals 8

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 213
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    const/16 v7, 0x8

    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v4, v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    invoke-virtual {v0, v3, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    .line 229
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_1

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v1, v1, v2

    .line 236
    invoke-virtual {v1}, Lcom/android/internal/view/AppearanceRegion;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 235
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    invoke-virtual {v0, v3, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "LightBarController: "

    .line 255
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " mAppearance="

    .line 256
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v0, Landroid/view/InsetsFlags;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    const-string v2, "appearance"

    invoke-static {v0, v2, v1}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v2

    const-string v3, " stack #"

    .line 262
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/view/AppearanceRegion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " isLight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, " mNavigationLight="

    .line 266
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasLightNavigationBar="

    .line 267
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mStatusBarMode="

    .line 269
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNavigationBarMode="

    .line 270
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, " mForceDarkForScrim="

    .line 272
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mQsCustomizing="

    .line 273
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDirectReplying="

    .line 274
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mNavbarColorManagedByIme="

    .line 275
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 277
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    .line 280
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, " StatusBarTransitionsController:"

    .line 282
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_2

    const-string v0, " NavigationBarTransitionsController:"

    .line 288
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$0$LightBarController(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->lambda$new$0(I)V

    return-void
.end method

.method onNavigationBarAppearanceChanged(IZIZ)V
    .locals 2

    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    xor-int/2addr v0, p1

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    if-eqz p2, :cond_4

    .line 132
    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 133
    invoke-static {p1, p3, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz v0, :cond_3

    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    if-eq v0, p2, :cond_4

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    .line 142
    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    .line 143
    iput p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    .line 144
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    return-void
.end method

.method onNavigationBarModeChanged(I)V
    .locals 2

    .line 148
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    const/16 v1, 0x10

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZ)V
    .locals 6

    .line 111
    array-length v0, p1

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ge v2, v0, :cond_1

    if-nez v1, :cond_1

    .line 114
    aget-object v4, p1, v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/internal/view/AppearanceRegion;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    or-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_3

    .line 117
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 118
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarModeChanged(I)V

    .line 120
    :cond_3
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    return-void
.end method

.method onStatusBarModeChanged(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus()V

    return-void
.end method

.method public setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method

.method public setDirectReplying(Z)V
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 170
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method public setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    return-void
.end method

.method public setQsCustomizing(Z)V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 160
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method public setScrimState(Lcom/android/systemui/statusbar/phone/ScrimState;FLcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 2

    .line 176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 180
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v1, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    .line 183
    invoke-virtual {p3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 184
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz p2, :cond_1

    if-eq p1, v0, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    :cond_1
    return-void
.end method
