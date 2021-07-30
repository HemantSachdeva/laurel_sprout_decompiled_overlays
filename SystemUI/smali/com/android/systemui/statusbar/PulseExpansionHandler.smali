.class public final Lcom/android/systemui/statusbar/PulseExpansionHandler;
.super Ljava/lang/Object;
.source "PulseExpansionHandler.kt"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPulseExpansionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PulseExpansionHandler.kt\ncom/android/systemui/statusbar/PulseExpansionHandler\n*L\n1#1,349:1\n*E\n"
.end annotation


# static fields
.field private static final RUBBERBAND_FACTOR_STATIC:F = 0.25f

.field private static final SPRING_BACK_ANIMATION_LENGTH_MS:I = 0x177


# instance fields
.field private bouncerShowing:Z

.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private expansionCallback:Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;

.field private final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private isExpanding:Z

.field private isWakingToShadeLocked:Z

.field private leavingLockscreen:Z

.field private mEmptyDragAmount:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mReachedWakeUpHeight:Z

.field private mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private final mTemp2:[I

.field private final mTouchSlop:F

.field private mWakeUpHeight:F

.field private pulseExpandAbortListener:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private qsExpanded:Z

.field private final roundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field private shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private stackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private final wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/plugins/FalsingManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wakeUpCoordinator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roundnessManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falsingManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iput-object p3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iput-object p5, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->roundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 97
    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 116
    sget p3, Lcom/android/systemui/R$dimen;->keyguard_drag_down_min_distance:I

    .line 115
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    const-string p3, "ViewConfiguration.get(context)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTouchSlop:F

    .line 118
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public static final synthetic access$setEmptyDragAmount(Lcom/android/systemui/statusbar/PulseExpansionHandler;F)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setEmptyDragAmount(F)V

    return-void
.end method

.method public static final synthetic access$setUserLocked(Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method private final canHandleMotionEvent()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->qsExpanded:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bouncerShowing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final cancelExpansion()V
    .locals 3

    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->onExpansionFromPulseStopped()V

    .line 304
    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 305
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->reset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 306
    iput-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 308
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->resetClock()V

    .line 310
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    return-void
.end method

.method private final captureStartingChild(FF)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private final findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const-string v1, "stackScroller"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    const/4 v3, 0x1

    .line 320
    aget v0, v0, v3

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 321
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isContentExpandable()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v2, p0

    :cond_0
    return-object v2

    .line 321
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final finishExpansion()V
    .locals 8

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->resetClock()V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 217
    iput-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 219
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 220
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked:Z

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWillWakeUp(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x4

    const-string v7, "com.android.systemui:PULSEDRAG"

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 225
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToLockedShade(Landroid/view/View;)V

    .line 226
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    .line 227
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_5

    .line 229
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_4

    .line 230
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string p0, "shadeController"

    .line 225
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final isFalseTouch()Z
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    return p0
.end method

.method private final recycleVelocityTracker()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private final reset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 3

    .line 271
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 272
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 276
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v2

    aput v2, v0, v1

    const-string v1, "actualHeight"

    .line 275
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "anim"

    .line 277
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    sget v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->SPRING_BACK_ANIMATION_LENGTH_MS:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 279
    new-instance v1, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;-><init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private final resetClock()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 294
    iget v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mEmptyDragAmount:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "anim"

    .line 295
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    sget v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->SPRING_BACK_ANIMATION_LENGTH_MS:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    new-instance v1, Lcom/android/systemui/statusbar/PulseExpansionHandler$resetClock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler$resetClock$1;-><init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 298
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final setEmptyDragAmount(F)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mEmptyDragAmount:F

    .line 267
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->expansionCallback:Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;->setEmptyDragAmount(F)V

    return-void

    :cond_0
    const-string p0, "expansionCallback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setExpanding(Z)V
    .locals 3

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 75
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setPulseExpanding(Z)V

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->roundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_1

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->roundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 84
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    if-nez p1, :cond_2

    .line 85
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->maybePerformPendingUnlock()V

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->pulseExpandAbortListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 89
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)V

    :cond_3
    return-void
.end method

.method private final setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 0

    .line 288
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 289
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_0
    return-void
.end method

.method private final startExpansion(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->recycleVelocityTracker()V

    .line 168
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    goto :goto_0

    .line 148
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    sub-float p1, v2, p1

    .line 149
    iget v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTouchSlop:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_5

    iget v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float p1, p1, v4

    if-lez p1, :cond_5

    .line 150
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->onStartExpandingFromPulse()V

    .line 151
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 152
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    iget v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->captureStartingChild(FF)V

    .line 153
    iput v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 154
    iput v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    .line 155
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getWakeUpHeight()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    .line 156
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    return v1

    .line 162
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->recycleVelocityTracker()V

    .line 163
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    goto :goto_0

    .line 140
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 141
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    .line 142
    iput-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 143
    iput v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 144
    iput v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    :cond_5
    :goto_0
    return v3

    .line 133
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method private final updateExpansionHeight(F)V
    .locals 4

    const/4 v0, 0x0

    .line 235
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 236
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 237
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v2, :cond_2

    if-eqz v2, :cond_1

    .line 241
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 242
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v0

    .line 241
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 243
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    int-to-float p1, p1

    .line 244
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_1

    .line 240
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    .line 246
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    .line 247
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    move p1, v3

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1, v3, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    .line 250
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 252
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setPulseHeight(F)F

    move-result p1

    .line 253
    sget v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->RUBBERBAND_FACTOR_STATIC:F

    mul-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setEmptyDragAmount(F)V

    return-void
.end method


# virtual methods
.method public final getLeavingLockscreen()Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    return p0
.end method

.method public final isExpanding()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    return p0
.end method

.method public final isWakingToShadeLocked()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked:Z

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->canHandleMotionEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->startExpansion(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onStartedWakingUp()V
    .locals 1

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->canHandleMotionEvent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 191
    iget v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    sub-float/2addr v0, v3

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_2

    .line 206
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->cancelExpansion()V

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->recycleVelocityTracker()V

    goto :goto_2

    .line 193
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->updateExpansionHeight(F)V

    goto :goto_2

    .line 195
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    const/16 v4, 0x3e8

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    int-to-float p1, v1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_6

    .line 196
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    const/16 v0, -0x3e8

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-eqz p1, :cond_6

    move v1, v3

    goto :goto_0

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 198
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isFalseTouch()Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz v1, :cond_7

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->finishExpansion()V

    goto :goto_1

    .line 201
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->cancelExpansion()V

    .line 203
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->recycleVelocityTracker()V

    .line 210
    :goto_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    return p0

    .line 195
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 188
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 186
    :cond_a
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->startExpansion(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setBouncerShowing(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bouncerShowing:Z

    return-void
.end method

.method public final setPulseExpandAbortListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->pulseExpandAbortListener:Ljava/lang/Runnable;

    return-void
.end method

.method public final setPulsing(Z)V
    .locals 0

    return-void
.end method

.method public final setQsExpanded(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->qsExpanded:Z

    return-void
.end method

.method public final setUp(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;Lcom/android/systemui/statusbar/phone/ShadeController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/phone/ShadeController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stackScroller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expansionCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadeController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->expansionCallback:Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;

    .line 333
    iput-object p3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 334
    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method
