.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;
    }
.end annotation


# instance fields
.field private final mActiveRegion:Landroid/graphics/Region;

.field private mBackButtonBounds:Landroid/graphics/Rect;

.field private mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field private final mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

.field private mCurrentRotation:I

.field mCurrentView:Landroid/view/View;

.field private final mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mDeadZoneConsuming:Z

.field mDisabledFlags:I

.field private mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mDockedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDockedStackExists:Z

.field private mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

.field private mFloatingRotationButton:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

.field private mHomeButtonBounds:Landroid/graphics/Rect;

.field private mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mHorizontal:Landroid/view/View;

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mImeVisible:Z

.field private mInCarMode:Z

.field private mIsVertical:Z

.field private mLayoutTransitionsEnabled:Z

.field private mNavBarMode:I

.field private final mNavColorSampleMargin:I

.field mNavigationIconHints:I

.field private mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

.field private final mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

.field private mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mRecentsButtonBounds:Landroid/graphics/Rect;

.field private mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

.field private final mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

.field private mRotationButtonBounds:Landroid/graphics/Rect;

.field private mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

.field private mSamplingBounds:Landroid/graphics/Rect;

.field private mScreenOn:Z

.field private mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

.field private final mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

.field private mTmpLastConfiguration:Landroid/content/res/Configuration;

