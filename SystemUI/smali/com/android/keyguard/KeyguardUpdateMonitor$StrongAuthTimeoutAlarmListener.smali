.class Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTimeoutAlarmListener;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrongAuthTimeoutAlarmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 3222
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTimeoutAlarmListener;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$1;)V
    .locals 0

    .line 3222
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTimeoutAlarmListener;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "FpodStrongAuthListener onalarm"

    .line 3226
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTimeoutAlarmListener;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 3228
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTimeoutAlarmListener;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4900(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 3230
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3231
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fingerprint/FpodManager;->setUnlockLockout(Z)V

    :cond_0
    return-void
.end method
