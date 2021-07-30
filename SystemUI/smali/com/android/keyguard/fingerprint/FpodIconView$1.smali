.class Lcom/android/keyguard/fingerprint/FpodIconView$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 74
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$1;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "action_set_icon_transparent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$1;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$000(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$1;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$102(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z

    .line 78
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$1;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$200(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$1;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$300(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$1;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$400(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    :cond_1
    :goto_0
    return-void
.end method
