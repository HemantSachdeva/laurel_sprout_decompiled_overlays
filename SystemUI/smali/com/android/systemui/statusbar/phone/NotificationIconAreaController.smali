.class public Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# instance fields
.field private mAnimationsEnabled:Z

.field private mAodIconAppearTranslation:I

.field private mAodIconTint:I

.field private mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mAodIconsVisible:Z

.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field protected mCenteredIconArea:Landroid/view/View;

.field private mCenteredIconTint:I

.field private mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mContext:Landroid/content/Context;

.field private final mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mIconHPadding:I

.field private mIconSize:I

.field private mIconTint:I

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field protected mNotificationIconArea:Landroid/view/View;

.field private mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mNotificationScrollLayout:Landroid/view/ViewGroup;

.field final mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShowLowPriority:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mTintArea:Landroid/graphics/Rect;

.field private final mUpdateStatusBarIcons:Ljava/lang/Runnable;

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationListener;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 64
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    .line 108
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 109
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 112
    invoke-interface {p3, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 113
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 114
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 115
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 116
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 117
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 118
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 119
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    invoke-virtual {p7, p2}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationSettingsListener(Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;)V

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadAodColor()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)Landroid/view/ViewGroup;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private animateInAodIconTranslation()V
    .locals 2

    .line 589
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 590
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 591
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 592
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 593
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private applyNotificationIconsTint()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 491
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 493
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_1

    .line 496
    :cond_0
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$kEHcYKNlJqRNuom7zI__dD3YiUQ;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$kEHcYKNlJqRNuom7zI__dD3YiUQ;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 501
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 502
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_3

    .line 505
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$DNX7QrLi_n7I734CPybT_ZrNpwI;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$DNX7QrLi_n7I734CPybT_ZrNpwI;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 509
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconColors()V

    return-void
.end method

