.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "SaveImageInBackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageTime:J

.field private final mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

.field private final mRandom:Ljava/util/Random;

.field private final mScreenshotId:Ljava/lang/String;

.field private final mSmartActionsEnabled:Z

.field private final mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;)V
    .locals 3

    .line 93
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 91
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRandom:Ljava/util/Random;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    .line 98
    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 100
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd-HHmmss"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "Screenshot_%s.png"

    .line 101
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    .line 102
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    aput-object v1, p2, v2

    const-string v1, "Screenshot_%s"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    const-string p2, "systemui"

    const-string v1, "enable_screenshot_notification_smart_actions"

    .line 105
    invoke-static {p2, v1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    if-eqz p2, :cond_0

    .line 109
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p2

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 110
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/SystemUIFactory;->createScreenshotNotificationSmartActionsProvider(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    goto :goto_0

    .line 114
    :cond_0
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    invoke-direct {p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    :goto_0
    return-void
.end method

.method private static addIntentExtras(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "android:screenshot_action_type"

    .line 424
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android:screenshot_id"

    .line 425
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android:smart_actions_enabled"

    .line 426
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private buildSmartActions(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 403
    invoke-virtual {v1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "action_type"

    const-string v4, "Smart Action"

    .line 404
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/systemui/screenshot/GlobalScreenshot$SmartActionsReceiver;

    invoke-direct {v4, p2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const-string v6, "android:screenshot_action_intent"

    .line 408
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    .line 409
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 410
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    invoke-static {v5, v4, v3, v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->addIntentExtras(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 411
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRandom:Ljava/util/Random;

    .line 412
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const/high16 v5, 0x14000000

    .line 411
    invoke-static {p2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 415
    new-instance v4, Landroid/app/Notification$Action$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget-object v1, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {v4, v5, v1, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v1, 0x1

    .line 416
    invoke-virtual {v4, v1}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 415
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getUserHandle(Landroid/content/Context;)Landroid/os/UserHandle;
    .locals 1

    .line 393
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 394
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getUserHandleOfForegroundApplication(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method private getUserHandleOfForegroundApplication(Landroid/content/Context;)I
    .locals 2

    .line 385
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->getLastResumedActivityUserId()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SaveImageInBackgroundTask"

    const-string v1, "getUserHandleOfForegroundApplication: "

    .line 387
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p0

    return p0
.end method


# virtual methods
.method createDeleteAction(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;)Landroid/app/Notification$Action;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 364
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/systemui/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "android:screenshot_uri_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    const-string v2, "android:screenshot_id"

    .line 367
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    iget-boolean p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    const-string v1, "android:smart_actions_enabled"

    .line 368
    invoke-virtual {p3, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const/high16 p3, 0x10000000

    .line 370
    invoke-virtual {p0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    const/high16 p3, 0x54000000

    .line 364
    invoke-static {p1, v0, p0, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 374
    new-instance p1, Landroid/app/Notification$Action$Builder;

    sget p3, Lcom/android/systemui/R$drawable;->ic_screenshot_delete:I

    .line 375
    invoke-static {p2, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    const v0, 0x10402ac

    .line 376
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 378
    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method createEditAction(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;)Landroid/app/Notification$Action;
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 319
    sget v0, Lcom/android/systemui/R$string;->config_screenshotEditor:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.EDIT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    const-string v0, "image/png"

    .line 324
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {v7, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p3, 0x1

    .line 326
    invoke-virtual {v7, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 327
    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v0, 0x10008000

    .line 328
    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    .line 330
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 338
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionProxyReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android:screenshot_action_intent"

    .line 340
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 342
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-string v2, "android:screenshot_cancel_notification"

    .line 341
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p3

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    const-string v2, "android:screenshot_id"

    .line 343
    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    iget-boolean p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    const-string v0, "android:smart_actions_enabled"

    .line 344
    invoke-virtual {p3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    .line 346
    invoke-virtual {p0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p3, 0x10000000

    .line 347
    invoke-virtual {p0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    const/high16 p3, 0x14000000

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 338
    invoke-static {p1, v1, p0, p3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 350
    new-instance p1, Landroid/app/Notification$Action$Builder;

    sget p3, Lcom/android/systemui/R$drawable;->ic_screenshot_edit:I

    .line 351
    invoke-static {p2, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    const v0, 0x1040729

    .line 352
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 354
    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method createShareAction(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;)Landroid/app/Notification$Action;
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 259
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Screenshot (%s)"

    .line 260
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "image/png"

    .line 262
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    .line 263
    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 266
    new-instance v4, Landroid/content/ClipData;

    new-instance v5, Landroid/content/ClipDescription;

    const-string v6, "text/plain"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "content"

    invoke-direct {v5, v7, v6}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, p3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v4, v5, v6}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 269
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const-string p3, "android.intent.extra.SUBJECT"

    .line 270
    invoke-virtual {v2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p3

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/systemui/screenshot/GlobalScreenshot$TargetChosenReceiver;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x50000000

    invoke-static {p1, p3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x10008000

    .line 282
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 286
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/high16 v7, 0x14000000

    const/4 v8, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 292
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionProxyReceiver;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android:screenshot_action_intent"

    .line 294
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android:screenshot_disallow_enter_pip"

    .line 295
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    const-string v2, "android:screenshot_id"

    .line 296
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    const-string v1, "android:smart_actions_enabled"

    .line 297
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    .line 299
    invoke-virtual {p0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x10000000

    .line 300
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/high16 v1, 0x14000000

    .line 292
    invoke-static {p1, p3, p0, v1, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 304
    new-instance p1, Landroid/app/Notification$Action$Builder;

    sget p3, Lcom/android/systemui/R$drawable;->ic_screenshot_share:I

    .line 305
    invoke-static {p2, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    const v0, 0x1040751

    .line 306
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 308
    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    const-string p1, "is_pending"

    const-string v0, "date_expires"

    .line 120
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 123
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 125
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 126
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    iget-object v3, v3, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 127
    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "relative_path"

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Environment;->DIRECTORY_SCREENSHOTS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_display_name"

    .line 134
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mime_type"

    const-string v5, "image/png"

    .line 135
    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "date_added"

    .line 136
    iget-wide v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "date_modified"

    .line 137
    iget-wide v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 138
    iget-wide v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    const-wide/32 v11, 0x5265c00

    add-long/2addr v4, v11

    div-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v4, 0x1

    .line 139
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 143
    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    iget-boolean v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 146
    invoke-direct {p0, v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getUserHandle(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v9

    move-object v5, v11

    move-object v6, v3

    .line 144
    invoke-static/range {v4 .. v9}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->getSmartActionsFuture(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;ZLandroid/os/UserHandle;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    :try_start_1
    invoke-virtual {v1, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    :try_start_2
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v3, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_6

    if-eqz v5, :cond_1

    .line 154
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_1
    const-string v5, "rw"

    .line 157
    invoke-virtual {v1, v11, v5, v2}, Landroid/content/ContentResolver;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 158
    :try_start_4
    new-instance v6, Landroid/media/ExifInterface;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    const-string v7, "Software"

    .line 160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Android "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "ImageWidth"

    .line 164
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 163
    invoke-virtual {v6, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "ImageLength"

    .line 166
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v6, v7, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-wide v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 169
    invoke-static {v7, v8}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v7

    .line 168
    invoke-static {v3, v7}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    const-string v7, "DateTimeOriginal"

    const-string v8, "yyyy:MM:dd HH:mm:ss"

    .line 171
    invoke-static {v8}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v8

    .line 170
    invoke-virtual {v6, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "SubSecTimeOriginal"

    const-string v8, "SSS"

    .line 173
    invoke-static {v8}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v8

    .line 172
    invoke-virtual {v6, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v7

    sget-object v8, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v8, "OffsetTimeOriginal"

    if-eqz v7, :cond_2

    :try_start_5
    const-string v3, "+00:00"

    .line 176
    invoke-virtual {v6, v8, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "XXX"

    .line 179
    invoke-static {v7}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v6, v8, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    invoke-virtual {v6}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_3

    .line 183
    :try_start_6
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 186
    :cond_3
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    const/4 v3, 0x0

    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1, v11, v10, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 195
    :try_start_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    if-eqz v0, :cond_4

    const-string v0, "systemui"

    const-string v1, "screenshot_notification_smart_actions_timeout_ms"

    const/16 v5, 0x3e8

    .line 197
    invoke-static {v0, v1, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    .line 202
    invoke-static {v1, v4, v0, v5}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->getSmartActions(Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;ILcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 201
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->buildSmartActions(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    iput-object v11, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->uri:Landroid/net/Uri;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    iput-object p1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->smartActions:Ljava/util/List;

    .line 210
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v11}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->createShareAction(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;)Landroid/app/Notification$Action;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->shareAction:Landroid/app/Notification$Action;

    .line 211
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v11}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->createEditAction(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;)Landroid/app/Notification$Action;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    .line 212
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v11}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->createDeleteAction(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;)Landroid/app/Notification$Action;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->deleteAction:Landroid/app/Notification$Action;

    .line 214
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;->onActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    .line 215
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->uri:Landroid/net/Uri;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 216
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    iput-object v2, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 217
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    iput v3, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->errorMsgResId:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_0
    move-exception p1

    if-eqz v5, :cond_5

    .line 157
    :try_start_8
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 152
    :cond_6
    :try_start_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to compress"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v5, :cond_7

    .line 150
    :try_start_b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p1

    .line 191
    :try_start_d
    invoke-virtual {v1, v11, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 192
    throw p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :catch_1
    move-exception p1

    const-string v0, "SaveImageInBackgroundTask"

    const-string v1, "unable to save screenshot"

    .line 221
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->clearImage()V

    .line 223
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    sget v0, Lcom/android/systemui/R$string;->screenshot_failed_to_save_text:I

    iput v0, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->errorMsgResId:I

    .line 224
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->reset()V

    .line 225
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;->onActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    .line 226
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    invoke-interface {p0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_3
    return-object v2
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1

    .line 245
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->reset()V

    .line 246
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;->onActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    .line 247
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 248
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->clearImage()V

    return-void
.end method

.method setActionsReadyListener(Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;

    return-void
.end method
