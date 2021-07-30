.class Lcom/android/keyguard/fingerprint/FpodManager$6;
.super Ljava/lang/Object;
.source "FpodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fingerprint/FpodManager;->scheduleResetFlag()V
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

    .line 707
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager$6;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 710
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager$6;->this$0:Lcom/android/keyguard/fingerprint/FpodManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/fingerprint/FpodManager;->access$802(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z

    return-void
.end method
