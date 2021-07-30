.class Lcom/android/keyguard/fingerprint/FpodManager$4$1;
.super Ljava/lang/Object;
.source "FpodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodManager$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/fingerprint/FpodManager$4;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodManager$4;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$4$1;->this$1:Lcom/android/keyguard/fingerprint/FpodManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager$4$1;->this$1:Lcom/android/keyguard/fingerprint/FpodManager$4;

    iget-object v0, v0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/FpodManager;->access$1302(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z

    .line 198
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$4$1;->this$1:Lcom/android/keyguard/fingerprint/FpodManager$4;

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$4;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->updateFpodState()V

    return-void
.end method
