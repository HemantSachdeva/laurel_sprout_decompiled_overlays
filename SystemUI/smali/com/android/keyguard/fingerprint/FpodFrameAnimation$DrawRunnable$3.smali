.class Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable$3;
.super Ljava/lang/Object;
.source "FpodFrameAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->notifyFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable$3;->this$1:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable$3;->this$1:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->access$800(Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;)Lcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;->onFinish()V

    return-void
.end method
