.class Lcom/android/keyguard/fingerprint/FpodIconView$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FpodIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fingerprint/FpodIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodIconView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    const-string p0, "FpodIconView2"

    const-string p1, "enter onFingerprintAcquired... "

    .line 140
    invoke-static {p0, p1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "FpodIconView"

    const-string p1, "onFingerprintAcquired"

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    const-string v0, "FpodIconView2"

    const-string v1, "enter onFingerprintAuthFailed... "

    .line 146
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FpodIconView"

    const-string v1, "onFingerprintAuthFailed"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p1, v0, :cond_2

    .line 162
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$700(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$200(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$900(Lcom/android/keyguard/fingerprint/FpodIconView;)Lcom/android/keyguard/fingerprint/FpodAnimView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startFalseAnim()V

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1102(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z

    .line 166
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1200(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1300(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1400(Lcom/android/keyguard/fingerprint/FpodIconView;)Landroid/os/Vibrator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 170
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$000(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    :cond_2
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 205
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 206
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFingerprintError: msgId = "

    .line 207
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errString = "

    .line 209
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FpodIconView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FpodIconView2"

    invoke-static {p3, p2}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    const/16 p2, 0x9

    if-ne p1, p2, :cond_2

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$000(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1100(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 215
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$500(Lcom/android/keyguard/fingerprint/FpodIconView;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 216
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$600(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1602(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z

    .line 219
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1102(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z

    .line 220
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1700(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 221
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1, p2}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1702(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z

    .line 222
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1800(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    :cond_2
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 194
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFingerprintHelp: msgId = "

    .line 196
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", helpString = "

    .line 198
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FpodIconView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FpodIconView2"

    invoke-static {p1, p0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 228
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFingerprintRunningStateChanged: running = "

    .line 230
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpodIconView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FpodIconView2"

    invoke-static {v0, p2}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1700(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$5;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1602(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z

    :cond_0
    return-void
.end method
