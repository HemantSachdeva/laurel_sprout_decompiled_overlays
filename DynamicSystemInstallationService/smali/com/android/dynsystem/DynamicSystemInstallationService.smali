.class public Lcom/android/dynsystem/DynamicSystemInstallationService;
.super Landroid/app/Service;
.source "DynamicSystemInstallationService.java"

# interfaces
.implements Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dynsystem/DynamicSystemInstallationService$IncomingHandler;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_INSTALL:Ljava/lang/String; = "com.android.dynsystem.ACTION_CANCEL_INSTALL"

.field private static final ACTION_DISCARD_INSTALL:Ljava/lang/String; = "com.android.dynsystem.ACTION_DISCARD_INSTALL"

.field private static final ACTION_REBOOT_TO_DYN_SYSTEM:Ljava/lang/String; = "com.android.dynsystem.ACTION_REBOOT_TO_DYN_SYSTEM"

.field private static final ACTION_REBOOT_TO_NORMAL:Ljava/lang/String; = "com.android.dynsystem.ACTION_REBOOT_TO_NORMAL"

.field static final DEFAULT_DSU_SLOT:Ljava/lang/String; = "dsu"

.field private static final DEFAULT_USERDATA_SIZE:J = 0x80000000L

.field static final KEY_DSU_SLOT:Ljava/lang/String; = "KEY_DSU_SLOT"

.field static final KEY_ENABLE_WHEN_COMPLETED:Ljava/lang/String; = "KEY_ENABLE_WHEN_COMPLETED"

.field static final KEY_PUBKEY:Ljava/lang/String; = "KEY_PUBKEY"

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "com.android.dynsystem"

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DynSystemInstallationService"


# instance fields
.field mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPartitionInstalledSize:J

.field private mCurrentPartitionName:Ljava/lang/String;

.field private mCurrentPartitionSize:J

.field private mDynSystem:Landroid/os/image/DynamicSystemManager;

.field private mEnableWhenCompleted:Z

.field private mInstallTask:Lcom/android/dynsystem/InstallationAsyncTask;

.field private mJustCancelledByUser:Z

.field private mKeepNotification:Z

.field final mMessenger:Landroid/os/Messenger;

.field private mNM:Landroid/app/NotificationManager;

