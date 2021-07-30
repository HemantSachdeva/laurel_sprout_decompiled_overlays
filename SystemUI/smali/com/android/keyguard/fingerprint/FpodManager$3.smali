.class Lcom/android/keyguard/fingerprint/FpodManager$3;
.super Ljava/lang/Object;
.source "FpodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 180
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$3;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$3;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1202(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$3;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->updateFpodState()V

    return-void
.end method
