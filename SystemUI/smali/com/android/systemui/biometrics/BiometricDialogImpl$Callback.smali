.class Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;
.super Ljava/lang/Object;
.source "BiometricDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/biometrics/DialogViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/BiometricDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/systemui/biometrics/BiometricDialogImpl$1;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    return-void
.end method


# virtual methods
.method public onErrorShown()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$1000(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$1000(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Landroid/os/Handler;

    move-result-object p0

    .line 125
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x5

    .line 124
    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onNegativePressed()V
    .locals 1

    .line 130
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$1000(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPositivePressed()V
    .locals 1

    .line 135
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$1000(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTryAgainPressed()V
    .locals 1

    .line 140
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$1000(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUserCanceled()V
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$1000(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
