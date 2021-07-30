.class Lcom/android/keyguard/fingerprint/FpodAnimView$1;
.super Ljava/lang/Object;
.source "FpodAnimView.java"

# interfaces
.implements Lcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fingerprint/FpodAnimView;->startAnim(ZLcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fingerprint/FpodAnimView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodAnimView;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView$1;->this$0:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView$1;->this$0:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->access$100(Lcom/android/keyguard/fingerprint/FpodAnimView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/fingerprint/FpodAnimView$1$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodAnimView$1$2;-><init>(Lcom/android/keyguard/fingerprint/FpodAnimView$1;)V

    .line 280
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodAnimView;->access$000()J

    move-result-wide v2

    .line 276
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onInterrupt()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView$1;->this$0:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->access$100(Lcom/android/keyguard/fingerprint/FpodAnimView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/fingerprint/FpodAnimView$1$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodAnimView$1$1;-><init>(Lcom/android/keyguard/fingerprint/FpodAnimView$1;)V

    .line 272
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodAnimView;->access$000()J

    move-result-wide v2

    .line 268
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 264
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->requestDrawWackLock()V

    return-void
.end method
