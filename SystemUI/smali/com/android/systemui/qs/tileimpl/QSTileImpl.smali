.class public abstract Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.super Ljava/lang/Object;
.source "QSTileImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;,
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;,
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TState:",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/qs/QSTile;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# static fields
.field protected static final ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

.field protected static final DEBUG:Z


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAnnounceNextStateChange:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/qs/QSTile$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
            "TTState;>.H;"
        }
    .end annotation
.end field

.field protected final mHost:Lcom/android/systemui/qs/QSHost;

.field private final mInstanceId:Lcom/android/internal/logging/InstanceId;

.field private mIsFullQs:I

.field private final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field private mShowingDetail:Z

.field private final mStaleListener:Ljava/lang/Object;

.field protected mState:Lcom/android/systemui/plugins/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTileSpec:Ljava/lang/String;

.field private mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field protected final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Tile"

    const/4 v1, 0x3

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    .line 98
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 99
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 100
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    .line 116
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 154
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 155
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 156
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getNewInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 159
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getQSLogger()Lcom/android/systemui/qs/logging/QSLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 160
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUiEventLogger()Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleAddCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRemoveCallbacks()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRemoveCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleShowDetail(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListeningInternal(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static getColorForState(Landroid/content/Context;I)I
    .locals 2

    const v0, 0x1010038

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 517
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTile"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const p1, 0x1010433

    .line 515
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 513
    :cond_1
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 511
    :cond_2
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    .line 510
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private handleAddCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method private handleRemoveCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleRemoveCallbacks()V
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onScanStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleSetListeningInternal(Ljava/lang/Object;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 442
    sget-boolean p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "handleSetListening true"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 444
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 449
    sget-boolean p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "handleSetListening false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 451
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 454
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->updateIsFullQs()V

    return-void
.end method

.method private handleShowDetail(Z)V
    .locals 2

    .line 411
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    const/4 v0, 0x0

    .line 412
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onShowDetail(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleStateChanged()V
    .locals 5

    .line 387
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->shouldAnnouncementBeDelayed()Z

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    .line 389
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 390
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->composeChangeAnnouncement()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 395
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v3, v1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onAnnouncementRequested(Ljava/lang/CharSequence;)V

    .line 399
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z

    return-void
.end method

.method private handleToggleStateChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 422
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onToggleStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateIsFullQs()V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 459
    const-class v2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 460
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 464
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1

    .line 238
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 485
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 484
    invoke-static {v0, p2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 487
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 486
    invoke-static {v1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 488
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 489
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 491
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    const/4 p1, 0x0

    .line 492
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :goto_0
    return-void
.end method

.method public click()V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click() start this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x39d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 254
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x638

    .line 253
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 252
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_CLICK:Lcom/android/systemui/qs/QSEvent;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v3

    const/4 v4, 0x0

    .line 255
    invoke-interface {v0, v1, v4, v2, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/logging/QSLogger;->logTileClick(Ljava/lang/String;II)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click() end this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 215
    new-instance p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public destroy()V
    .locals 1

    .line 322
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 721
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    "

    .line 722
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public fireScanStateChanged(Z)V
    .locals 2

    .line 318
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public fireToggleStateChanged(Z)V
    .locals 2

    .line 314
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHost()Lcom/android/systemui/qs/QSHost;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method public getInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public abstract getLongClickIntent()Landroid/content/Intent;
.end method

.method public abstract getMetricsCategory()I
.end method

.method public getMetricsSpec()Ljava/lang/String;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-object p0
.end method

.method protected getStaleTimeout()J
    .locals 2

    const-wide/32 v0, 0x927c0

    return-wide v0
.end method

.method public getState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation

    .line 326
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method public getTileSpec()Ljava/lang/String;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract handleClick()V
.end method

.method protected handleDestroy()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    const-string v2, "Handle destroy"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 480
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLongClick()V
    .locals 2

    .line 363
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    .line 363
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method protected handleRefreshState(Ljava/lang/Object;)V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V

    .line 376
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logTileUpdated(Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStateChanged()V

    .line 381
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 382
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getStaleTimeout()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 383
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 470
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logTileChangeListening(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected handleStale()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected abstract handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTState;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected handleUserSwitch(I)V
    .locals 0

    const/4 p1, 0x0

    .line 434
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isShowingDetail()Z
    .locals 0

    .line 418
    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    return p0
.end method

.method public longClick()V
    .locals 6

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x16e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 276
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x638

    .line 275
    invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 274
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_LONG_PRESS:Lcom/android/systemui/qs/QSEvent;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    const/4 v5, 0x0

    .line 277
    invoke-interface {v0, v1, v5, v3, v4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v4, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/qs/logging/QSLogger;->logTileLongClick(Ljava/lang/String;II)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v0, "QsLongPressTooltipShownCount"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public abstract newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    instance-of v1, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v1, :cond_0

    const/16 v1, 0x3a0

    .line 290
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 v0, 0x639

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    .line 293
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 v0, 0x39f

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 294
    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSHost;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public refreshState()V
    .locals 1

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method protected final refreshState(Ljava/lang/Object;)V
    .locals 1

    .line 306
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1

    .line 242
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeCallbacks()V
    .locals 1

    .line 246
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final resetStates()V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-void
.end method

.method public secondaryClick()V
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x39e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 265
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x638

    .line 264
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_SECONDARY_CLICK:Lcom/android/systemui/qs/QSEvent;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v3

    const/4 v4, 0x0

    .line 266
    invoke-interface {v0, v1, v4, v2, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/logging/QSLogger;->logTileSecondaryClick(Ljava/lang/String;II)V

    .line 270
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setDetailListening(Z)V
    .locals 0

    return-void
.end method

.method public setListening(Ljava/lang/Object;Z)V
    .locals 2

    .line 184
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTileSpec(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDetail(Z)V
    .locals 2

    .line 298
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public userSwitch(I)V
    .locals 2

    .line 310
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
