.class Lcom/android/keyguard/fingerprint/FpodAnimView$2;
.super Ljava/lang/Object;
.source "FpodAnimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fingerprint/FpodAnimView;->startFadeAniamtion()V
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

    .line 399
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView$2;->this$0:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView$2;->this$0:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->setAlpha(F)V

    return-void
.end method
