.class public Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;
.super Landroid/widget/LinearLayout;
.source "NotificationConversationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;,
        Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSnoozeClickListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSettingsClickListener;
    }
.end annotation


# instance fields
.field private mActualHeight:I

.field private mAppBubble:I

.field private mAppName:Ljava/lang/String;

.field private mAppUid:I

.field private mBgHandler:Landroid/os/Handler;

.field private mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

.field private mBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDescriptionView:Landroid/widget/TextView;

.field private mDelegatePkg:Ljava/lang/String;

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIconFactory:Lcom/android/settingslib/notification/ConversationIconFactory;

.field private mIsDeviceProvisioned:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field private mOnConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;

.field private mOnDefaultClick:Landroid/view/View$OnClickListener;

.field private mOnDone:Landroid/view/View$OnClickListener;

.field private mOnFavoriteClick:Landroid/view/View$OnClickListener;

.field private mOnMuteClick:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSettingsClickListener;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPressedApply:Z

.field private mPriorityDescriptionView:Landroid/widget/TextView;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSelectedAction:I

.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private mSilentDescriptionView:Landroid/widget/TextView;

.field mSkipPost:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUserContext:Landroid/content/Context;

.field private mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 114
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSelectedAction:I

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSkipPost:Z

    .line 153
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$2f29XNzTuIQXwa-IUqXUdjSebnE;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$2f29XNzTuIQXwa-IUqXUdjSebnE;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnFavoriteClick:Landroid/view/View$OnClickListener;

    .line 158
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$MMDb1SDKJPIzmFXTDLDSkJw5h7E;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$MMDb1SDKJPIzmFXTDLDSkJw5h7E;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnDefaultClick:Landroid/view/View$OnClickListener;

    .line 163
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$b1cMFzfzYhzwNF5Nsg_2Oi0i80o;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$b1cMFzfzYhzwNF5Nsg_2Oi0i80o;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnMuteClick:Landroid/view/View$OnClickListener;

    .line 168
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$a2pWq-ojuRPeVF2IYicCGQXQa0w;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$a2pWq-ojuRPeVF2IYicCGQXQa0w;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnDone:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppBubble:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)Lcom/android/systemui/bubbles/BubbleController;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    return-object p0
.end method

.method private bindActions()V
    .locals 6

    .line 285
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppBubble:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 286
    sget v0, Lcom/android/systemui/R$id;->default_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->notification_channel_summary_default_with_bubbles:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppName:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->priority:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnFavoriteClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    sget v0, Lcom/android/systemui/R$id;->default_behavior:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnDefaultClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    sget v0, Lcom/android/systemui/R$id;->silence:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnMuteClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    sget v0, Lcom/android/systemui/R$id;->info:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->getSettingsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->getSelectedAction()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->updateToggleActions(IZ)V

    return-void
.end method

.method private bindConversationDetails()V
    .locals 2

    .line 319
    sget v0, Lcom/android/systemui/R$id;->parent_channel_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 320
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->bindGroup()V

    .line 325
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->bindPackage()V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->bindIcon(Z)V

    return-void
.end method

.method private bindDelegate()V
    .locals 2

    .line 353
    sget v0, Lcom/android/systemui/R$id;->delegate_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 355
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mDelegatePkg:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 357
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 359
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private bindGroup()V
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 370
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppUid:I

    .line 369
    invoke-interface {v0, v2, v3, v4}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 377
    :catch_0
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->group_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 382
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private bindHeader()V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->bindConversationDetails()V

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->bindDelegate()V

    return-void
.end method

