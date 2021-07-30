.class Lcom/android/keyguard/fingerprint/FpodIconView$3;
.super Landroid/os/Handler;
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

    .line 112
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$3;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 114
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$3;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$700(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$3;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$800(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$3;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$900(Lcom/android/keyguard/fingerprint/FpodIconView;)Lcom/android/keyguard/fingerprint/FpodAnimView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->showMorePress()V

    :cond_0
    return-void
.end method
