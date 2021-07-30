.class Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;
.super Ljava/lang/Object;
.source "FpodFrameAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->draw(IZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

.field final synthetic val$newLastDrawAnim:Z

.field final synthetic val$res:I

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;IFZ)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    iput p2, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;->val$res:I

    iput p3, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;->val$scale:F

    iput-boolean p4, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;->val$newLastDrawAnim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    iget v1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;->val$res:I

    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$200(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;->val$scale:F

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$1000(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;Landroid/graphics/Bitmap;F)V

    .line 261
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;->val$newLastDrawAnim:Z

    if-eqz v1, :cond_0

    .line 262
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$100(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
