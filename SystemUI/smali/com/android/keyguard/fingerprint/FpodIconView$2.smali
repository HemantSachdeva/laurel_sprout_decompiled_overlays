.class Lcom/android/keyguard/fingerprint/FpodIconView$2;
.super Ljava/lang/Object;
.source "FpodIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 99
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$2;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$2;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$000(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$2;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$500(Lcom/android/keyguard/fingerprint/FpodIconView;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$2;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$600(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    return-void
.end method
