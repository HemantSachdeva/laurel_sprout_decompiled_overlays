.class Lcom/android/keyguard/fingerprint/FpodManager$2;
.super Landroid/os/Handler;
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
.field final synthetic this$0:Lcom/android/keyguard/fingerprint/FpodManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodManager;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    .line 86
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage mKeyguardShow: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {v3}, Lcom/android/keyguard/fingerprint/FpodManager;->access$300(Lcom/android/keyguard/fingerprint/FpodManager;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  isGoingToSleep: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {v3}, Lcom/android/keyguard/fingerprint/FpodManager;->access$400(Lcom/android/keyguard/fingerprint/FpodManager;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  isClickEmergencyButton: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->getClickEmergencyButton()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FpodManager"

    .line 86
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$300(Lcom/android/keyguard/fingerprint/FpodManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$400(Lcom/android/keyguard/fingerprint/FpodManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->getClickEmergencyButton()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$500(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/keyguard/fingerprint/FpodManager;->access$600(Lcom/android/keyguard/fingerprint/FpodManager;Z)V

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    .line 92
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v1, :cond_1

    move v1, v2

    .line 95
    :cond_1
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$700(Lcom/android/keyguard/fingerprint/FpodManager;Z)V

    .line 96
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodIconView;->setEnrolling(Z)V

    .line 97
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setEnrolling(Z)V

    .line 98
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodIconView;->setOtherAppAuth(Z)V

    .line 99
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setOtherAppAuth(Z)V

    .line 102
    :cond_2
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->getClickEmergencyButton()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 103
    invoke-static {v2}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->setClickEmergencyButton(Z)Z

    :cond_3
    return-void

    .line 160
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    iget-boolean v3, v0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1000(Lcom/android/keyguard/fingerprint/FpodManager;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1100(Lcom/android/keyguard/fingerprint/FpodManager;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 161
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$000(Lcom/android/keyguard/fingerprint/FpodManager;)V

    .line 162
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1, v2}, Lcom/android/keyguard/fingerprint/FpodManager;->access$600(Lcom/android/keyguard/fingerprint/FpodManager;Z)V

    .line 163
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodIconView;->setEnrolling(Z)V

    .line 164
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setEnrolling(Z)V

    .line 165
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodIconView;->setOtherAppAuth(Z)V

    .line 166
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setOtherAppAuth(Z)V

    return-void

    .line 170
    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    iget-boolean v0, p1, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1000(Lcom/android/keyguard/fingerprint/FpodManager;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$800(Lcom/android/keyguard/fingerprint/FpodManager;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 171
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->setFingerprintLockout()V

    :cond_5
    return-void

    .line 151
    :pswitch_2
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1, v2}, Lcom/android/keyguard/fingerprint/FpodManager;->access$600(Lcom/android/keyguard/fingerprint/FpodManager;Z)V

    .line 152
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/keyguard/fingerprint/FpodIconView;->setEnrolling(Z)V

    .line 153
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setEnrolling(Z)V

    .line 154
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodIconView;->setOtherAppAuth(Z)V

    .line 155
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setOtherAppAuth(Z)V

    .line 156
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0, v1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$700(Lcom/android/keyguard/fingerprint/FpodManager;Z)V

    return-void

    .line 139
    :pswitch_3
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1000(Lcom/android/keyguard/fingerprint/FpodManager;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 140
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1, v2}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1102(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z

    .line 141
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1, v2}, Lcom/android/keyguard/fingerprint/FpodManager;->access$600(Lcom/android/keyguard/fingerprint/FpodManager;Z)V

    .line 142
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$000(Lcom/android/keyguard/fingerprint/FpodManager;)V

    .line 143
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodIconView;->setEnrolling(Z)V

    .line 144
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setEnrolling(Z)V

    .line 145
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodIconView;->setOtherAppAuth(Z)V

    .line 146
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setOtherAppAuth(Z)V

    :cond_6
    return-void

    .line 132
    :pswitch_4
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1000(Lcom/android/keyguard/fingerprint/FpodManager;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 133
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1, v2}, Lcom/android/keyguard/fingerprint/FpodManager;->access$600(Lcom/android/keyguard/fingerprint/FpodManager;Z)V

    .line 134
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$000(Lcom/android/keyguard/fingerprint/FpodManager;)V

    :cond_7
    return-void

    .line 122
    :pswitch_5
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$000(Lcom/android/keyguard/fingerprint/FpodManager;)V

    .line 123
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1, v2}, Lcom/android/keyguard/fingerprint/FpodManager;->access$600(Lcom/android/keyguard/fingerprint/FpodManager;Z)V

    .line 124
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodIconView;->setEnrolling(Z)V

    .line 125
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setEnrolling(Z)V

    .line 126
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodIconView;->setOtherAppAuth(Z)V

    .line 127
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setOtherAppAuth(Z)V

    .line 128
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1, v1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$802(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z

    .line 129
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$900(Lcom/android/keyguard/fingerprint/FpodManager;)V

    return-void

    .line 109
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$500(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/keyguard/fingerprint/FpodManager;->access$600(Lcom/android/keyguard/fingerprint/FpodManager;Z)V

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    .line 111
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v1, :cond_8

    move p1, v2

    goto :goto_0

    :cond_8
    move p1, v1

    .line 114
    :goto_0
    invoke-static {v0, p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$700(Lcom/android/keyguard/fingerprint/FpodManager;Z)V

    .line 115
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/keyguard/fingerprint/FpodIconView;->setOtherAppAuth(Z)V

    .line 116
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setOtherAppAuth(Z)V

    .line 117
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/keyguard/fingerprint/FpodIconView;->setEnrolling(Z)V

    .line 118
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$2;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setEnrolling(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
