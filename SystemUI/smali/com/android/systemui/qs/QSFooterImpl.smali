.class public Lcom/android/systemui/qs/QSFooterImpl;
.super Landroid/widget/FrameLayout;
.source "QSFooterImpl.java"

# interfaces
.implements Lcom/android/systemui/qs/QSFooter;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# instance fields
.field private mActionsContainer:Landroid/view/View;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mDeveloperSettingsObserver:Landroid/database/ContentObserver;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field protected mEdit:Landroid/view/View;

.field protected mEditContainer:Landroid/view/View;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field protected mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mQsDisabled:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field private mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field protected mSettingsContainer:Landroid/view/View;

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 125
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 126
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 127
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/UserInfoController;

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 128
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 125
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/QSFooterImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 1

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    new-instance p1, Lcom/android/systemui/qs/QSFooterImpl$1;

    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/QSFooterImpl$1;-><init>(Lcom/android/systemui/qs/QSFooterImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDeveloperSettingsObserver:Landroid/database/ContentObserver;

    .line 118
    iput-object p3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 119
    iput-object p4, p0, Lcom/android/systemui/qs/QSFooterImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 120
    iput-object p5, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSFooterImpl;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->setBuildText()V

    return-void
.end method

.method private createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 5

    .line 218
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActionsContainer:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 219
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEditContainer:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    .line 220
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    .line 221
    invoke-virtual {v0, p0, v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const p0, 0x3f666666    # 0.9f

    .line 222
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 223
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$onClick$4()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onClick$5()V
    .locals 0

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->startSettingsActivity()V

    return-void
.end method

.method private synthetic lambda$onClick$6()V
    .locals 3

    .line 372
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$p6Eelc3uV5Rv_Va6Mn0QpjivHN4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$p6Eelc3uV5Rv_Va6Mn0QpjivHN4;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->tuner_toast:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 380
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Z)V

    .line 382
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->startSettingsActivity()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$BPGtDaa2eU-tTCTVDpjGrKOXYOs;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$BPGtDaa2eU-tTCTVDpjGrKOXYOs;-><init>(Lcom/android/systemui/qs/QSFooterImpl;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 158
    invoke-direct {p0, p4}, Lcom/android/systemui/qs/QSFooterImpl;->updateAnimator(I)V

    return-void
.end method

.method private synthetic lambda$updateEverything$3()V
    .locals 1

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateVisibilities()V

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateClickabilities()V

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method private setBuildText()V
    .locals 6

    .line 166
    sget v0, Lcom/android/systemui/R$id;->build:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 169
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v1, 0x104019c

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showUserSwitcher()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->isMultiUserEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startSettingsActivity()V
    .locals 2

    .line 392
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateAnimator(I)V
    .locals 8

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result v0

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/QuickQSPanel;->getDefaultMaxTiles()I

    move-result v0

    .line 182
    :goto_0
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_quick_tile_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 184
    div-int/2addr p1, v0

    .line 185
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->default_gear_space:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 187
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsContainer:Landroid/view/View;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    .line 189
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v7

    sub-int/2addr p1, v0

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    :goto_1
    int-to-float p1, p1

    aput p1, v5, v6

    const/4 p1, 0x0

    aput p1, v5, v1

    const-string p1, "translationX"

    .line 188
    invoke-virtual {v2, v3, p1, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    const-string v1, "rotation"

    .line 190
    invoke-virtual {v2, p1, v1, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 191
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 193
    iget p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpansionAmount:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFooterImpl;->setExpansion(F)V

    return-void

    :array_0
    .array-data 4
        -0x3d100000    # -120.0f
        0x0
    .end array-data
.end method

.method private updateClickabilities()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 314
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void
.end method

.method private updateFooterAnimator()V
    .locals 1

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void
.end method

.method private updateListeners()V
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mListening:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private updateResources()V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateFooterAnimator()V

    return-void
.end method

.method private updateVisibilities()V
    .locals 5

    .line 318
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsDisabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsContainer:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->tuner_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 320
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 319
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->showUserSwitcher()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEditContainer:Landroid/view/View;

    if-nez v0, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v3

    :goto_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-nez v0, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-nez p0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 298
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 299
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsDisabled:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    return-void
.end method

.method public synthetic lambda$onClick$5$QSFooterImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->lambda$onClick$5()V

    return-void
.end method

.method public synthetic lambda$onClick$6$QSFooterImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->lambda$onClick$6()V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$QSFooterImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooterImpl;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$QSFooterImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooterImpl;->lambda$onFinishInflate$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$2$QSFooterImpl(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/QSFooterImpl;->lambda$onFinishInflate$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public synthetic lambda$updateEverything$3$QSFooterImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->lambda$updateEverything$3()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 255
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 256
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    .line 257
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDeveloperSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 256
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 356
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-ne p1, v0, :cond_4

    .line 361
    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p1

    if-nez p1, :cond_1

    .line 363
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$ORlOcuwnOcEc1bdhJcTagEFJfI4;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$ORlOcuwnOcEc1bdhJcTagEFJfI4;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 367
    :cond_1
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 368
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x196

    goto :goto_0

    :cond_2
    const/16 v0, 0x1ea

    .line 367
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 370
    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isTunerClick()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 371
    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$QqFCwKmpQEaqoIsbaA3_odDeJWo;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$QqFCwKmpQEaqoIsbaA3_odDeJWo;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 386
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->startSettingsActivity()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->setListening(Z)V

    .line 265
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDeveloperSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 266
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 133
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x1020003

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    .line 135
    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$3QBg0cgvu2IRpUDq3RvpL257x8c;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$3QBg0cgvu2IRpUDq3RvpL257x8c;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    sget v0, Lcom/android/systemui/R$id;->footer_page_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 141
    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 142
    sget v0, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsContainer:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v0, Lcom/android/systemui/R$id;->multi_user_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 146
    sget v1, Lcom/android/systemui/R$id;->multi_user_avatar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 148
    sget v0, Lcom/android/systemui/R$id;->qs_footer_actions_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActionsContainer:Landroid/view/View;

    .line 149
    sget v0, Lcom/android/systemui/R$id;->qs_footer_actions_edit_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEditContainer:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    .line 157
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$GSAG9gEF755NpvH4khVvAa75uPs;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$GSAG9gEF755NpvH4khVvAa75uPs;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 159
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateVisibilities()V

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->setBuildText()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 291
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 292
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 204
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 398
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 399
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isGuestUser(I)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p2, Lcom/android/settingslib/drawable/UserIconDrawable;

    if-nez p1, :cond_0

    .line 401
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 402
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p3, 0x1010030

    .line 403
    invoke-static {p1, p3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 402
    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 406
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/high16 v0, 0x40000

    if-ne p1, v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 282
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    .line 286
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 239
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 1

    .line 245
    iput p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpansionAmount:F

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 248
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_1

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 228
    iget p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpansionAmount:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFooterImpl;->setExpansion(F)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 274
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mListening:Z

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateListeners()V

    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    .line 341
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 344
    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanel;->setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    :cond_0
    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 304
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$FK1In3z-Y3ppRrcllMggnruYa_s;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$FK1In3z-Y3ppRrcllMggnruYa_s;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
