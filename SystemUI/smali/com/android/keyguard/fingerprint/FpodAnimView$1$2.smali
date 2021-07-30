.class Lcom/android/keyguard/fingerprint/FpodAnimView$1$2;
.super Ljava/lang/Object;
.source "FpodAnimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fingerprint/FpodAnimView$1;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodAnimView$1;)V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 278
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->releaseDrawWackLock()V

    return-void
.end method
