.class Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;)V
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 978
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/ScreenshotHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 979
    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v6

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 978
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 980
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const/16 v1, 0x502

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 981
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_SCREENSHOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
