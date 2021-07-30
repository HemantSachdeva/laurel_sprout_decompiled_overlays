.class Lcom/android/keyguard/fingerprint/FpodManager$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FpodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDelayRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/keyguard/fingerprint/FpodManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodManager;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 193
    new-instance p1, Lcom/android/keyguard/fingerprint/FpodManager$4$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/fingerprint/FpodManager$4$1;-><init>(Lcom/android/keyguard/fingerprint/FpodManager$4;)V

    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->mDelayRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    const/4 p3, 0x0

    .line 268
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 269
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0, p3}, Lcom/android/keyguard/fingerprint/FpodManager;->access$402(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z

    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 237
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFingerprintError: msgId = "

    .line 238
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errString = "

    .line 240
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FpodManager"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x9

    const/4 p3, 0x7

    if-eq p1, p3, :cond_0

    if-ne p1, p2, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    iget-boolean v1, v0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    if-nez v1, :cond_1

    .line 244
    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->showFpodInKeyguardWhenLockout()V

    :cond_1
    if-eq p1, p3, :cond_2

    if-ne p1, p2, :cond_3

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1600(Lcom/android/keyguard/fingerprint/FpodManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1302(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z

    .line 251
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->updateFpodState()V

    :cond_3
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 257
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    const-string p2, "fpod"

    const-string v0, "fpodmanager onFingerprintRunningStateChanged"

    .line 258
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBiometricRunningStateChanged running == "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotifaicationPanelView"

    invoke-static {v0, p2}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1600(Lcom/android/keyguard/fingerprint/FpodManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1600(Lcom/android/keyguard/fingerprint/FpodManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->mDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    .line 204
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardBouncerChanged: bouncer = "

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " interactive = "

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {v1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$500(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpodManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {v0, p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1402(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z

    .line 212
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-virtual {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->updateFpodState()V

    .line 213
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$500(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->refreshIcon()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 219
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    const-string v0, "FpodManager"

    const-string v1, "onScreenTurnedOn"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->onScreenTurnedOn()V

    .line 222
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->onScreenTurnedOn()V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1

    .line 226
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    const-string p1, "FpodManager"

    const-string v0, "onStartedGoingToSleep"

    .line 227
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$402(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z

    .line 230
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1500(Lcom/android/keyguard/fingerprint/FpodManager;)V

    .line 231
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->onStartedGoingToSleep()V

    .line 232
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->onStartedGoingToSleep()V

    return-void
.end method
