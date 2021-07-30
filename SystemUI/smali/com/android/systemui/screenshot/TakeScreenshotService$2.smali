.class Lcom/android/systemui/screenshot/TakeScreenshotService$2;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;Landroid/os/Looper;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$2;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Landroid/os/Messenger;Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 74
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$handleMessage$1(Landroid/os/Messenger;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 81
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 83
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$handleMessage$2(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 72
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 73
    new-instance v8, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$lw7umVWkOvN_7ORxe6g8U2JVo4M;

    invoke-direct {v8, v0}, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$lw7umVWkOvN_7ORxe6g8U2JVo4M;-><init>(Landroid/os/Messenger;)V

    .line 80
    new-instance v9, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$gR0841riU57UiM3DXnP9uiMvS7k;

    invoke-direct {v9, v0}, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$gR0841riU57UiM3DXnP9uiMvS7k;-><init>(Landroid/os/Messenger;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$2;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100(Lcom/android/systemui/screenshot/TakeScreenshotService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    const-string v1, "TakeScreenshotService"

    if-nez v0, :cond_0

    const-string p1, "Skipping screenshot because storage is locked!"

    .line 92
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance p1, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$amml4XPd92h7sVnqzN-RFeKOz-s;

    invoke-direct {p1, v8}, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$amml4XPd92h7sVnqzN-RFeKOz-s;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    invoke-virtual {p0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 98
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;

    .line 101
    iget-object v2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$2;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {v2}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$200(Lcom/android/systemui/screenshot/TakeScreenshotService;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->getSource()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotEvent;->getScreenshotSource(I)Lcom/android/systemui/screenshot/ScreenshotEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 103
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid screenshot option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->getBitmapBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lcom/android/systemui/shared/recents/utilities/BitmapUtil;->bundleToHardwareBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 113
    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v3

    .line 114
    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->getInsets()Landroid/graphics/Insets;

    move-result-object v4

    .line 115
    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->getTaskId()I

    move-result v5

    .line 116
    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->getUserId()I

    move-result v6

    .line 117
    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 118
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$2;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000(Lcom/android/systemui/screenshot/TakeScreenshotService;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v1

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/screenshot/GlobalScreenshot;->handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$2;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000(Lcom/android/systemui/screenshot/TakeScreenshotService;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p0

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$2;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000(Lcom/android/systemui/screenshot/TakeScreenshotService;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p0

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
