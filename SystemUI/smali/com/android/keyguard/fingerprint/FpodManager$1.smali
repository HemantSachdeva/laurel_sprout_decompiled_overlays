.class Lcom/android/keyguard/fingerprint/FpodManager$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 37
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$1;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$1;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$000(Lcom/android/keyguard/fingerprint/FpodManager;)V

    .line 41
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$1;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/keyguard/fingerprint/FpodIconView;->setEnrolling(Z)V

    .line 42
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$1;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setEnrolling(Z)V

    :cond_0
    return-void
.end method
