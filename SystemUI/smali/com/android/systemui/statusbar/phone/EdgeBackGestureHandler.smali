.class public Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/shared/tracing/ProtoTraceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/settings/CurrentUserTracker;",
        "Landroid/hardware/display/DisplayManager$DisplayListener;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;",
        ">;",
        "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
        "Lcom/android/systemui/tracing/nano/SystemUiTraceProto;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_LONG_PRESS_TIMEOUT:I


# instance fields
.field private mAllowGesture:Z

.field private final mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

.field private mBottomGestureHeight:F

.field private final mContext:Landroid/content/Context;

.field private mDisabledForQuickstep:Z

.field private final mDisplayId:I

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDownPoint:Landroid/graphics/PointF;

.field private mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

.field private mEdgeWidthLeft:I

.field private mEdgeWidthRight:I

.field private final mEndPoint:Landroid/graphics/PointF;

.field private final mExcludeRegion:Landroid/graphics/Region;

.field private final mGestureBlockingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureBlockingActivityRunning:Z

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field private mInRejectedExclusion:Z

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsBackGestureAllowed:Z

.field private mIsEnabled:Z

.field private mIsGesturalModeEnabled:Z

.field private mIsNavBarShownTransiently:Z

.field private mIsOnLeftEdge:Z

.field private mLeftInset:I

.field private mLogGesture:Z

.field private final mLongPressTimeout:I

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private mRightInset:I

.field private mStartingQuickstepRotation:I

.field private final mStateChangeCallback:Ljava/lang/Runnable;

.field private mSysUiFlags:I

.field private mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mThresholdCrossed:Z

.field private mTouchSlop:F