.method private bindIcon(Z)V
    .locals 4

    .line 330
    sget v0, Lcom/android/systemui/R$id;->conversation_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 331
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mIconFactory:Lcom/android/settingslib/notification/ConversationIconFactory;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppUid:I

    invoke-virtual {v1, v2, v3, p0, p1}, Lcom/android/settingslib/notification/ConversationIconFactory;->getConversationDrawable(Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private bindPackage()V
    .locals 3

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPackageName:Ljava/lang/String;

    const v2, 0xc2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :catch_0
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->pkg_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getSettingsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .line 309
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppUid:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSettingsClickListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mIsDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 311
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$jd7IzkV9FIzPNu4O1qyUjmumXQA;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$jd7IzkV9FIzPNu4O1qyUjmumXQA;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;I)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getSettingsOnClickListener$4(ILandroid/view/View;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSettingsClickListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-interface {v0, p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x2

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->setSelectedAction(I)V

    .line 155
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSelectedAction:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->updateToggleActions(IZ)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->setSelectedAction(I)V

    .line 160
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSelectedAction:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->updateToggleActions(IZ)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x4

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->setSelectedAction(I)V

    .line 165
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSelectedAction:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->updateToggleActions(IZ)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPressedApply:Z

    .line 171
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSelectedAction:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->shouldShowPriorityOnboarding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->showPriorityOnboarding()V

    .line 174
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic lambda$updateToggleActions$5(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 456
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    const/4 p0, 0x0

    .line 457
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    .line 458
    invoke-virtual {p2, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method static synthetic lambda$updateToggleActions$6(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    .line 468
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    const/4 p0, 0x1

    .line 469
    invoke-virtual {p2, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method static synthetic lambda$updateToggleActions$7(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    const/4 p0, 0x1

    .line 479
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    .line 480
    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private shouldShowPriorityOnboarding()Z
    .locals 2

    .line 521
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mUserContext:Landroid/content/Context;

    const-string v0, "HasUserSeenPriorityOnboarding"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private showPriorityOnboarding()V
    .locals 6

    .line 525
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->priority_onboarding_half_shell:I

    const/4 v2, 0x0

    .line 526
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 530
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 531
    invoke-interface {v3}, Landroid/app/INotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "ConversationGuts"

    const-string v5, "Could not check conversation senders"

    .line 534
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v3, v2

    .line 537
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz v4, :cond_1

    .line 538
    invoke-virtual {v4}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 539
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_bubbles"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 542
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mUserContext:Landroid/content/Context;

    .line 543
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->setContext(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;

    .line 544
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->setView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;

    .line 545
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->setIgnoresDnd(Z)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;

    .line 546
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->setShowsAsBubble(Z)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mIconFactory:Lcom/android/settingslib/notification/ConversationIconFactory;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 547
    invoke-virtual {v0, v1}, Lcom/android/settingslib/notification/ConversationIconFactory;->getBaseIconDrawable(Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mIconFactory:Lcom/android/settingslib/notification/ConversationIconFactory;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 549
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 548
    invoke-virtual {v0, v1, v3}, Lcom/android/settingslib/notification/ConversationIconFactory;->getAppBadge(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->setBadge(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;

    .line 550
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->setOnSettingsClick(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;

    .line 551
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->build()Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;

    move-result-object p0

    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->init()V

    .line 554
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->show()V

    return-void
.end method

.method private updateChannel()V
    .locals 9

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mBgHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppUid:I

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSelectedAction:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;Landroid/app/INotificationManager;Ljava/lang/String;IILandroid/app/NotificationChannel;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->markForUserTriggeredMovement(Z)V

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 516
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$s0tJwNXwV57TLmqR7wIRXxgPwoc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$s0tJwNXwV57TLmqR7wIRXxgPwoc;-><init>(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V

    const-wide/16 v2, 0x168

    .line 515
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateToggleActions(IZ)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 432
    new-instance p2, Landroid/transition/TransitionSet;

    invoke-direct {p2}, Landroid/transition/TransitionSet;-><init>()V

    .line 433
    invoke-virtual {p2, v2}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 434
    new-instance v3, Landroid/transition/Fade;

    invoke-direct {v3, v1}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {p2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v4, Landroid/transition/ChangeBounds;

    invoke-direct {v4}, Landroid/transition/ChangeBounds;-><init>()V

    .line 435
    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v4, Landroid/transition/Fade;

    invoke-direct {v4, v0}, Landroid/transition/Fade;-><init>(I)V

    const-wide/16 v5, 0x96

    .line 438
    invoke-virtual {v4, v5, v6}, Landroid/transition/Fade;->setStartDelay(J)Landroid/transition/Transition;

    move-result-object v4

    const-wide/16 v5, 0xc8

    .line 439
    invoke-virtual {v4, v5, v6}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 440
    invoke-virtual {v4, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v4

    .line 436
    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-wide/16 v3, 0x15e

    .line 441
    invoke-virtual {p2, v3, v4}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 442
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v3}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 443
    invoke-static {p0, p2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 446
    :cond_0
    sget p2, Lcom/android/systemui/R$id;->priority:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 447
    sget v3, Lcom/android/systemui/R$id;->default_behavior:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 448
    sget v4, Lcom/android/systemui/R$id;->silence:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v6, 0x4

    if-ne p1, v6, :cond_1

    .line 463
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mDefaultDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    new-instance v5, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$kfzFL-SnOxGZqEtBbC1UizD6-b0;

    invoke-direct {v5, p2, v3, v4}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$kfzFL-SnOxGZqEtBbC1UizD6-b0;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 485
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized behavior: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSelectedAction:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 452
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mDefaultDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    new-instance v5, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$B9YxfzUwTI8bD0EYToJb0uOXmZg;

    invoke-direct {v5, p2, v3, v4}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$B9YxfzUwTI8bD0EYToJb0uOXmZg;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 474
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mDefaultDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    new-instance v5, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$u26KNDMKK01ES1xNd4IeWex6-38;

    invoke-direct {v5, p2, v3, v4}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$u26KNDMKK01ES1xNd4IeWex6-38;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->post(Ljava/lang/Runnable;)Z

    .line 488
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->getSelectedAction()I

    move-result p2

    if-eq p2, p1, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    move p2, v2

    .line 489
    :goto_1
    sget v3, Lcom/android/systemui/R$id;->done:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz p2, :cond_5

    .line 491
    sget p2, Lcom/android/systemui/R$string;->inline_ok_button:I

    goto :goto_2

    .line 492
    :cond_5
    sget p2, Lcom/android/systemui/R$string;->inline_done_button:I

    .line 490
    :goto_2
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    move v0, v2

    .line 495
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->bindIcon(Z)V

    return-void
.end method


# virtual methods
.method public bindNotification(Landroid/content/pm/ShortcutManager;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ljava/lang/String;Landroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$BubbleMetadata;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSnoozeClickListener;Lcom/android/settingslib/notification/ConversationIconFactory;Landroid/content/Context;Ljavax/inject/Provider;ZLandroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ShortcutManager;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Landroid/app/Notification$BubbleMetadata;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSettingsClickListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSnoozeClickListener;",
            "Lcom/android/settingslib/notification/ConversationIconFactory;",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;",
            ">;Z",
            "Landroid/os/Handler;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p7

    const/4 v2, -0x1

    .line 225
    iput v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSelectedAction:I

    move-object v2, p3

    .line 226
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    move-object v2, p4

    .line 227
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object v2, p5

    .line 228
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPackageName:Ljava/lang/String;

    .line 229
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 230
    invoke-virtual {p7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    move-object v3, p2

    .line 231
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 232
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppName:Ljava/lang/String;

    move-object v3, p9

    .line 233
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSettingsClickListener;

    move-object v3, p6

    .line 234
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 235
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppUid:I

    .line 236
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mDelegatePkg:Ljava/lang/String;

    move/from16 v2, p14

    .line 237
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mIsDeviceProvisioned:Z

    move-object/from16 v2, p17

    .line 239
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;

    move-object/from16 v2, p11

    .line 240
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mIconFactory:Lcom/android/settingslib/notification/ConversationIconFactory;

    move-object/from16 v2, p12

    .line 241
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mUserContext:Landroid/content/Context;

    move-object v2, p8

    .line 242
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    move-object/from16 v2, p18

    .line 243
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    move-object/from16 v2, p13

    .line 244
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v2, p15

    .line 245
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v2, p16

    .line 246
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mBgHandler:Landroid/os/Handler;

    .line 248
    invoke-virtual {p7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 253
    invoke-static {v2, v3, p7, v4}, Lcom/android/systemui/statusbar/notification/NotificationChannelHelper;->createConversationChannelIfNeeded(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 257
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iget v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppUid:I

    invoke-interface {v0, v2, v3}, Landroid/app/INotificationManager;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppBubble:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ConversationGuts"

    const-string v3, "can\'t reach OS"

    .line 259
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    .line 260
    iput v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppBubble:I

    .line 263
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->bindHeader()V

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->bindActions()V

    .line 266
    sget v0, Lcom/android/systemui/R$id;->done:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 267
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mOnDone:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Does not have required information"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActualHeight()I
    .locals 0

    .line 589
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mActualHeight:I

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method getSelectedAction()I
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 500
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/16 v2, -0x3e8

    if-le v0, v2, :cond_0

    const/4 p0, 0x4

    return p0

    .line 503
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 579
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSelectedAction:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->updateChannel()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAnimating()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$getSettingsOnClickListener$4$NotificationConversationInfo(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->lambda$getSettingsOnClickListener$4(ILandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$0$NotificationConversationInfo(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$NotificationConversationInfo(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$2$NotificationConversationInfo(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$3$NotificationConversationInfo(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public needsFalsingProtection()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 398
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 400
    sget v0, Lcom/android/systemui/R$id;->priority_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    .line 401
    sget v0, Lcom/android/systemui/R$id;->default_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mDefaultDescriptionView:Landroid/widget/TextView;

    .line 402
    sget v0, Lcom/android/systemui/R$id;->silence_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    return-void
.end method

.method public onFinishedClosing()V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 417
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_opened_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_closed_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppName:Ljava/lang/String;

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

    .line 594
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 595
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mActualHeight:I

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSkipPost:Z

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    .line 392
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method setSelectedAction(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 199
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSelectedAction:I

    if-ne v0, p1, :cond_0

    return-void

    .line 203
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mSelectedAction:I

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    .line 569
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mPressedApply:Z

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
