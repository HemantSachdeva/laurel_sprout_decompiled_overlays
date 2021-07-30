.class Lcom/android/systemui/screenshot/GlobalScreenshot$7;
.super Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotAndToast(Ljava/util/function/Consumer;)V
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

    .line 655
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->val$finisher:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onActionsReady$0()V
    .locals 2

    .line 667
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->screenshot_saved_title:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 668
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActionsReady$0$GlobalScreenshot$7()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->lambda$onActionsReady$0()V

    return-void
.end method

.method onActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->val$finisher:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 659
    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->uri:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 660
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 661
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->screenshot_failed_to_capture_text:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    goto :goto_0

    .line 664
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 666
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$7$SPzMe6Aypg6ajtouKOBNZnbTV5E;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$7$SPzMe6Aypg6ajtouKOBNZnbTV5E;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$7;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
