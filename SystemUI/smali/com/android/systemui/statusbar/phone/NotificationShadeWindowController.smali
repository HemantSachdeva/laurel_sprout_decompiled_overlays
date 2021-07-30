.class public Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;
.super Ljava/lang/Object;
.source "NotificationShadeWindowController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$ForcePluginOpenListener;,
        Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$OtherwisedCollapsedListener;,
        Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$ForcePluginOpenListener;

.field private mHasTopUi:Z

.field private mHasTopUiChanged:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardDisplayMode:Landroid/view/Display$Mode;

.field private final mKeyguardScreenRotation:Z

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mListener:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$OtherwisedCollapsedListener;

.field private final mLockScreenDisplayTimeout:J

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mNotificationShadeView:Landroid/view/ViewGroup;

.field private mScreenBrightnessDoze:F

.field private mScrimsVisibilityListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    .line 99
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCallbacks:Ljava/util/ArrayList;

    .line 710
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 113
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mActivityManager:Landroid/app/IActivityManager;

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->shouldEnableKeyguardScreenRotation()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mKeyguardScreenRotation:Z

    .line 115
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 116
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getScreenBrightnessDoze()F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mScreenBrightnessDoze:F

    .line 117
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 118
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 119
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 120
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 121
    const-class p2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p10, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$integer;->config_lockScreenDisplayTimeout:I

    .line 124
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLockScreenDisplayTimeout:J

    .line 125
    check-cast p5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    const/4 p3, 0x1

    .line 126
    invoke-interface {p5, p2, p3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 128
    invoke-interface {p6, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p2

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p3

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/android/systemui/R$integer;->config_keyguardRefreshRate:I

    .line 136
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 138
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationShadeWindowController$eZhKF4qxAkYFnq9gGQ6_QkkGic4;

    invoke-direct {p4, p1, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationShadeWindowController$eZhKF4qxAkYFnq9gGQ6_QkkGic4;-><init>(ILandroid/view/Display$Mode;)V

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display$Mode;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setStatusBarState(I)V

    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 1

    .line 270
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mDozing:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    .line 271
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mKeyguardScreenRotation:Z

    if-eqz p1, :cond_2

    .line 272
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    .line 274
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_1
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 2

    .line 378
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 379
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 380
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 381
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 382
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->applyVisibility(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 383
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 384
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->applyInputFeatures(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 385
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 386
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->applyModalFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 387
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->applyBrightness(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 388
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->applyHasTopUi(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 389
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->applyNotTouchable(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 391
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mNotificationShadeView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mHasTopUi:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mHasTopUiChanged:Z

    if-eq p1, v0, :cond_1

    .line 395
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationShadeWindowController$cWnla7q4SPNKNSlx9hB8mcjvaHk;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationShadeWindowController$cWnla7q4SPNKNSlx9hB8mcjvaHk;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;)V

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->notifyStateChangedCallbacks()V

    return-void
.end method

.method private applyBrightness(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 0

    .line 427
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mForceDozeBrightness:Z

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mScreenBrightnessDoze:F

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 430
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_0
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 1

    .line 337
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mNotificationShadeView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFitsSystemWindows()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 341
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 3

    .line 282
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mNotificationShadeFocusable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 283
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mBouncerShowing:Z

    const v2, -0x20001

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardOccluded:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardNeedsInput:Z

    if-nez v1, :cond_2

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mRemoteInputActive:Z

    if-eqz v1, :cond_3

    .line 285
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    .line 286
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 287
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    .line 296
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    .line 297
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 288
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 290
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardNeedsInput:Z

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 291
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 293
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 300
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-void
.end method

.method private applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 1

    .line 304
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mPanelExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mBouncerShowing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mRemoteInputActive:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x800001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1

    .line 306
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1
    return-void
.end method

.method private applyHasTopUi(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 1

    .line 435
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mForceHasTopUi:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mHasTopUiChanged:Z

    return-void
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 2

    .line 357
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mQsExpanded:Z

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mForceUserActivity:Z

    if-nez p1, :cond_0

    .line 360
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0

    .line 363
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    :goto_0
    return-void
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 5

    .line 240
    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mScrimsVisibility:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 242
    :goto_0
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardShowing:Z

    if-nez v3, :cond_2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mDozing:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 243
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    if-eqz v3, :cond_3

    .line 244
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mBackdropShowing:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_3

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 250
    :goto_3
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mDozing:Z

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_4

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v4, -0x80001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 256
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    if-eqz v0, :cond_8

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mStatusBarState:I

    if-ne v0, v1, :cond_5

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardFadingAway:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardGoingAway:Z

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    .line 260
    :goto_5
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mDozing:Z

    if-nez p1, :cond_7

    if-eqz v1, :cond_6

    goto :goto_6

    .line 263
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    goto :goto_7

    .line 261
    :cond_7
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 265
    :goto_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    int-to-long p0, p0

    const-string v0, "display_mode_id"

    invoke-static {v0, p0, p1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_8
    return-void
.end method

.method private applyModalFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 0

    .line 419
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mHeadsUpShowing:Z

    if-eqz p1, :cond_0

    .line 420
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 422
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyNotTouchable(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 0

    .line 439
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mNotTouchable:Z

    if-eqz p1, :cond_0

    .line 440
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 442
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 1

    .line 369
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 370
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 372
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x1000001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 2

    .line 346
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mQsExpanded:Z

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mBouncerShowing:Z

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x2710

    goto :goto_0

    .line 350
    :cond_0
    iget-wide p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLockScreenDisplayTimeout:J

    :goto_0
    iput-wide p0, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_1

    .line 352
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    :goto_1
    return-void
.end method

.method private applyVisibility(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V
    .locals 1

    .line 313
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)Z

    move-result v0

    .line 314
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mForcePluginOpen:Z

    if-eqz p1, :cond_1

    .line 315
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mListener:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$OtherwisedCollapsedListener;

    if-eqz p1, :cond_0

    .line 316
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$OtherwisedCollapsedListener;->setWouldOtherwiseCollapse(Z)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 321
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mNotificationShadeView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mNotificationShadeView:Landroid/view/ViewGroup;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)Z
    .locals 0

    .line 328
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mForceCollapsed:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mPanelVisible:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardFadingAway:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mBouncerShowing:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mHeadsUpShowing:Z

    if-nez p0, :cond_2

    iget p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mScrimsVisibility:I

    if-nez p0, :cond_2

    :cond_0
    iget p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mBackgroundBlurRadius:I

    if-gtz p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mLaunchingActivity:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$apply$1()V
    .locals 3

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mActivityManager:Landroid/app/IActivityManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mHasTopUiChanged:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationShadeWindowController"

    const-string v2, "Failed to call setHasTopUi"

    .line 399
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mHasTopUiChanged:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mHasTopUi:Z

    return-void
.end method

.method static synthetic lambda$new$0(ILandroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .locals 1

    .line 139
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    if-ne v0, p0, :cond_0

    .line 140
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 141
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setKeyguardDark(Z)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    or-int/lit16 p1, p1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x11

    and-int/lit16 p1, p1, -0x2001

    .line 236
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setStatusBarState(I)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mStatusBarState:I

    .line 536
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 2

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "lockscreen.rot_override"

    const/4 v1, 0x0

    .line 170
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/systemui/R$bool;->config_enableLockScreenRotation:I

    .line 171
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public attach()V
    .locals 7

    .line 181
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f8

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 191
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string v1, "NotificationShade"

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 202
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 203
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    const/4 v2, 0x2

    iput v2, v1, Landroid/view/InsetsFlags;->behavior:I

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->onThemeChanged()V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setKeyguardShowing(Z)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "NotificationShadeWindowController:"

    .line 610
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKeyguardDisplayMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getForceHasTopUi()Z
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mForceHasTopUi:Z

    return p0
.end method

.method public getForcePluginOpen()Z
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mForcePluginOpen:Z

    return p0
.end method

.method public getPanelExpanded()Z
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mPanelExpanded:Z

    return p0
.end method

.method public isShowingWallpaper()Z
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mBackdropShowing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$apply$1$NotificationShadeWindowController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->lambda$apply$1()V

    return-void
.end method

.method public notifyStateChangedCallbacks()V
    .locals 5

    const/4 v0, 0x0

    .line 408
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    if-eqz v1, :cond_0

    .line 411
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardShowing:Z

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardOccluded:Z

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mBouncerShowing:Z

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;->onStateChanged(ZZZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRemoteInputActive(Z)V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mRemoteInputActive:Z

    .line 557
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mNotificationShadeView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    .line 627
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setKeyguardDark(Z)V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackdropShowing(Z)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mBackdropShowing:Z

    .line 479
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setBackgroundBlurRadius(I)V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mBackgroundBlurRadius:I

    if-ne v1, p1, :cond_0

    return-void

    .line 517
    :cond_0
    iput p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mBackgroundBlurRadius:I

    .line 518
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mBouncerShowing:Z

    .line 474
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 224
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mScreenBrightnessDoze:F

    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mDozing:Z

    .line 571
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setForceDozeBrightness(Z)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mForceDozeBrightness:Z

    .line 566
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setForceHasTopUi(Z)V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mForceHasTopUi:Z

    .line 644
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setForcePluginOpen(Z)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mForcePluginOpen:Z

    .line 576
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 577
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$ForcePluginOpenListener;

    if-eqz p0, :cond_0

    .line 578
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$ForcePluginOpenListener;->onChange(Z)V

    :cond_0
    return-void
.end method

.method public setForcePluginOpenListener(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$ForcePluginOpenListener;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$ForcePluginOpenListener;

    return-void
.end method

.method public setForceWindowCollapsed(Z)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mForceCollapsed:Z

    .line 546
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setHeadsUpShowing(Z)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mHeadsUpShowing:Z

    .line 523
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardFadingAway:Z

    .line 484
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardGoingAway:Z

    .line 635
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardNeedsInput:Z

    .line 458
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardOccluded:Z

    .line 453
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mKeyguardShowing:Z

    .line 448
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method setLaunchingActivity(Z)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mLaunchingActivity:Z

    .line 499
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setNotTouchable(Z)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mNotTouchable:Z

    .line 591
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setNotificationShadeFocusable(Z)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mNotificationShadeFocusable:Z

    .line 469
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setNotificationShadeView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mNotificationShadeView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mPanelExpanded:Z

    .line 551
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mPanelVisible:Z

    .line 463
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mNotificationShadeFocusable:Z

    .line 464
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mQsExpanded:Z

    .line 489
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method

.method public setScrimsVisibility(I)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mScrimsVisibility:I

    .line 504
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    .line 505
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public setScrimsVisibilityListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    if-eq v0, p1, :cond_0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    :cond_0
    return-void
.end method

.method public setStateListener(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$OtherwisedCollapsedListener;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mListener:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$OtherwisedCollapsedListener;

    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;->mWallpaperSupportsAmbientMode:Z

    .line 528
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method