.field private mNumInstalledPartitions:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mClients:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/dynsystem/DynamicSystemInstallationService$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/android/dynsystem/DynamicSystemInstallationService$IncomingHandler;-><init>(Lcom/android/dynsystem/DynamicSystemInstallationService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private buildNotification(II)Landroid/app/Notification;
    .locals 1
    .param p1, "status"    # I
    .param p2, "cause"    # I

    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->buildNotification(IILjava/lang/Throwable;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private buildNotification(IILjava/lang/Throwable;)Landroid/app/Notification;
    .locals 12
    .param p1, "status"    # I
    .param p2, "cause"    # I
    .param p3, "detail"    # Ljava/lang/Throwable;

    .line 428
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "com.android.dynsystem"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 429
    const/high16 v1, 0x7f010000

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 430
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 432
    .local v0, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v2, :cond_3

    const/4 v4, 0x0

    if-eq p1, v3, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 471
    const v1, 0x7f020009

    invoke-virtual {p0, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "msgInUse":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 473
    invoke-virtual {v3, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 475
    new-instance v2, Landroid/app/Notification$Action$Builder;

    const v3, 0x7f020007

    .line 476
    invoke-virtual {p0, v3}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 477
    const-string v5, "com.android.dynsystem.ACTION_REBOOT_TO_NORMAL"

    invoke-direct {p0, v5}, Lcom/android/dynsystem/DynamicSystemInstallationService;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 475
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 479
    goto/16 :goto_0

    .line 495
    .end local v1    # "msgInUse":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "status is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_1
    const v1, 0x7f02000b

    invoke-virtual {p0, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "msgCompleted":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 458
    invoke-virtual {v3, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 460
    new-instance v2, Landroid/app/Notification$Action$Builder;

    const v3, 0x7f020005

    .line 461
    invoke-virtual {p0, v3}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 462
    const-string v5, "com.android.dynsystem.ACTION_DISCARD_INSTALL"

    invoke-direct {p0, v5}, Lcom/android/dynsystem/DynamicSystemInstallationService;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 460
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 464
    new-instance v2, Landroid/app/Notification$Action$Builder;

    const v3, 0x7f020006

    .line 465
    invoke-virtual {p0, v3}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 466
    const-string v5, "com.android.dynsystem.ACTION_REBOOT_TO_DYN_SYSTEM"

    invoke-direct {p0, v5}, Lcom/android/dynsystem/DynamicSystemInstallationService;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 464
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 468
    goto :goto_0

    .line 434
    .end local v1    # "msgCompleted":Ljava/lang/String;
    :cond_2
    const v3, 0x7f02000d

    invoke-virtual {p0, v3}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 436
    const/16 v3, 0x400

    .line 437
    .local v3, "max":I
    const/4 v5, 0x0

    .line 439
    .local v5, "progress":I
    iget v6, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mNumInstalledPartitions:I

    add-int/2addr v6, v2

    shr-int v2, v3, v6

    .line 440
    .local v2, "currentMax":I
    mul-int/lit8 v6, v2, 0x2

    sub-int v5, v3, v6

    .line 442
    iget-wide v6, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mCurrentPartitionInstalledSize:J

    const/16 v8, 0x14

    shr-long/2addr v6, v8

    int-to-long v9, v2

    mul-long/2addr v6, v9

    iget-wide v9, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mCurrentPartitionSize:J

    shr-long v8, v9, v8

    const-wide/16 v10, 0x1

    .line 443
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    div-long/2addr v6, v8

    .line 445
    .local v6, "currentProgress":J
    long-to-int v8, v6

    add-int/2addr v5, v8

    .line 447
    invoke-virtual {v0, v3, v5, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 449
    new-instance v1, Landroid/app/Notification$Action$Builder;

    const v8, 0x7f020004

    .line 450
    invoke-virtual {p0, v8}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 451
    const-string v9, "com.android.dynsystem.ACTION_CANCEL_INSTALL"

    invoke-direct {p0, v9}, Lcom/android/dynsystem/DynamicSystemInstallationService;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-direct {v1, v4, v8, v9}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 449
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 453
    goto :goto_0

    .line 482
    .end local v2    # "currentMax":I
    .end local v3    # "max":I
    .end local v5    # "progress":I
    .end local v6    # "currentProgress":J
    :cond_3
    if-eqz p2, :cond_5

    if-eq p2, v3, :cond_5

    .line 483
    instance-of v1, p3, Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;

    if-eqz v1, :cond_4

    .line 484
    const v1, 0x7f02000a

    .line 485
    invoke-virtual {p0, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 487
    :cond_4
    const v1, 0x7f02000c

    invoke-virtual {p0, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 498
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dynsystem/DynamicSystemInstallationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private executeCancelCommand()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mInstallTask:Lcom/android/dynsystem/InstallationAsyncTask;

    const-string v1, "DynSystemInstallationService"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/dynsystem/InstallationAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->stopForeground(Z)V

    .line 306
    iput-boolean v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mJustCancelledByUser:Z

    .line 308
    iget-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mInstallTask:Lcom/android/dynsystem/InstallationAsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/dynsystem/InstallationAsyncTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const-string v0, "Cancel request filed successfully"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_1
    const-string v0, "Trying to cancel installation while it\'s already completed."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 301
    :cond_2
    :goto_1
    const-string v0, "Cancel command triggered, but there is no task running"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method private executeDiscardCommand()V
    .locals 3

    .line 317
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->isInDynamicSystem()Z

    move-result v0

    const-string v1, "DynSystemInstallationService"

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "We are now running in AOT, please reboot to normal system first"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->isDynamicSystemInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getStatus()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 323
    const-string v0, "Trying to discard AOT while there is no complete installation"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .line 327
    :cond_1
    const v0, 0x7f02000e

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 331
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->resetTaskAndStop()V

    .line 332
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/dynsystem/DynamicSystemInstallationService;->postStatus(IILjava/lang/Throwable;)V

    .line 334
    iget-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v0}, Landroid/os/image/DynamicSystemManager;->remove()Z

    .line 335
    return-void
.end method

.method private executeInstallCommand(Landroid/content/Intent;)V
    .locals 21
    .param p1, "intent"    # Landroid/content/Intent;

    .line 258
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->verifyRequest(Landroid/content/Intent;)Z

    move-result v0

    const-string v1, "DynSystemInstallationService"

    if-nez v0, :cond_0

    .line 259
    const-string v0, "Verification failed. Did you use VerificationActivity?"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 263
    :cond_0
    iget-object v0, v11, Lcom/android/dynsystem/DynamicSystemInstallationService;->mInstallTask:Lcom/android/dynsystem/InstallationAsyncTask;

    if-eqz v0, :cond_1

    .line 264
    const-string v0, "There is already an installation task running"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 268
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->isInDynamicSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    const-string v0, "We are already running in DynamicSystem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 273
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v13

    .line 274
    .local v13, "url":Ljava/lang/String;
    const-string v0, "KEY_SYSTEM_SIZE"

    const-wide/16 v1, 0x0

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 275
    .local v14, "systemSize":J
    const-string v0, "KEY_USERDATA_SIZE"

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 276
    .local v3, "userdataSize":J
    const-string v0, "KEY_ENABLE_WHEN_COMPLETED"

    const/4 v10, 0x0

    invoke-virtual {v12, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/dynsystem/DynamicSystemInstallationService;->mEnableWhenCompleted:Z

    .line 277
    const-string v0, "KEY_DSU_SLOT"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "dsuSlot":Ljava/lang/String;
    const-string v5, "KEY_PUBKEY"

    invoke-virtual {v12, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 280
    .local v16, "publicKey":Ljava/lang/String;
    cmp-long v1, v3, v1

    if-nez v1, :cond_3

    .line 281
    const-wide v3, 0x80000000L

    move-wide/from16 v17, v3

    goto :goto_0

    .line 280
    :cond_3
    move-wide/from16 v17, v3

    .line 284
    .end local v3    # "userdataSize":J
    .local v17, "userdataSize":J
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 285
    const-string v0, "dsu"

    move-object/from16 v19, v0

    goto :goto_1

    .line 284
    :cond_4
    move-object/from16 v19, v0

    .line 288
    .end local v0    # "dsuSlot":Ljava/lang/String;
    .local v19, "dsuSlot":Ljava/lang/String;
    :goto_1
    new-instance v9, Lcom/android/dynsystem/InstallationAsyncTask;

    iget-object v8, v11, Lcom/android/dynsystem/DynamicSystemInstallationService;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    move-object v0, v9

    move-object v1, v13

    move-object/from16 v2, v19

    move-object/from16 v3, v16

    move-wide v4, v14

    move-wide/from16 v6, v17

    move-object/from16 v20, v8

    move-object/from16 v8, p0

    move-object v12, v9

    move-object/from16 v9, v20

    move-object/from16 v20, v13

    move v13, v10

    .end local v13    # "url":Ljava/lang/String;
    .local v20, "url":Ljava/lang/String;
    move-object/from16 v10, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/dynsystem/InstallationAsyncTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/content/Context;Landroid/os/image/DynamicSystemManager;Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;)V

    iput-object v12, v11, Lcom/android/dynsystem/DynamicSystemInstallationService;->mInstallTask:Lcom/android/dynsystem/InstallationAsyncTask;

    .line 292
    new-array v0, v13, [Ljava/lang/String;

    invoke-virtual {v12, v0}, Lcom/android/dynsystem/InstallationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 296
    invoke-direct {v11, v1, v13}, Lcom/android/dynsystem/DynamicSystemInstallationService;->buildNotification(II)Landroid/app/Notification;

    move-result-object v1

    .line 295
    invoke-virtual {v11, v0, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->startForeground(ILandroid/app/Notification;)V

    .line 297
    return-void
.end method

.method private executeNotifyIfInUseCommand()V
    .locals 4

    .line 383
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getStatus()I

    move-result v0

    .line 385
    .local v0, "status":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 386
    nop

    .line 387
    invoke-direct {p0, v3, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->buildNotification(II)Landroid/app/Notification;

    move-result-object v1

    .line 386
    invoke-virtual {p0, v2, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 388
    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 389
    nop

    .line 390
    invoke-direct {p0, v3, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->buildNotification(II)Landroid/app/Notification;

    move-result-object v1

    .line 389
    invoke-virtual {p0, v2, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->stopSelf()V

    .line 394
    :goto_0
    return-void
.end method

.method private executeRebootToDynSystemCommand()V
    .locals 4

    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mInstallTask:Lcom/android/dynsystem/InstallationAsyncTask;

    const-string v2, "DynSystemInstallationService"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/dynsystem/InstallationAsyncTask;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mInstallTask:Lcom/android/dynsystem/InstallationAsyncTask;

    invoke-virtual {v1}, Lcom/android/dynsystem/InstallationAsyncTask;->commit()Z

    move-result v0

    goto :goto_0

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->isDynamicSystemInstalled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 343
    iget-object v1, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v1, v3, v3}, Landroid/os/image/DynamicSystemManager;->setEnable(ZZ)Z

    move-result v0

    .line 349
    :goto_0
    if-eqz v0, :cond_2

    .line 350
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 352
    .local v1, "powerManager":Landroid/os/PowerManager;
    if-eqz v1, :cond_1

    .line 353
    const-string v2, "dynsystem"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 355
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    goto :goto_1

    .line 356
    :cond_2
    const-string v1, "Failed to enable DynamicSystem because of native runtime error."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 359
    const v1, 0x7f02000f

    .line 360
    invoke-virtual {p0, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 363
    iget-object v1, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v1}, Landroid/os/image/DynamicSystemManager;->remove()Z

    .line 365
    :goto_1
    return-void

    .line 345
    :cond_3
    const-string v1, "Trying to reboot to AOT while there is no complete installation"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method

.method private executeRebootToNormalCommand()V
    .locals 2

    .line 368
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->isInDynamicSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    const-string v0, "DynSystemInstallationService"

    const-string v1, "It\'s already running in normal system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    .line 375
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 377
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-eqz v0, :cond_1

    .line 378
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 380
    :cond_1
    return-void
.end method

.method private getStatus()I
    .locals 4

    .line 596
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->isInDynamicSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const/4 v0, 0x4

    return v0

    .line 598
    :cond_0
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->isDynamicSystemInstalled()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 599
    return v1

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mInstallTask:Lcom/android/dynsystem/InstallationAsyncTask;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 601
    return v2

    .line 604
    :cond_2
    sget-object v0, Lcom/android/dynsystem/DynamicSystemInstallationService$1;->$SwitchMap$android$os$AsyncTask$Status:[I

    iget-object v3, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mInstallTask:Lcom/android/dynsystem/InstallationAsyncTask;

    invoke-virtual {v3}, Lcom/android/dynsystem/InstallationAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/AsyncTask$Status;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_3

    .line 619
    return v2

    .line 612
    :cond_3
    iget-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mInstallTask:Lcom/android/dynsystem/InstallationAsyncTask;

    invoke-virtual {v0}, Lcom/android/dynsystem/InstallationAsyncTask;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 613
    return v1

    .line 615
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A failed InstallationTask is not reset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_5
    return v3
.end method

.method private isDynamicSystemInstalled()Z
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v0}, Landroid/os/image/DynamicSystemManager;->isInstalled()Z

    move-result v0

    return v0
.end method

.method private isInDynamicSystem()Z
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v0}, Landroid/os/image/DynamicSystemManager;->isInUse()Z

    move-result v0

    return v0
.end method

.method private notifyOneClient(Landroid/os/Messenger;IILjava/lang/Throwable;)V
    .locals 4
    .param p1, "client"    # Landroid/os/Messenger;
    .param p2, "status"    # I
    .param p3, "cause"    # I
    .param p4, "detail"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 584
    .local v0, "bundle":Landroid/os/Bundle;
    iget-wide v1, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mCurrentPartitionInstalledSize:J

    const-string v3, "KEY_INSTALLED_SIZE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 586
    if-eqz p4, :cond_0

    .line 587
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, p4}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v2, "KEY_EXCEPTION_DETAIL"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 591
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2, p2, p3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 593
    return-void
.end method

.method private postStatus(IILjava/lang/Throwable;)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "cause"    # I
    .param p3, "detail"    # Ljava/lang/Throwable;

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mKeepNotification:Z

    .line 512
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    .line 526
    const-string v5, "UNKNOWN"

    .local v5, "statusString":Ljava/lang/String;
    goto :goto_0

    .line 523
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_0
    const-string v5, "IN_USE"

    .line 524
    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 520
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_1
    const-string v5, "READY"

    .line 521
    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 517
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_2
    const-string v5, "IN_PROGRESS"

    .line 518
    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 514
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_3
    const-string v5, "NOT_STARTED"

    .line 515
    .restart local v5    # "statusString":Ljava/lang/String;
    nop

    .line 530
    :goto_0
    if-eq p2, v4, :cond_8

    if-eq p2, v3, :cond_7

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_5

    const/4 v1, 0x6

    if-eq p2, v1, :cond_4

    .line 550
    const-string v1, "CAUSE_NOT_SPECIFIED"

    .local v1, "causeString":Ljava/lang/String;
    goto :goto_1

    .line 546
    .end local v1    # "causeString":Ljava/lang/String;
    :cond_4
    const-string v1, "ERROR_EXCEPTION"

    .line 547
    .restart local v1    # "causeString":Ljava/lang/String;
    iput-boolean v4, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mKeepNotification:Z

    .line 548
    goto :goto_1

    .line 542
    .end local v1    # "causeString":Ljava/lang/String;
    :cond_5
    const-string v1, "ERROR_INVALID_URL"

    .line 543
    .restart local v1    # "causeString":Ljava/lang/String;
    iput-boolean v4, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mKeepNotification:Z

    .line 544
    goto :goto_1

    .line 538
    .end local v1    # "causeString":Ljava/lang/String;
    :cond_6
    const-string v1, "ERROR_IO"

    .line 539
    .restart local v1    # "causeString":Ljava/lang/String;
    iput-boolean v4, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mKeepNotification:Z

    .line 540
    goto :goto_1

    .line 535
    .end local v1    # "causeString":Ljava/lang/String;
    :cond_7
    const-string v1, "INSTALL_CANCELLED"

    .line 536
    .restart local v1    # "causeString":Ljava/lang/String;
    goto :goto_1

    .line 532
    .end local v1    # "causeString":Ljava/lang/String;
    :cond_8
    const-string v1, "INSTALL_COMPLETED"

    .line 533
    .restart local v1    # "causeString":Ljava/lang/String;
    nop

    .line 554
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cause="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", detail="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "DynSystemInstallationService"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v2, 0x1

    .line 558
    .local v2, "notifyOnNotificationBar":Z
    if-ne p1, v4, :cond_9

    if-ne p2, v3, :cond_9

    iget-boolean v3, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mJustCancelledByUser:Z

    if-eqz v3, :cond_9

    .line 562
    const/4 v2, 0x0

    .line 563
    iput-boolean v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mJustCancelledByUser:Z

    .line 566
    :cond_9
    if-eqz v2, :cond_a

    .line 567
    iget-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mNM:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dynsystem/DynamicSystemInstallationService;->buildNotification(IILjava/lang/Throwable;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 570
    :cond_a
    iget-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_b

    .line 572
    :try_start_0
    iget-object v3, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/dynsystem/DynamicSystemInstallationService;->notifyOneClient(Landroid/os/Messenger;IILjava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    goto :goto_3

    .line 573
    :catch_0
    move-exception v3

    .line 574
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 570
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 577
    .end local v0    # "i":I
    :cond_b
    return-void
.end method

.method private prepareNotification()V
    .locals 4

    .line 406
    new-instance v0, Landroid/app/NotificationChannel;

    .line 407
    const v1, 0x7f020008

    invoke-virtual {p0, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.dynsystem"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 410
    .local v0, "chan":Landroid/app/NotificationChannel;
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mNM:Landroid/app/NotificationManager;

    .line 412
    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 415
    :cond_0
    return-void
.end method

.method private resetTaskAndStop()V
    .locals 4

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mInstallTask:Lcom/android/dynsystem/InstallationAsyncTask;

    .line 399
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/dynsystem/-$$Lambda$DynamicSystemInstallationService$wk802_1cWGTaqnS3-zJlFjcZNYA;

    invoke-direct {v1, p0}, Lcom/android/dynsystem/-$$Lambda$DynamicSystemInstallationService$wk802_1cWGTaqnS3-zJlFjcZNYA;-><init>(Lcom/android/dynsystem/DynamicSystemInstallationService;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    return-void
.end method

.method private verifyRequest(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 502
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/dynsystem/VerificationActivity;->isVerified(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 632
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mClients:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 651
    goto :goto_0

    .line 635
    :cond_1
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 637
    .local v0, "client":Landroid/os/Messenger;
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getStatus()I

    move-result v1

    .line 640
    .local v1, "status":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/dynsystem/DynamicSystemInstallationService;->notifyOneClient(Landroid/os/Messenger;IILjava/lang/Throwable;)V

    .line 642
    iget-object v2, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    nop

    .end local v0    # "client":Landroid/os/Messenger;
    .end local v1    # "status":I
    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 648
    .end local v0    # "e":Landroid/os/RemoteException;
    nop

    .line 655
    :goto_0
    return-void
.end method

.method public synthetic lambda$resetTaskAndStop$0$DynamicSystemInstallationService()V
    .locals 1

    .line 400
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->stopForeground(I)V

    .line 401
    invoke-virtual {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->stopSelf()V

    .line 402
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 186
    iget-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 152
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 154
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->prepareNotification()V

    .line 156
    const-string v0, "dynamic_system"

    invoke-virtual {p0, v0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/image/DynamicSystemManager;

    iput-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    .line 163
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "httpCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v0, "httpCacheDir":Ljava/io/File;
    const-wide/32 v1, 0x100000

    .line 165
    .local v1, "httpCacheSize":J
    invoke-static {v0, v1, v2}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    nop

    .end local v0    # "httpCacheDir":Ljava/io/File;
    .end local v1    # "httpCacheSize":J
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpResponseCache.install() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynSystemInstallationService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 173
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    .line 174
    .local v0, "cache":Landroid/net/http/HttpResponseCache;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/net/http/HttpResponseCache;->flush()V

    .line 178
    :cond_0
    iget-boolean v1, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mKeepNotification:Z

    if-nez v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mNM:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 182
    :cond_1
    return-void
.end method

.method public onProgressUpdate(Lcom/android/dynsystem/InstallationAsyncTask$Progress;)V
    .locals 3
    .param p1, "progress"    # Lcom/android/dynsystem/InstallationAsyncTask$Progress;

    .line 214
    iget-object v0, p1, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->mPartitionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mCurrentPartitionName:Ljava/lang/String;

    .line 215
    iget-wide v0, p1, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->mPartitionSize:J

    iput-wide v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mCurrentPartitionSize:J

    .line 216
    iget-wide v0, p1, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->mInstalledSize:J

    iput-wide v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mCurrentPartitionInstalledSize:J

    .line 217
    iget v0, p1, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->mNumInstalledPartitions:I

    iput v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mNumInstalledPartitions:I

    .line 219
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/dynsystem/DynamicSystemInstallationService;->postStatus(IILjava/lang/Throwable;)V

    .line 220
    return-void
.end method

.method public onResult(ILjava/lang/Throwable;)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "detail"    # Ljava/lang/Throwable;

    .line 224
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 225
    invoke-direct {p0, v1, v2, v0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->postStatus(IILjava/lang/Throwable;)V

    .line 228
    iget-boolean v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService;->mEnableWhenCompleted:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->executeRebootToDynSystemCommand()V

    .line 231
    :cond_0
    return-void

    .line 234
    :cond_1
    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 249
    :cond_2
    invoke-direct {p0, v2, v0, p2}, Lcom/android/dynsystem/DynamicSystemInstallationService;->postStatus(IILjava/lang/Throwable;)V

    goto :goto_0

    .line 245
    :cond_3
    invoke-direct {p0, v2, v0, p2}, Lcom/android/dynsystem/DynamicSystemInstallationService;->postStatus(IILjava/lang/Throwable;)V

    .line 246
    goto :goto_0

    .line 240
    :cond_4
    invoke-direct {p0, v2, v1, p2}, Lcom/android/dynsystem/DynamicSystemInstallationService;->postStatus(IILjava/lang/Throwable;)V

    .line 241
    goto :goto_0

    .line 236
    :cond_5
    invoke-direct {p0, v2, v3, v0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->postStatus(IILjava/lang/Throwable;)V

    .line 237
    nop

    .line 254
    :goto_0
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->resetTaskAndStop()V

    .line 255
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 191
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand(): action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynSystemInstallationService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "android.os.image.action.START_INSTALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-direct {p0, p1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->executeInstallCommand(Landroid/content/Intent;)V

    goto :goto_0

    .line 197
    :cond_0
    const-string v1, "com.android.dynsystem.ACTION_CANCEL_INSTALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->executeCancelCommand()V

    goto :goto_0

    .line 199
    :cond_1
    const-string v1, "com.android.dynsystem.ACTION_DISCARD_INSTALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->executeDiscardCommand()V

    goto :goto_0

    .line 201
    :cond_2
    const-string v1, "com.android.dynsystem.ACTION_REBOOT_TO_DYN_SYSTEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->executeRebootToDynSystemCommand()V

    goto :goto_0

    .line 203
    :cond_3
    const-string v1, "com.android.dynsystem.ACTION_REBOOT_TO_NORMAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->executeRebootToNormalCommand()V

    goto :goto_0

    .line 205
    :cond_4
    const-string v1, "android.os.image.action.NOTIFY_IF_IN_USE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 206
    invoke-direct {p0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->executeNotifyIfInUseCommand()V

    .line 209
    :cond_5
    :goto_0
    const/4 v1, 0x2

    return v1
.end method