.field private mTmpPosition:[I

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field private mUseCarModeUi:Z

.field private mVertical:Landroid/view/View;

.field private mWakeAndUnlocking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 279
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 103
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 113
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeButtonBounds:Landroid/graphics/Rect;

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackButtonBounds:Landroid/graphics/Rect;

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsButtonBounds:Landroid/graphics/Rect;

    .line 119
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonBounds:Landroid/graphics/Rect;

    .line 120
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mActiveRegion:Landroid/graphics/Region;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 121
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    .line 135
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    const/4 p2, 0x1

    .line 138
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    .line 144
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    .line 146
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 163
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    .line 220
    new-instance p2, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    .line 228
    new-instance p2, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 255
    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$khIxhJwBd7pJnFFXnq8zupcHrv8;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$khIxhJwBd7pJnFFXnq8zupcHrv8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 1289
    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$3_rm_LYAhHXvCBhrsX10ry5w8OA;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$3_rm_LYAhHXvCBhrsX10ry5w8OA;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    .line 281
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    .line 283
    const-class p2, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 284
    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p2

    .line 286
    const-class v0, Lcom/android/systemui/model/SysUiState;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/model/SysUiState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 287
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 289
    new-instance v0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    sget v1, Lcom/android/systemui/R$id;->menu_container:I

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    .line 290
    new-instance v0, Lcom/android/systemui/statusbar/phone/ContextualButton;

    sget v1, Lcom/android/systemui/R$id;->ime_switcher:I

    sget v2, Lcom/android/systemui/R$drawable;->ic_ime_switcher_default:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(II)V

    .line 292
    new-instance v1, Lcom/android/systemui/statusbar/phone/RotationContextButton;

    sget v2, Lcom/android/systemui/R$id;->rotate_suggestion:I

    sget v3, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button:I

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/RotationContextButton;-><init>(II)V

    .line 294
    new-instance v2, Lcom/android/systemui/statusbar/phone/ContextualButton;

    sget v3, Lcom/android/systemui/R$id;->accessibility_button:I

    sget v4, Lcom/android/systemui/R$drawable;->ic_sysbar_accessibility_button:I

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(II)V

    .line 297
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    if-nez p2, :cond_0

    .line 299
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    .line 301
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    .line 303
    const-class v3, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 304
    new-instance v4, Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {v4, p1, v3}, Lcom/android/systemui/recents/RecentsOnboarding;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    .line 305
    new-instance v3, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    .line 306
    new-instance v4, Lcom/android/systemui/statusbar/phone/RotationButtonController;

    sget v5, Lcom/android/systemui/R$style;->RotateButtonCCWStart90:I

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 308
    :goto_0
    invoke-direct {v4, p1, v5, v3}, Lcom/android/systemui/statusbar/phone/RotationButtonController;-><init>(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/RotationButton;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    .line 310
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 311
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 312
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 314
    new-instance p2, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    .line 315
    new-instance p2, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const-class v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {p2, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/CommandQueue;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 317
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$id;->back:I

    new-instance v4, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$id;->home:I

    new-instance v4, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$id;->home_handle:I

    new-instance v4, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$id;->recent_apps:I

    new-instance v4, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$id;->ime_switcher:I

    invoke-virtual {p2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->accessibility_button:I

    invoke-virtual {p2, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->rotate_suggestion:I

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->menu_container:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    new-instance p2, Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/DeadZone;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 327
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->navigation_handle_sample_horizontal_margin:I

    .line 328
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavColorSampleMargin:I

    .line 329
    new-instance p2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    new-instance v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$WrUd8iBVzCnkNGlDjVh6Yvbf6CM;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$WrUd8iBVzCnkNGlDjVh6Yvbf6CM;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    .line 331
    new-instance p1, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 0

    .line 89
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/graphics/Rect;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSamplingRect()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/graphics/Rect;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NavigationBarView;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    return p0
.end method

.method private chooseNavigationIconDrawableRes(II)I
    .locals 0

    .line 569
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result p0

    if-eqz p0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method private static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 2

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "null"

    .line 1276
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1278
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1278
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1282
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private getContextDisplay()Landroid/view/Display;
    .locals 0

    .line 727
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    .line 574
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method private getNavBarHeight()I
    .locals 1

    .line 1082
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10501b0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 1085
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10501ae

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1138
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "(unknown)"

    return-object p0

    :cond_0
    const-string p0, "(null)"

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    .line 270
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 271
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    aget v0, v0, v3

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    .line 271
    invoke-virtual {p1, v2, v4, v1, v0}, Landroid/graphics/Region;->set(IIII)Z

    return-void

    .line 275
    :cond_1
    iget-object p0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    return-void

    .line 259
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 1290
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    .line 1291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Boolean;)V
    .locals 1

    .line 1289
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$seIN-E1MF9Wb6jBs3U7jhkEzAV4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$seIN-E1MF9Wb6jBs3U7jhkEzAV4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 0

    .line 1090
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    if-eqz p0, :cond_0

    .line 1091
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    :cond_0
    return-void
.end method

.method private onImeVisibilityChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    .line 632
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeVisible:Z

    .line 633
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->getRotationButton()Lcom/android/systemui/statusbar/phone/RotationButton;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->setCanShowRotationButton(Z)V

    return-void
.end method

.method private orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 6

    .line 532
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 534
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    const/16 v3, 0x5a

    goto :goto_2

    :cond_2
    const/16 v3, -0x5a

    :goto_2
    int-to-float v3, v3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 536
    :goto_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getRotation()F

    move-result v5

    cmpl-float v5, v5, v3

    if-nez v5, :cond_4

    return-void

    .line 540
    :cond_4
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v5}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 541
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    return-void

    .line 547
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v5}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-nez v5, :cond_6

    if-eqz v0, :cond_6

    .line 548
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->navbar_back_button_ime_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    neg-float v4, p0

    :cond_6
    const/4 p0, 0x2

    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    .line 550
    sget-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    new-array v5, v1, [F

    aput v3, v5, v2

    .line 551
    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v2

    sget-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v3, v1, [F

    aput v4, v3, v2

    .line 552
    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v1

    .line 550
    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 553
    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 554
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 555
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 0

    .line 559
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    return-void
.end method

.method private reloadNavIcons()V
    .locals 1

    .line 490
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private resetViews()V
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHorizontal:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 998
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setSlippery(Z)V
    .locals 1

    const/high16 v0, 0x20000000

    .line 843
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWindowFlag(IZ)V

    return-void
.end method

.method private setUpSwipeUpOnboarding(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1192
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onConnectedToLauncher()V

    goto :goto_0

    .line 1194
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    :goto_0
    return-void
.end method

.method private setUseFadingAnimations(Z)V
    .locals 3

    .line 761
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 762
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 764
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 766
    sget p1, Lcom/android/systemui/R$style;->Animation_NavigationBarFadeIn:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 768
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 772
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 773
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    nop

    :cond_2
    return-void
.end method

.method private setWindowFlag(IZ)V
    .locals 3

    .line 847
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 851
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_4

    .line 852
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ne p2, v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 856
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, p2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 858
    :cond_3
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 860
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 861
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 408
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    .line 410
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 420
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 421
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    goto :goto_1

    .line 414
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 415
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    :goto_1
    return p1
.end method

.method private updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V
    .locals 8

    .line 948
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 950
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 954
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 955
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    .line 956
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 957
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 960
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 961
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v4, p3, v3

    aget v5, p3, v2

    aget p3, p3, v3

    .line 962
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr p3, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v6, v6, v2

    .line 963
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 961
    invoke-virtual {p2, v4, v5, p3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 964
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mActiveRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p3, p2, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 966
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 967
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v4, p3, v3

    aget v5, p3, v2

    aget p3, p3, v3

    .line 968
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p3, v3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget p0, p0, v2

    .line 969
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p0, v2

    .line 967
    invoke-virtual {p2, v4, v5, p3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 970
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 971
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateCarMode()Z
    .locals 3

    .line 1116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1117
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1120
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    if-eq v0, v2, :cond_1

    .line 1121
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    .line 1127
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    :cond_1
    return v1
.end method

.method private updateCurrentView()V
    .locals 4

    .line 986
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->resetViews()V

    .line 987
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHorizontal:Landroid/view/View;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 988
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setVertical(Z)V

    .line 990
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    .line 991
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    .line 992
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 993
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method private updateIcons(Landroid/content/res/Configuration;)V
    .locals 5

    .line 494
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 495
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 496
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-eq p1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 499
    :cond_3
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_docked:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 500
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :cond_4
    if-nez v1, :cond_5

    if-eqz v2, :cond_6

    .line 503
    :cond_5
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_recent:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 504
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->updateIcons()V

    :cond_6
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    .line 507
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :cond_8
    return-void
.end method

.method private updateLayoutTransitionsEnabled()V
    .locals 5

    .line 742
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 743
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 744
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 747
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 748
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 749
    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 750
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    goto :goto_1

    .line 752
    :cond_1
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 753
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 754
    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 755
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateOrientationViews()V
    .locals 1

    .line 975
    sget v0, Lcom/android/systemui/R$id;->horizontal:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 976
    sget v0, Lcom/android/systemui/R$id;->vertical:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Landroid/view/View;

    .line 978
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    return-void
.end method

.method private updateRecentsIcon()V
    .locals 2

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    .line 1003
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1004
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    return-void
.end method

.method private updateSamplingRect()V
    .locals 8

    .line 910
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 912
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 916
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 917
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 918
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 919
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v1, v4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavColorSampleMargin:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Point;->y:I

    .line 920
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavBarHeight()I

    move-result v7

    sub-int/2addr v6, v7

    aget v1, v1, v4

    .line 921
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavColorSampleMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v5, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 923
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "VISIBLE"

    return-object p0

    :cond_0
    const-string p0, "GONE"

    return-object p0

    :cond_1
    const-string p0, "INVISIBLE"

    return-object p0
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 0

    .line 430
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string p1, "NavigationBarView {"

    .line 1199
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1200
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1201
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 1202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 1204
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1208
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Point;->x:I

    const/4 v4, 0x1

    if-gt v0, v3, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    if-le v0, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v4

    .line 1209
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      window: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    const-string p1, " OFFSCREEN!"

    goto :goto_2

    :cond_2
    const-string p1, ""

    .line 1212
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    .line 1215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    .line 1216
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, p1, v0

    .line 1217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x3

    aput-object p3, p1, v1

    const/4 p3, 0x4

    .line 1218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, p1, p3

    const-string p3, "      mCurrentView: id=%s (%dx%d) %s %f"

    .line 1214
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/Object;

    .line 1220
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 1221
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    .line 1222
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz p3, :cond_3

    const-string p3, "true"

    goto :goto_3

    :cond_3
    const-string p3, "false"

    :goto_3
    aput-object p3, p1, v4

    .line 1223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "      disabled=0x%08x vertical=%s darkIntensity=%.2f"

    .line 1220
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      mOrientedHandleSamplingRegion: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const-string p3, "back"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1228
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const-string p3, "home"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1229
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const-string p3, "rcnt"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1230
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;

    move-result-object p1

    const-string p3, "rota"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const-string p3, "a11y"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    const-string p1, "    }"

    .line 1233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mScreenOn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1236
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    if-eqz p1, :cond_4

    .line 1237
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->dump(Ljava/io/PrintWriter;)V

    .line 1239
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->dump(Ljava/io/PrintWriter;)V

    .line 1240
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/RecentsOnboarding;->dump(Ljava/io/PrintWriter;)V

    .line 1241
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->dump(Ljava/io/PrintWriter;)V

    .line 1242
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 462
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->accessibility_button:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 450
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->back:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getBackDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackDrawableRes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 513
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-object v0
.end method

.method public getBackDrawableRes()I
    .locals 2

    .line 518
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_back:I

    sget v1, Lcom/android/systemui/R$drawable;->ic_sysbar_back_quick_step:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->chooseNavigationIconDrawableRes(II)I

    move-result p0

    return p0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object p0
.end method

.method public getButtonDispatchers()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation

    .line 474
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object p0
.end method

.method public getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 454
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->home:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getHomeDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_home_quick_step:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    goto :goto_0

    .line 526
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_home:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 527
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-object v0
.end method

.method public getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 470
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->home_handle:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 458
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->ime_switcher:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    return-object p0
.end method

.method public getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 446
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->recent_apps:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;
    .locals 1

    .line 466
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->rotate_suggestion:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/RotationContextButton;

    return-object p0
.end method

.method public getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    return-object p0
.end method

.method hideRecentsOnboarding()V
    .locals 1

    .line 886
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    return-void
.end method

.method public isOverviewEnabled()Z
    .locals 1

    .line 482
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickStepSwipeUpEnabled()Z
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRecentsButtonDisabled()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 722
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRecentsButtonVisible()Z
    .locals 0

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$NavigationBarView(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method public synthetic lambda$new$1$NavigationBarView(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$new$2$NavigationBarView(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->lambda$new$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method needsReorient(I)Z
    .locals 0

    .line 982
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1247
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 1248
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    .line 1249
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1250
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 1249
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1253
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->setInsets(II)V

    .line 1257
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 1258
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1259
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1260
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 1262
    const-class v0, Lcom/android/systemui/statusbar/NavigationBarController;

    .line 1263
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarController;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 1266
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getAssistHandlerViewController()Lcom/android/systemui/assist/AssistHandleViewController;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    .line 1268
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistHandleViewController;->setBottomOffset(I)V

    .line 1270
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 1162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1163
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onNavigationModeChanged(I)V

    .line 1164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->registerListeners()V

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavBarAttached()V

    .line 1170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method onBarTransition(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 398
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1097
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1099
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCarMode()Z

    move-result p1

    .line 1101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 1102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 1103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-nez p1, :cond_0

    .line 1104
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v1, :cond_0

    .line 1105
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1107
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1175
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1176
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->removeListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)V

    const/4 v0, 0x0

    .line 1177
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1178
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    if-eqz v0, :cond_1

    .line 1182
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->unregisterListeners()V

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavBarDetached()V

    .line 1186
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onDraw(Landroid/graphics/Canvas;)V

    .line 906
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 891
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 892
    sget v0, Lcom/android/systemui/R$id;->navigation_inflater:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    .line 893
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    .line 895
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    .line 898
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->registerInSplitScreenListener(Ljava/util/function/Consumer;)V

    .line 899
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateOrientationViews()V

    .line 900
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 376
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeVisible:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x130

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 378
    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(III)V

    .line 381
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

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

.method protected onLayout(ZIIII)V
    .locals 0

    .line 934
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 936
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mActiveRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 937
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackButtonBounds:Landroid/graphics/Rect;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V

    .line 938
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeButtonBounds:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V

    .line 939
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V

    .line 940
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V

    .line 942
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mActiveRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V

    .line 943
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/RecentsOnboarding;->setNavBarHeight(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1049
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1050
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    if-le v1, v0, :cond_0

    .line 1054
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 1055
    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1056
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eq v3, v4, :cond_1

    .line 1057
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    .line 1062
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1063
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 1066
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1068
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz v3, :cond_2

    .line 1069
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10501b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 1071
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10501ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1073
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1075
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    new-instance v6, Landroid/graphics/Rect;

    sub-int/2addr v4, v3

    invoke-direct {v6, v2, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    .line 1078
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 1

    .line 866
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->onNavigationModeChanged(I)V

    .line 868
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavigationModeChanged(I)V

    .line 869
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->onNavigationModeChanged(I)V

    .line 870
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/RotationContextButton;->onNavigationModeChanged(I)V

    .line 872
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 873
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 875
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    :goto_0
    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 1

    .line 583
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    if-eqz p1, :cond_0

    .line 585
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {p1, v0}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 586
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 592
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 593
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 594
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStatusBarPanelStateChanged()V
    .locals 0

    .line 778
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 779
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updatePanelSystemUiStateFlags()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 386
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    .line 387
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method onTransientStateChanged(Z)V
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavBarTransientStateChanged(Z)V

    return-void
.end method

.method public reorient()V
    .locals 2

    .line 1025
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    .line 1027
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->setDeadZone(Lcom/android/systemui/statusbar/policy/DeadZone;)V

    .line 1028
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onConfigurationChanged(I)V

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init()V

    .line 1039
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->resolveLayoutDirection()Z

    .line 1042
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1044
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVertical(Z)V

    return-void
.end method

.method public setAccessibilityButtonState(ZZ)V
    .locals 1

    .line 881
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 882
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    sget p2, Lcom/android/systemui/R$id;->accessibility_button:I

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    return-void
.end method

.method public setComponents(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updatePanelSystemUiStateFlags()V

    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1

    .line 637
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v0, p1, :cond_0

    return-void

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    .line 640
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-nez v0, :cond_1

    .line 643
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 644
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 647
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 648
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 649
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateDisabledSystemUiStateFlags()V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 605
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 607
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0

    .line 731
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 732
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 4

    .line 611
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 613
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    if-eq v0, v1, :cond_3

    .line 616
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onImeVisibilityChanged(Z)V

    .line 624
    :cond_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 625
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .line 371
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    return-void
.end method

.method setOrientedHandleSamplingRegion(Landroid/graphics/Rect;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    .line 929
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingRect()V

    return-void
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 0

    .line 736
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUseFadingAnimations(Z)V

    .line 737
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    .line 738
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public setWindowVisible(Z)V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->setWindowVisible(Z)V

    .line 600
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onNavigationBarWindowVisibilityChange(Z)V

    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1009
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showPinningStartToast()V

    goto :goto_0

    .line 1011
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showPinningExitToast()V

    :goto_0
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 3

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1017
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result p0

    .line 1016
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showEscapeToast(ZZ)V

    return-void
.end method

.method public updateDisabledSystemUiStateFlags()V
    .locals 7

    .line 783
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 785
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 786
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v2

    const/4 v3, 0x1

    .line 785
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v2, v4

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/16 v5, 0x80

    .line 787
    invoke-virtual {v1, v5, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    const/16 v2, 0x100

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 789
    :goto_1
    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    const/16 v2, 0x400

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v5, 0x2000000

    and-int/2addr p0, v5

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 791
    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    .line 793
    invoke-virtual {v1, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method public updateNavButtonIcons()V
    .locals 8

    .line 657
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 659
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 660
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 661
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 662
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-nez v5, :cond_1

    .line 663
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 665
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 666
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 668
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 671
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    sget v4, Lcom/android/systemui/R$id;->ime_switcher:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    .line 674
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 676
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    const/high16 v4, 0x200000

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v1

    .line 680
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonDisabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 683
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    if-nez v0, :cond_7

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v6, 0x400000

    and-int/2addr v0, v6

    if-eqz v0, :cond_7

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v2

    .line 692
    :goto_5
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v6

    .line 693
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v7}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 695
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v7}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result v7

    xor-int/2addr v1, v7

    or-int/2addr v5, v1

    if-eqz v6, :cond_9

    .line 696
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-nez v1, :cond_9

    move v0, v2

    move v3, v0

    goto :goto_6

    :cond_8
    if-eqz v6, :cond_9

    move v0, v2

    move v5, v0

    .line 703
    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    sget v6, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    .line 705
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 707
    invoke-virtual {v1}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 708
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 713
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    const/4 v6, 0x4

    if-eqz v0, :cond_b

    move v7, v6

    goto :goto_7

    :cond_b
    move v7, v2

    :goto_7
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 714
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-eqz v3, :cond_c

    move v7, v6

    goto :goto_8

    :cond_c
    move v7, v2

    :goto_8
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 715
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-eqz v5, :cond_d

    move v5, v6

    goto :goto_9

    :cond_d
    move v5, v2

    :goto_9
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 716
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-eqz v4, :cond_e

    move v4, v6

    goto :goto_a

    :cond_e
    move v4, v2

    :goto_a
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 717
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    if-eqz v3, :cond_f

    if-eqz v0, :cond_f

    move v2, v6

    :cond_f
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method

.method public updatePanelSystemUiStateFlags()V
    .locals 4

    .line 797
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 801
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v1, :cond_1

    .line 806
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    const/4 v3, 0x4

    .line 807
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 806
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    const/16 v1, 0x800

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 809
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result p0

    .line 808
    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    .line 810
    invoke-virtual {v2, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    :cond_1
    return-void
.end method

.method public updateSlippery()V
    .locals 1

    .line 838
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 838
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    return-void
.end method

.method public updateStates()V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 817
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    if-eqz v1, :cond_0

    .line 819
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    .line 822
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 823
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 824
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 825
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 826
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 827
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 828
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 827
    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method
