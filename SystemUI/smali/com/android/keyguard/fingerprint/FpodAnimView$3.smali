.class Lcom/android/keyguard/fingerprint/FpodAnimView$3;
.super Ljava/lang/Object;
.source "FpodAnimView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fingerprint/FpodAnimView;->startFadeAniamtion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancel:Z

.field final synthetic this$0:Lcom/android/keyguard/fingerprint/FpodAnimView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodAnimView;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView$3;->this$0:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 405
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView$3;->cancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 418
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView$3;->this$0:Lcom/android/keyguard/fingerprint/FpodAnimView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->access$202(Lcom/android/keyguard/fingerprint/FpodAnimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    const/4 p1, 0x1

    .line 419
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView$3;->cancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 411
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView$3;->this$0:Lcom/android/keyguard/fingerprint/FpodAnimView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->access$202(Lcom/android/keyguard/fingerprint/FpodAnimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 412
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView$3;->cancel:Z

    if-nez p1, :cond_0

    .line 413
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView$3;->this$0:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->access$300(Lcom/android/keyguard/fingerprint/FpodAnimView;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
