.class Lcom/android/keyguard/fingerprint/FpodOverlayView$1;
.super Ljava/lang/Object;
.source "FpodOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fingerprint/FpodOverlayView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodOverlayView;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView$1;->this$0:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView$1;->this$0:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->access$000(Lcom/android/keyguard/fingerprint/FpodOverlayView;)V

    return-void
.end method