.method private generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 191
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private synthetic lambda$applyNotificationIconsTint$4(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 496
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method private synthetic lambda$applyNotificationIconsTint$5(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 505
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method private synthetic lambda$updateAodIconColors$6(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 606
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method static synthetic lambda$updateAodNotificationIcons$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getAodIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateCenterIcon$2(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getCenteredIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateShelfIcons$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateStatusBarIcons$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method private reloadAodColor()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconTint:I

    return-void
.end method

.method private reloadDimens(Landroid/content/Context;)V
    .locals 1

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x105024b

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    .line 198
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_icon_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    .line 199
    sget v0, Lcom/android/systemui/R$dimen;->shelf_appear_translation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconAppearTranslation:I

    return-void
.end method

.method private updateAnimations()V
    .locals 5

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 562
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 563
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 564
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    return-void
.end method

.method private updateAodIconColors()V
    .locals 3

    const/4 v0, 0x0

    .line 601
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 603
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_1

    .line 606
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$PUTDTipRCmrDLS4VQZByqHC4HFA;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$PUTDTipRCmrDLS4VQZByqHC4HFA;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAodIconsVisibility(Z)V
    .locals 4

    .line 632
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 633
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 634
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-eq v3, v1, :cond_2

    move v0, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 637
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->isPulseExpanding()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 640
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconsVisible:Z

    if-eq v3, v0, :cond_9

    .line 641
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconsVisible:Z

    .line 642
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    .line 644
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 645
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconsVisible:Z

    if-eqz p1, :cond_6

    if-eqz v1, :cond_5

    .line 648
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 649
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->appearAodIcons()V

    goto :goto_4

    .line 653
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->animateInAodIconTranslation()V

    .line 655
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;)V

    goto :goto_4

    .line 659
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->animateInAodIconTranslation()V

    .line 660
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;)V

    goto :goto_4

    .line 663
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 664
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 665
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x4

    :goto_3
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method private updateCenterIcon()V
    .locals 11

    .line 341
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$S6CJ2tXrA2ieNVmUpwBa8v9eeEY;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$S6CJ2tXrA2ieNVmUpwBa8v9eeEY;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method

.method private updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer;",
            "ZZZZZZZZ)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    .line 384
    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    .line 385
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x0

    move v14, v13

    .line 388
    :goto_0
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v14, v0, :cond_2

    .line 389
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 390
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 391
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 392
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p1

    .line 395
    invoke-interface {v0, v15}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_1

    .line 397
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object/from16 v0, p1

    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 407
    :cond_2
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v13

    .line 409
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_a

    .line 410
    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 411
    instance-of v5, v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v5, :cond_3

    goto :goto_6

    .line 414
    :cond_3
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 416
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 417
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    move v6, v13

    move v7, v6

    .line 418
    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 419
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 420
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 421
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v7, :cond_4

    move v7, v4

    goto :goto_4

    :cond_4
    move v7, v13

    goto :goto_5

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    if-eqz v7, :cond_8

    .line 431
    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_7

    .line 433
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 434
    invoke-virtual {v0, v5, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_7
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 442
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 444
    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 445
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v4, :cond_b

    .line 446
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 449
    :cond_c
    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 450
    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    .line 452
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v13

    :goto_8
    if-ge v2, v0, :cond_d

    .line 454
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v11, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 457
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    move v1, v13

    .line 458
    :goto_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 459
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 461
    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->removeTransientView(Landroid/view/View;)V

    .line 462
    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_f

    if-eqz p5, :cond_e

    .line 464
    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnDismissListener(Ljava/lang/Runnable;)V

    .line 466
    :cond_e
    invoke-virtual {v11, v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 470
    :cond_10
    invoke-virtual {v11, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    move v1, v13

    :goto_a
    if-ge v1, v0, :cond_12

    .line 474
    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 475
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v2, v3, :cond_11

    goto :goto_b

    .line 479
    :cond_11
    invoke-virtual {v11, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 480
    invoke-virtual {v11, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 482
    :cond_12
    invoke-virtual {v11, v13}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    const/4 v0, 0x0

    .line 483
    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method private updateShelfIcons()V
    .locals 11

    .line 317
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$afpYK1wAP1i0HTFHOa1jb1wzzAQ;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$afpYK1wAP1i0HTFHOa1jb1wzzAQ;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method

.method private updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 2

    .line 513
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Lcom/android/systemui/R$id;->icon_is_pre_L:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 517
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 519
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 520
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method


# virtual methods
.method public appearAodIcons()V
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconAppearTranslation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 576
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->animateInAodIconTranslation()V

    .line 577
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 578
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 579
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 580
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 581
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 584
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public getCenteredNotificationAreaView()Landroid/view/View;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    return-object p0
.end method

.method protected getHeight()I
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result p0

    return p0
.end method

.method public getNotificationInnerAreaView()Landroid/view/View;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    return-object p0
.end method

.method protected inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 126
    sget p0, Lcom/android/systemui/R$layout;->notification_icon_area:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public initAodIcons()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 150
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 151
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 153
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$id;->clock_notification_icon_container:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 155
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOnLockScreen(Z)V

    .line 156
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    :cond_2
    return-void
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;)V
    .locals 2

    .line 133
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 135
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 137
    sget v1, Lcom/android/systemui/R$id;->notificationIcons:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    .line 141
    sget v0, Lcom/android/systemui/R$layout;->center_icon_area:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    .line 142
    sget v0, Lcom/android/systemui/R$id;->centeredIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initAodIcons()V

    return-void
.end method

.method public synthetic lambda$applyNotificationIconsTint$4$NotificationIconAreaController(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$applyNotificationIconsTint$4(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method

.method public synthetic lambda$applyNotificationIconsTint$5$NotificationIconAreaController(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$applyNotificationIconsTint$5(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method

.method public synthetic lambda$updateAodIconColors$6$NotificationIconAreaController(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$updateAodIconColors$6(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    if-nez p1, :cond_0

    .line 226
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 228
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 231
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 232
    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 233
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    goto :goto_1

    .line 236
    :cond_1
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 239
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 240
    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 241
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    goto :goto_2

    .line 244
    :cond_3
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    .line 247
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 3

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 173
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 175
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 177
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 179
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 181
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 183
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 185
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 545
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 546
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDozing(ZZJ)V

    return-void
.end method

.method public onFullyHiddenChanged(Z)V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v1, p1

    .line 620
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    .line 621
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    return-void
.end method

.method public onPulseExpansionChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 627
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    const/4 p1, 0x0

    .line 556
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    .line 557
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 568
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadAodColor()V

    .line 569
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconColors()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 550
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    .line 551
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    return-void
.end method

.method public setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsolatedIconLocation(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 1

    .line 164
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    return-void
.end method

.method shouldShouldLowPriorityIcons()Z
    .locals 0

    .line 366
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    return p0
.end method

.method protected shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZZZ)Z
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getCenteredIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getCenteredIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p9, :cond_1

    return v0

    :cond_1
    if-eqz p7, :cond_2

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowHeadsUp()Z

    move-result p7

    if-nez p7, :cond_2

    return v2

    .line 268
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p7

    invoke-virtual {p7}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result p7

    if-eqz p7, :cond_3

    if-nez p2, :cond_3

    return v2

    :cond_3
    if-eqz p6, :cond_4

    .line 271
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p6

    iget-object p7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p7}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_4

    return v2

    :cond_4
    if-nez p3, :cond_5

    .line 274
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result p3

    const/4 p6, 0x3

    if-ge p3, p6, :cond_5

    return v2

    .line 277
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopLevelChild()Z

    move-result p3

    if-nez p3, :cond_6

    return v2

    .line 280
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p3

    const/16 p6, 0x8

    if-ne p3, p6, :cond_7

    return v2

    .line 283
    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result p3

    if-eqz p3, :cond_8

    if-eqz p4, :cond_8

    return v2

    :cond_8
    if-eqz p5, :cond_9

    .line 286
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isLastMessageFromReply()Z

    move-result p3

    if-eqz p3, :cond_9

    return v2

    :cond_9
    if-nez p2, :cond_a

    .line 290
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressStatusBar()Z

    move-result p2

    if-eqz p2, :cond_a

    return v2

    :cond_a
    if-eqz p8, :cond_c

    .line 293
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showingPulsing()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 294
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 295
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPulseSuppressed()Z

    move-result p2

    if-nez p2, :cond_c

    :cond_b
    return v2

    .line 298
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->isBubbleExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_d

    return v2

    :cond_d
    return v1
.end method

.method public showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    return-void
.end method

.method public updateAodNotificationIcons()V
    .locals 11

    .line 353
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$b7MkWJaTAeTosmR_aU3q7JZNLpI;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$b7MkWJaTAeTosmR_aU3q7JZNLpI;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 360
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    .line 353
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method

.method public updateNotificationIcons()V
    .locals 0

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    .line 309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateShelfIcons()V

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateCenterIcon()V

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    .line 313
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method

.method public updateStatusBarIcons()V
    .locals 11

    .line 329
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$ujxUr-qwlryo8PHBzga56kRshsA;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$ujxUr-qwlryo8PHBzga56kRshsA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method