.field private final mUnrestrictedExcludeRegion:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gestures.back_timeout"

    const/16 v1, 0xfa

    .line 88
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "EdgeBackGestureHandler"

    .line 203
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p0, v1}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 91
    new-instance v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 106
    new-instance v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 115
    new-instance v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    .line 130
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 135
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    .line 136
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    const/4 v1, -0x1

    .line 148
    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    .line 153
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 154
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    .line 155
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 178
    new-instance v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 204
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 207
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 208
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 209
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStateChangeCallback:Ljava/lang/Runnable;

    const p2, 0x1040245

    .line 211
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 210
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 213
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 216
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string p4, "gesture_blocking_activities"

    const-string p5, "array"

    .line 217
    invoke-virtual {p1, p4, p5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "No resource found for gesture-blocking activities"

    .line 221
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 224
    array-length p2, p1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object p4, p1, v1

    .line 225
    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    .line 226
    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p4

    .line 225
    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to add gesture blocking activities"

    .line 230
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    :cond_1
    :goto_1
    const-class p1, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/tracing/ProtoTracer;->add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    .line 235
    sget p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    .line 236
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    .line 235
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongPressTimeout:I

    .line 238
    new-instance p1, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    new-instance p5, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$_LuW15YEeoCQlkaEsBj7DgfSfSI;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$_LuW15YEeoCQlkaEsBj7DgfSfSI;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    invoke-direct {p1, p2, p4, p5}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources()V

    .line 242
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$0xBzEFuOIJ4-3m0YZa3952VKAW8;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$0xBzEFuOIJ4-3m0YZa3952VKAW8;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    invoke-virtual {p3, p1}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Lcom/android/systemui/recents/OverviewProxyService;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->logGesture(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisabledForQuickstep()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isGestureBlockingActivityRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;II)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/PointF;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 482
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    .line 483
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 484
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 485
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 486
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 409
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_panel_width:I

    .line 410
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_panel_height:I

    .line 411
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v4, 0x7e8

    const v5, 0x800128

    const/4 v6, -0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 418
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EdgeBackGestureHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 421
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->nav_bar_edge_panel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 p0, 0x0

    .line 422
    iput p0, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 423
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v7
.end method

.method private disposeInputChannel()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 320
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 324
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private isGestureBlockingActivityRunning()Z
    .locals 1

    .line 648
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :goto_0
    if-eqz v0, :cond_1

    .line 650
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private isWithinTouchRegion(II)Z
    .locals 10

    int-to-float v0, p2

    .line 435
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBottomGestureHeight:F

    sub-float/2addr v2, v3

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    return v2

    .line 443
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_1

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthRight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    return v2

    .line 451
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-le p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthRight:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v0, v3

    if-lt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 455
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    if-eqz v3, :cond_4

    .line 456
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return v0

    .line 460
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_5

    .line 463
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/lit8 v9, p1, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    .line 466
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 467
    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 468
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    const/4 p1, 0x3

    .line 469
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->logGesture(I)V

    :cond_5
    return v2

    .line 474
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 475
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return v0
.end method

.method public static synthetic lambda$_LuW15YEeoCQlkaEsBj7DgfSfSI(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavigationSettingsChanged()V

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSysUiFlags:I

    return-void
.end method

.method private logGesture(I)V
    .locals 11

    .line 491
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    const/16 v1, 0xe0

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v0

    .line 496
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    move v4, v0

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v5, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v6, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    add-int v9, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthRight:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    add-int/2addr v2, p0

    sub-int v10, v0, v2

    move v2, p1

    .line 495
    invoke-static/range {v1 .. v10}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIIIIII)V

    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 428
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 429
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 8

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    .line 511
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    .line 512
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 513
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSysUiFlags:I

    .line 515
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isWithinTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v1, :cond_2

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setIsLeftPanel(Z)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 521
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    if-eqz v0, :cond_d

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 523
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 524
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    goto/16 :goto_3

    .line 526
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    if-eqz v3, :cond_d

    .line 527
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    if-nez v3, :cond_c

    .line 528
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 529
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    .line 531
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 532
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->logGesture(I)V

    .line 534
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 536
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    :cond_6
    const/4 v4, 0x2

    if-ne v0, v4, :cond_c

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongPressTimeout:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    .line 540
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    .line 541
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->logGesture(I)V

    .line 542
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 544
    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    .line 547
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, v4, v0

    if-lez v5, :cond_a

    .line 549
    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_a

    .line 550
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    .line 551
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->logGesture(I)V

    .line 552
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 554
    :cond_9
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    :cond_a
    cmpl-float v2, v0, v4

    if-lez v2, :cond_c

    .line 556
    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_c

    .line 557
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_b

    .line 558
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->pilferPointers()V

    goto :goto_2

    .line 562
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->logGesture(I)V

    .line 568
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_d

    .line 570
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 574
    :cond_d
    :goto_3
    const-class p0, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-virtual {p0}, Lcom/android/systemui/tracing/ProtoTracer;->update()V

    return-void
.end method

.method private onNavigationSettingsChanged()V
    .locals 2

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v0

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources()V

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 274
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStateChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private sendEvent(II)V
    .locals 14

    .line 608
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 609
    new-instance v13, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 615
    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    move-object v1, p0

    .line 616
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedDisplayId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 618
    invoke-virtual {v13, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 620
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v0}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    .line 397
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setBackCallback(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;)V

    .line 399
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisplaySize()V

    return-void
.end method

.method private updateDisabledForQuickstep()V
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 579
    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    return-void
.end method

.method private updateDisplaySize()V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz v0, :cond_0

    .line 603
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setDisplaySize(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method private updateIsEnabled()V
    .locals 5

    .line 329
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 330
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    if-ne v0, v2, :cond_1

    return-void

    .line 333
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->disposeInputChannel()V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz v0, :cond_2

    .line 337
    invoke-interface {v0}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 341
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    const-string v2, "EdgeBackGestureHandler"

    if-nez v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->unregister()V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 345
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 348
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 349
    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "Failed to unregister window manager callbacks"

    .line 352
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->register()V

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisplaySize()V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 359
    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 358
    invoke-virtual {v0, p0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 360
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 363
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 364
    invoke-interface {v0, v3, v4}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Failed to register window manager callbacks"

    .line 367
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    :goto_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    const-string v3, "edge-swipe"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 373
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 374
    invoke-virtual {v2}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 377
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v2, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {v0, p0, v2, v1}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "EdgeBackGestureHandler:"

    .line 632
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsBackGestureAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisabledForQuickstep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStartingQuickstepRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInRejectedExclusion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnrestrictedExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeWidthLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeWidthRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthRight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isHandlingGestures()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$EdgeBackGestureHandler(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->lambda$new$0(I)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 591
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisabledForQuickstep()V

    .line 595
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    if-ne p1, v0, :cond_1

    .line 596
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisplaySize()V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onNavBarAttached()V
    .locals 2

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method public onNavBarDetached()V
    .locals 2

    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    return-void
.end method

.method public onNavBarTransientStateChanged(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 308
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    .line 309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources()V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;Landroid/content/Context;)V
    .locals 0

    .line 385
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 84
    check-cast p1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onPluginConnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V
    .locals 1

    .line 390
    new-instance p1, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 84
    check-cast p1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onPluginDisconnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources()V

    return-void
.end method

.method public setInsets(II)V
    .locals 0

    .line 624
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    .line 625
    iput p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    .line 626
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz p0, :cond_0

    .line 627
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setInsets(II)V

    :cond_0
    return-void
.end method

.method public updateCurrentUserResources()V
    .locals 5

    .line 246
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthRight:I

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 251
    invoke-virtual {v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    .line 253
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x10501ad

    .line 254
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v3

    const-string v3, "systemui"

    const-string v4, "back_gesture_bottom_height"

    .line 256
    invoke-static {v3, v4, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    .line 259
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBottomGestureHeight:F

    const/high16 v0, 0x3f400000    # 0.75f

    const-string v1, "back_gesture_slop_multiplier"

    .line 265
    invoke-static {v3, v1, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTouchSlop:F

    return-void
.end method

.method public writeToProto(Lcom/android/systemui/tracing/nano/SystemUiTraceProto;)V
    .locals 1

    .line 655
    iget-object v0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    invoke-direct {v0}, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 658
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    iput-boolean p0, p1, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;->allowGesture:Z

    return-void
.end method

.method public bridge synthetic writeToProto(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->writeToProto(Lcom/android/systemui/tracing/nano/SystemUiTraceProto;)V

    return-void
.end method
