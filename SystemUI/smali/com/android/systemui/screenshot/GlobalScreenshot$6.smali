.class Lcom/android/systemui/screenshot/GlobalScreenshot$6;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->val$finisher:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTouch$0(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTouch$0$GlobalScreenshot$6(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->lambda$onTouch$0(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 602
    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    .line 603
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 608
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->updateSelection(II)V

    return v1

    :cond_1
    const/16 p2, 0x8

    .line 611
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 613
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 615
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->val$finisher:Ljava/util/function/Consumer;

    new-instance v3, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6$DV8eaPDbwMlxrm96cZXE9jcXpVY;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6$DV8eaPDbwMlxrm96cZXE9jcXpVY;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$6;Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 621
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stopSelection()V

    return v1

    .line 605
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->startSelection(II)V

    return v1
.end method
