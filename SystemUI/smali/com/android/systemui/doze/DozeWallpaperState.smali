.class public Lcom/android/systemui/doze/DozeWallpaperState;
.super Ljava/lang/Object;
.source "DozeWallpaperState.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mIsAmbientMode:Z

.field private final mWallpaperManagerService:Landroid/app/IWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DozeWallpaperState"

    const/4 v1, 0x3

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeWallpaperState;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/IWallpaperManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 50
    iput-object p3, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "DozeWallpaperState:"

    .line 102
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isAmbientMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " hasWallpaperService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 5

    const-string v0, "DozeWallpaperState"

    .line 56
    sget-object v1, Lcom/android/systemui/doze/DozeWallpaperState$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    goto :goto_0

    :pswitch_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    goto :goto_1

    .line 75
    :cond_0
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v4, :cond_1

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_1

    move v2, v3

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->unlockedByWakeAndUnlock()Z

    move-result p1

    .line 82
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    if-eq v1, p1, :cond_4

    .line 83
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    .line 84
    iget-object p1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    if-eqz p1, :cond_4

    const-wide/16 p1, 0x0

    .line 87
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/doze/DozeWallpaperState;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AOD wallpaper state changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", animationDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IWallpaperManager;->setInAmbientMode(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 94
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot notify state to WallpaperManagerService: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
