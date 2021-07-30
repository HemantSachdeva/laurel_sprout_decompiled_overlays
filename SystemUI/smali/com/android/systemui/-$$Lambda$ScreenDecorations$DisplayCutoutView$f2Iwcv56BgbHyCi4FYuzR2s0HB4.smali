.class public final synthetic Lcom/android/systemui/-$$Lambda$ScreenDecorations$DisplayCutoutView$f2Iwcv56BgbHyCi4FYuzR2s0HB4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$DisplayCutoutView$f2Iwcv56BgbHyCi4FYuzR2s0HB4;->f$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$DisplayCutoutView$f2Iwcv56BgbHyCi4FYuzR2s0HB4;->f$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->lambda$setShowProtection$1$ScreenDecorations$DisplayCutoutView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
