.class Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "BrightLineFalsingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$1;->this$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 87
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    if-ne p1, p3, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$1;->this$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->access$002(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;Z)Z

    :cond_0
    return-void
.end method
