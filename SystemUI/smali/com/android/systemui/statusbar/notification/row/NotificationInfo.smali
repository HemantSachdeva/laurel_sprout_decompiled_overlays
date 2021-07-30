.class public Lcom/android/systemui/statusbar/notification/row/NotificationInfo;
.super Landroid/widget/LinearLayout;
.source "NotificationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;
    }
.end annotation


# instance fields
.field private mActualHeight:I

.field private mAppName:Ljava/lang/String;

.field private mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;

.field private mAppUid:I

.field private mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

.field private mChosenImportance:Ljava/lang/Integer;

.field private mDelegatePkg:Ljava/lang/String;

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsDeviceProvisioned:Z

.field private mIsNonblockable:Z

.field private mIsSingleDefaultChannel:Z

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNumUniqueChannelsInRow:I

.field private mOnAlert:Landroid/view/View$OnClickListener;

.field private mOnDismissSettings:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

.field private mOnSilent:Landroid/view/View$OnClickListener;

.field private mPackageName:Ljava/lang/String;

.field private mPkgIcon:Landroid/graphics/drawable/Drawable;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPresentingChannelEditorDialog:Z

.field private mPressedApply:Z

.field private mPriorityDescriptionView:Landroid/widget/TextView;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSilentDescriptionView:Landroid/widget/TextView;

