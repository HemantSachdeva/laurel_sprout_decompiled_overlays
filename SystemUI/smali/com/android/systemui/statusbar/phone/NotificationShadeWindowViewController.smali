.class public Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
.super Ljava/lang/Object;
.source "NotificationShadeWindowViewController.java"


# instance fields
.field private mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBrightnessMirror:Landroid/view/View;

.field private final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mDoubleTapEnabled:Z

.field private mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field private mExpandAnimationPending:Z

.field private mExpandAnimationRunning:Z

.field private mExpandingBelowNotch:Z

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsTrackingBarGesture:Z

.field private final mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

.field private mService:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSingleTapEnabled:Z

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private final mStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

.field private mTempLocation:[I

.field private mTempRect:Landroid/graphics/RectF;

.field private mTouchActive:Z

.field private mTouchCancelled:Z

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;)V
    .locals 3

    move-object v0, p0

    move-object/from16 v1, p19

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 106
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTempLocation:[I

    .line 107
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTempRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    .line 108
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    move-object v2, p6

    .line 138
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v2, p8

    .line 140
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    move-object v2, p12

    .line 144
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 148
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-object/from16 v2, p17

    .line 150
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    move-object/from16 v2, p20

    .line 151
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-object/from16 v2, p18

    .line 152
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v2, p21

    .line 153
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    .line 156
    sget v2, Lcom/android/systemui/R$id;->brightness_mirror:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mSingleTapEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/dock/DockManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Landroid/view/GestureDetector;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Landroid/view/View;FF)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->isIntersecting(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDoubleTapEnabled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchCancelled:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchCancelled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationPending:Z

    return p0
.end method

.method private isIntersecting(Landroid/view/View;FF)Z
    .locals 6

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTempLocation:[I

    .line 480
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTempRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTempLocation:[I

    aget v2, v2, v4

    .line 481
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    int-to-float p1, v2

    .line 480
    invoke-virtual {v1, v3, v5, v0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 482
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setupExpandedStatusBar$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 164
    new-instance p2, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    .line 165
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x18e932e4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x3ff919a6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "doze_pulse_on_double_tap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "doze_tap_gesture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, -0x2

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_2

    .line 172
    :cond_3
    invoke-virtual {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapGestureEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mSingleTapEnabled:Z

    goto :goto_2

    .line 168
    :cond_4
    invoke-virtual {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapGestureEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDoubleTapEnabled:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public cancelCurrentTouch()V
    .locals 9

    .line 410
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchActive:Z

    if-eqz v0, :cond_0

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 412
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    .line 414
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 415
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 416
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    .line 417
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchCancelled:Z

    :cond_0
    return-void
.end method

.method public cancelExpandHelper()V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelExpandHelper()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "  mExpandAnimationPending="

    .line 422
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationPending:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mExpandAnimationRunning="

    .line 424
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mTouchCancelled="

    .line 426
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchCancelled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mTouchActive="

    .line 428
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchActive:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object p0
.end method

.method public getView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method

.method public synthetic lambda$setupExpandedStatusBar$0$NotificationShadeWindowViewController(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->lambda$setupExpandedStatusBar$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 475
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    return-void
.end method

.method public setExpandAnimationPending(Z)V
    .locals 1

    .line 433
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationPending:Z

    if-eq v0, p1, :cond_0

    .line 434
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationPending:Z

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    or-int/2addr p0, p1

    .line 436
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setLaunchingActivity(Z)V

    :cond_0
    return-void
.end method

.method public setExpandAnimationRunning(Z)V
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    if-eq v0, p1, :cond_0

    .line 442
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationPending:Z

    or-int/2addr p0, p1

    .line 444
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setLaunchingActivity(Z)V

    :cond_0
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 470
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    return-void
.end method

.method public setStatusBarView(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 3

    .line 459
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    if-eqz v0, :cond_0

    .line 461
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 463
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->getStatusBarWindowView()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$id;->status_bar_container:I

    .line 464
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    :cond_0
    return-void
.end method

.method public setTouchActive(Z)V
    .locals 0

    .line 406
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchActive:Z

    return-void
.end method

.method public setupExpandedStatusBar()V
    .locals 7

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v1, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 163
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationShadeWindowViewController$Glv88-5_kOTqMlucxR_8golqdvI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationShadeWindowViewController$Glv88-5_kOTqMlucxR_8golqdvI;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string v2, "doze_pulse_on_double_tap"

    const-string v3, "doze_tap_gesture"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)V

    .line 201
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->setInteractionEventHandler(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;)V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandHelperCallback()Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v4

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getDragDownCallback()Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    move-result-object v5

    .line 392
    new-instance v0, Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    .line 394
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/DragDownHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;Lcom/android/systemui/plugins/FalsingManager;)V

    .line 392
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setRoot(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V

    return-void
.end method
