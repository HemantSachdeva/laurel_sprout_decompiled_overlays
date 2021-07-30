.class Lcom/android/systemui/screenshot/GlobalScreenshot$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$showUiOnActionsReady$5(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$imageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$imageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 749
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 750
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$imageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    invoke-static {p1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1500(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