.field private mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field mSkipPost:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mStartingChannelImportance:I

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUniqueChannelsInRow:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private mWasShownHighPriority:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSkipPost:Z

    .line 132
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$-lxdNUTZhRsTq1qLdFuCftTaKsI;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$-lxdNUTZhRsTq1qLdFuCftTaKsI;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnAlert:Landroid/view/View$OnClickListener;

    .line 138
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$x1Q8n0IIdzsrzqhyaxjftYvWg5M;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$x1Q8n0IIdzsrzqhyaxjftYvWg5M;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSilent:Landroid/view/View$OnClickListener;

    .line 144
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$p3qjyEUB89vA_NRs8XRVogtSM4k;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$p3qjyEUB89vA_NRs8XRVogtSM4k;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnDismissSettings:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private applyAlertingBehavior(IZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 437
    new-instance p2, Landroid/transition/TransitionSet;

    invoke-direct {p2}, Landroid/transition/TransitionSet;-><init>()V

    .line 438
    invoke-virtual {p2, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 439
    new-instance v2, Landroid/transition/Fade;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {p2, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    new-instance v3, Landroid/transition/ChangeBounds;

    invoke-direct {v3}, Landroid/transition/ChangeBounds;-><init>()V

    .line 440
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    new-instance v3, Landroid/transition/Fade;

    invoke-direct {v3, v0}, Landroid/transition/Fade;-><init>(I)V

    const-wide/16 v4, 0x96

    .line 443
    invoke-virtual {v3, v4, v5}, Landroid/transition/Fade;->setStartDelay(J)Landroid/transition/Transition;

    move-result-object v3

    const-wide/16 v4, 0xc8

    .line 444
    invoke-virtual {v3, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 445
    invoke-virtual {v3, v4}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v3

    .line 441
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-wide/16 v2, 0x15e

    .line 446
    invoke-virtual {p2, v2, v3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 447
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 448
    invoke-static {p0, p2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 451
    :cond_0
    sget p2, Lcom/android/systemui/R$id;->alert:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 452
    sget v2, Lcom/android/systemui/R$id;->silence:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_1

    .line 465
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$dODWYeWO6slLdAhUkqkR2B6YC2k;

    invoke-direct {v3, p2, v2}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$dODWYeWO6slLdAhUkqkR2B6YC2k;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 474
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized alerting behavior: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 456
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$1cdINfsJSKDrnEWwLGSoTsBT-Kw;

    invoke-direct {v3, p2, v2}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$1cdINfsJSKDrnEWwLGSoTsBT-Kw;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->post(Ljava/lang/Runnable;)Z

    .line 477
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    if-nez p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-eq p2, p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    .line 478
    :goto_2
    sget p1, Lcom/android/systemui/R$id;->done:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 480
    sget p1, Lcom/android/systemui/R$string;->inline_ok_button:I

    goto :goto_3

    .line 481
    :cond_5
    sget p1, Lcom/android/systemui/R$string;->inline_done_button:I

    .line 479
    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private bindChannelDetails()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindName()V

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindGroup()V

    return-void
.end method

.method private bindDelegate()V
    .locals 2

    .line 360
    sget v0, Lcom/android/systemui/R$id;->delegate_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 363
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mDelegatePkg:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 365
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 367
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private bindGroup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 377
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    .line 376
    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 382
    :goto_0
    sget v1, Lcom/android/systemui/R$id;->group_name:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 387
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private bindHeader()V
    .locals 7

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    const v2, 0xc2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 284
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 290
    :cond_0
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->pkg_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    sget v0, Lcom/android/systemui/R$id;->pkg_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindDelegate()V

    .line 297
    sget v0, Lcom/android/systemui/R$id;->app_settings:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 298
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 300
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 298
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 301
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 302
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 303
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$1n0u5clDG1rrcb2QJPV4T7x9OY0;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$1n0u5clDG1rrcb2QJPV4T7x9OY0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 308
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :goto_1
    sget v0, Lcom/android/systemui/R$id;->info:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 313
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getSettingsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private bindInlineControls()V
    .locals 5

    .line 235
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 236
    sget v0, Lcom/android/systemui/R$id;->non_configurable_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    sget v0, Lcom/android/systemui/R$id;->non_configurable_multichannel_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    sget v0, Lcom/android/systemui/R$id;->interruptiveness_settings:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    sget v0, Lcom/android/systemui/R$id;->done:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v4, Lcom/android/systemui/R$string;->inline_done_button:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 240
    sget v0, Lcom/android/systemui/R$id;->turn_off_notifications:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 241
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    if-le v0, v1, :cond_1

    .line 242
    sget v0, Lcom/android/systemui/R$id;->non_configurable_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 243
    sget v0, Lcom/android/systemui/R$id;->interruptiveness_settings:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    sget v0, Lcom/android/systemui/R$id;->non_configurable_multichannel_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->non_configurable_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    sget v0, Lcom/android/systemui/R$id;->non_configurable_multichannel_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    sget v0, Lcom/android/systemui/R$id;->interruptiveness_settings:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->turn_off_notifications:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getTurnOffNotificationsClickListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    if-nez v4, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    sget v0, Lcom/android/systemui/R$id;->done:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 257
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnDismissSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 260
    sget v0, Lcom/android/systemui/R$id;->silence:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 261
    sget v3, Lcom/android/systemui/R$id;->alert:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 262
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSilent:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnAlert:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    xor-int/2addr v0, v1

    .line 268
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->applyAlertingBehavior(IZ)V

    return-void
.end method

.method private bindName()V
    .locals 3

    .line 351
    sget v0, Lcom/android/systemui/R$id;->channel_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 352
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsSingleDefaultChannel:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x8

    .line 353
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 518
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 519
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 520
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10000

    .line 521
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 525
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 529
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    .line 531
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p1, "android.intent.extra.NOTIFICATION_ID"

    .line 533
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.NOTIFICATION_TAG"

    .line 534
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLogMaker()Landroid/metrics/LogMaker;
    .locals 1

    .line 651
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    const/16 v0, 0x655

    if-nez p0, :cond_0

    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSettingsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .line 318
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 320
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$hxpyY8vJ1JgmBKZbtsmY4xt8GSo;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$hxpyY8vJ1JgmBKZbtsmY4xt8GSo;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;I)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTurnOffNotificationsClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 330
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$qmudzW8HIf3NdQ5m_rRVs9-9Xwo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$qmudzW8HIf3NdQ5m_rRVs9-9Xwo;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    return-object v0
.end method

.method private importanceChangeLogMaker()Landroid/metrics/LogMaker;
    .locals 3

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 663
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x123

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x4

    .line 664
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 665
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    sub-int/2addr v0, p0

    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$applyAlertingBehavior$7(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 459
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    const/4 p0, 0x0

    .line 460
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method static synthetic lambda$applyAlertingBehavior$8(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    const/4 p0, 0x1

    .line 469
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$bindHeader$3(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;->onClick(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$getSettingsOnClickListener$4(ILandroid/view/View;)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    .line 322
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 321
    :goto_0
    invoke-interface {v0, p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method private synthetic lambda$getTurnOffNotificationsClickListener$5()V
    .locals 2

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$getTurnOffNotificationsClickListener$6(Landroid/view/View;)V
    .locals 7

    .line 331
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 332
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    .line 334
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mUniqueChannelsInRow:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->prepareDialogForApp(Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;)V

    .line 336
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$qDAhbvIGRRm3TXYceFiIFzSgIH0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$qDAhbvIGRRm3TXYceFiIFzSgIH0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->setOnFinishListener(Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;)V

    .line 340
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->show()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x3

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->applyAlertingBehavior(IZ)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 140
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->applyAlertingBehavior(IZ)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPressedApply:Z

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method private logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    .line 639
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 640
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    .line 639
    invoke-interface {v1, p1, v0, v2, p0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_0
    return-void
.end method

.method private notificationControlsLogMaker()Landroid/metrics/LogMaker;
    .locals 1

    .line 674
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x1

    .line 675
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x0

    .line 676
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method private saveImportance()V
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 394
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->updateImportance()V

    :cond_1
    return-void
.end method

.method private updateImportance()V
    .locals 9

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 405
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_SAVE_IMPORTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->importanceChangeLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 409
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_2

    .line 410
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 411
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 412
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    :cond_2
    move v7, v0

    .line 416
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 417
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    .line 419
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;-><init>(Landroid/app/INotificationManager;Ljava/lang/String;ILandroid/app/NotificationChannel;II)V

    .line 417
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->temporarilyAllowReordering()V

    :cond_4
    return-void
.end method


# virtual methods
.method public bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;Lcom/android/internal/logging/UiEventLogger;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "ZZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 193
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 194
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 195
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 196
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    .line 197
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mUniqueChannelsInRow:Ljava/util/Set;

    .line 198
    invoke-interface {p7}, Ljava/util/Set;->size()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    .line 199
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 201
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;

    .line 202
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 203
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    .line 204
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 205
    invoke-virtual {p6}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    .line 206
    iput-boolean p14, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    .line 207
    iput-boolean p13, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    .line 208
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    .line 209
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mDelegatePkg:Ljava/lang/String;

    .line 210
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsDeviceProvisioned:Z

    .line 211
    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 213
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    const/4 p3, 0x0

    invoke-interface {p1, p5, p2, p3}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p1

    .line 215
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    if-eqz p2, :cond_1

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    .line 219
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 220
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p5, "miscellaneous"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-ne p1, p4, :cond_0

    move p3, p4

    :cond_0
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsSingleDefaultChannel:Z

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindHeader()V

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindChannelDetails()V

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindInlineControls()V

    .line 230
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_OPEN:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V

    .line 231
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    .line 216
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bindNotification requires at least one channel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActualHeight()I
    .locals 0

    .line 579
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mActualHeight:I

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 2

    .line 560
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz p2, :cond_0

    .line 561
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    const/4 v1, 0x0

    .line 563
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->setOnFinishListener(Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;)V

    .line 564
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->close()V

    :cond_0
    if-eqz p1, :cond_1

    .line 570
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->saveImportance()V

    :cond_1
    return v0
.end method

.method public isAnimating()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$bindHeader$3$NotificationInfo(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$bindHeader$3(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getSettingsOnClickListener$4$NotificationInfo(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$getSettingsOnClickListener$4(ILandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getTurnOffNotificationsClickListener$5$NotificationInfo()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$getTurnOffNotificationsClickListener$5()V

    return-void
.end method

.method public synthetic lambda$getTurnOffNotificationsClickListener$6$NotificationInfo(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$getTurnOffNotificationsClickListener$6(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$0$NotificationInfo(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$NotificationInfo(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$2$NotificationInfo(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public needsFalsingProtection()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 157
    sget v0, Lcom/android/systemui/R$id;->alert_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    .line 158
    sget v0, Lcom/android/systemui/R$id;->silence_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    return-void
.end method

.method public onFinishedClosing()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindInlineControls()V

    .line 492
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_CLOSE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 503
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_opened_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_closed_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 584
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 585
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mActualHeight:I

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 427
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSkipPost:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    .line 431
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    .line 550
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPressedApply:Z

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
