.class public Lcom/android/systemui/qs/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/qs/QSHost;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/qs/QSFactory;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/QSHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field private final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field private final mQsFactories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/qs/QSFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private final mStatusBarOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "QSTileHost"

    const/4 v1, 0x3

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/plugins/qs/QSFactory;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/Optional;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            "Lcom/android/systemui/plugins/qs/QSFactory;",
            "Landroid/os/Handler;",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoTileManager;",
            ">;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    .line 117
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 118
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 119
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    .line 120
    iput-object p7, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 122
    iput-object p9, p0, Lcom/android/systemui/qs/QSTileHost;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 123
    iput-object p12, p0, Lcom/android/systemui/qs/QSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 124
    iput-object p13, p0, Lcom/android/systemui/qs/QSTileHost;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 125
    iput-object p10, p0, Lcom/android/systemui/qs/QSTileHost;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 127
    new-instance p1, Lcom/android/internal/logging/InstanceIdSequence;

    const/high16 p2, 0x100000

    invoke-direct {p1, p2}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 128
    new-instance p1, Lcom/android/systemui/qs/external/TileServices;

    iget-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p1, p0, p5, p2}, Lcom/android/systemui/qs/external/TileServices;-><init>(Lcom/android/systemui/qs/QSTileHost;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 129
    iput-object p11, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBarOptional:Ljava/util/Optional;

    .line 131
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    const-class p1, Lcom/android/systemui/plugins/qs/QSFactory;

    const/4 p2, 0x1

    invoke-interface {p6, p0, p1, p2}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 133
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string p2, "QSTileHost"

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 135
    new-instance p1, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$8OyZkY1GXlSGEY9CusSz83dAxOw;

    invoke-direct {p1, p0, p7, p8}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$8OyZkY1GXlSGEY9CusSz83dAxOw;-><init>(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;)V

    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private changeTileSpecs(Ljava/util/function/Predicate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    const-string v2, "sysui_qs_tiles"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 355
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 356
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSTileHost;->saveTilesToSettings(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static getDefaultSpecs(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 476
    sget v1, Lcom/android/systemui/R$string;->quick_settings_tiles_default:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    .line 478
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 479
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_0

    const-string p0, "dbg:mem"

    .line 481
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$addTile$5(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .line 342
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$dump$6(Lcom/android/systemui/plugins/qs/QSTile;)Z
    .locals 0

    .line 489
    instance-of p0, p0, Lcom/android/systemui/Dumpable;

    return p0
.end method

.method static synthetic lambda$dump$7(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 0

    .line 490
    check-cast p3, Lcom/android/systemui/Dumpable;

    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;)V
    .locals 1

    const-string v0, "sysui_qs_tiles"

    .line 139
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 141
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/AutoTileManager;

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    return-void
.end method

.method static synthetic lambda$onTuningChanged$2(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 263
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$onTuningChanged$3(Ljava/util/Map$Entry;)V
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying tile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Tile removed"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    return-void
.end method

.method static synthetic lambda$removeTile$4(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    .line 333
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "QSTileHost"

    if-eqz v1, :cond_0

    .line 435
    sget p1, Lcom/android/systemui/R$string;->quick_settings_tiles:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 436
    sget-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded tile specs from config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded tile specs from setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string v2, ","

    .line 443
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_7

    aget-object v5, p1, v3

    .line 444
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 445
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    const-string v6, "default"

    .line 446
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v4, :cond_6

    .line 448
    invoke-static {p0}, Lcom/android/systemui/qs/QSTileHost;->getDefaultSpecs(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 449
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 450
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 451
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    goto :goto_3

    .line 458
    :cond_5
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 459
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method private saveTilesToSettings(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, ","

    .line 347
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iget v6, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    const-string v2, "sysui_qs_tiles"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 346
    invoke-static/range {v1 .. v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTile(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public addTile(Landroid/content/ComponentName;Z)V
    .locals 2

    .line 370
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 371
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_0

    .line 374
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 376
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 378
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public addTile(Ljava/lang/String;)V
    .locals 1

    .line 342
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$iiTl64od8Xx0qaz8exmdhzyHaWg;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$iiTl64od8Xx0qaz8exmdhzyHaWg;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTileSpecs(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public changeTiles(Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 390
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    .line 392
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "custom("

    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 394
    :cond_0
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 395
    invoke-static {v3}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 396
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    .line 397
    new-instance v4, Lcom/android/systemui/qs/external/TileLifecycleManager;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    new-instance v9, Landroid/service/quicksettings/Tile;

    invoke-direct {v9}, Landroid/service/quicksettings/Tile;-><init>()V

    new-instance v11, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    invoke-direct {v11, v5}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v12, p0, Lcom/android/systemui/qs/QSTileHost;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 401
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 402
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 403
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 404
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    :cond_2
    sget-boolean p1, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveCurrentTiles "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSTileHost"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSTileHost;->saveTilesToSettings(Ljava/util/List;)V

    return-void
.end method

.method public collapsePanels()V
    .locals 1

    .line 213
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBarOptional:Ljava/util/Optional;

    sget-object v0, Lcom/android/systemui/qs/-$$Lambda$4RRpk2g2DG1jxcebU4uq2xyjwbI;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$4RRpk2g2DG1jxcebU4uq2xyjwbI;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 2

    const/4 v0, 0x0

    .line 412
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSFactory;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 2

    const/4 v0, 0x0

    .line 422
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/qs/QSFactory;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Default factory didn\'t create view for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "QSTileHost:"

    .line 488
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$w0YHlhMwIm7qnoeEO7kRZCq47o8;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$w0YHlhMwIm7qnoeEO7kRZCq47o8;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$8dGA3dPDXgH8k-YhV5jUASLKyAo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$8dGA3dPDXgH8k-YhV5jUASLKyAo;-><init>(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 490
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forceCollapsePanels()V
    .locals 1

    .line 218
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBarOptional:Ljava/util/Optional;

    sget-object v0, Lcom/android/systemui/qs/-$$Lambda$mg7HvLF2bK-625f51dPB--SLbws;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$mg7HvLF2bK-625f51dPB--SLbws;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getIconController()Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object p0
.end method

.method public getNewInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    return-object p0
.end method

.method public getQSLogger()Lcom/android/systemui/qs/logging/QSLogger;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    return-object p0
.end method

.method public getTileServices()Lcom/android/systemui/qs/external/TileServices;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object p0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getUiEventLogger()Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method public getUserContext()Landroid/content/Context;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    return-object p0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$QSTileHost(Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->lambda$new$0(Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;)V

    return-void
.end method

.method public synthetic lambda$onTuningChanged$3$QSTileHost(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->lambda$onTuningChanged$3(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->onPluginConnected(Lcom/android/systemui/plugins/qs/QSFactory;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/qs/QSFactory;Landroid/content/Context;)V
    .locals 1

    .line 166
    iget-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string p2, "sysui_qs_tiles"

    invoke-virtual {p1, p2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 169
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->onPluginDisconnected(Lcom/android/systemui/plugins/qs/QSFactory;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/qs/QSFactory;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string v0, "sysui_qs_tiles"

    invoke-virtual {p1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "sysui_qs_tiles"

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "QSTileHost"

    const-string v0, "Recreating tiles"

    .line 250
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->quick_settings_tiles_retail_mode:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 255
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 256
    iget v1, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    .line 258
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    if-eqz v1, :cond_2

    .line 259
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->changeUser(Landroid/os/UserHandle;)V

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-interface {p2, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-ne v0, v1, :cond_3

    return-void

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$tL3GWCpuev-DvXg1noj_yj7fk3Y;

    invoke-direct {v3, p2}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$tL3GWCpuev-DvXg1noj_yj7fk3Y;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$nV3a9GzHlwmibkt4wOBaCI5DZk8;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$nV3a9GzHlwmibkt4wOBaCI5DZk8;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 269
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 270
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 271
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile;

    const-string v6, "Tile not available"

    const-string v7, "Destroying not available tile: "

    if-eqz v5, :cond_9

    .line 272
    instance-of v8, v5, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v8, :cond_5

    move-object v9, v5

    check-cast v9, Lcom/android/systemui/qs/external/CustomTile;

    .line 273
    invoke-virtual {v9}, Lcom/android/systemui/qs/external/CustomTile;->getUser()I

    move-result v9

    if-ne v9, v0, :cond_9

    .line 274
    :cond_5
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 275
    sget-boolean v6, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_6
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    if-nez v8, :cond_7

    .line 277
    iget v6, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-eq v6, v0, :cond_7

    .line 278
    invoke-interface {v5, v0}, Lcom/android/systemui/plugins/qs/QSTile;->userSwitch(I)V

    .line 280
    :cond_7
    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/logging/QSLogger;->logTileAdded(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_8
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    if-eqz v5, :cond_a

    .line 291
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying tile for wrong user: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    const-string v8, "Tile for wrong user"

    invoke-virtual {v5, v4, v8}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating tile: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 299
    invoke-interface {v5, v4}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 300
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 301
    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/logging/QSLogger;->logTileAdded(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :cond_b
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error creating tile for spec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 314
    :cond_c
    iput v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 316
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 317
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 318
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 319
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 320
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "No valid tiles on tuning changed. Setting to default."

    .line 322
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 325
    :cond_d
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_e

    .line 326
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSHost$Callback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost$Callback;->onTilesChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_e
    :goto_2
    return-void
.end method

.method public openPanels()V
    .locals 1

    .line 223
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBarOptional:Ljava/util/Optional;

    sget-object v0, Lcom/android/systemui/qs/-$$Lambda$dlfb7Xnz27iJwNxSQU2fGCzuI2E;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$dlfb7Xnz27iJwNxSQU2fGCzuI2E;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTile(Landroid/content/ComponentName;)V
    .locals 2

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 384
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 385
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public removeTile(Ljava/lang/String;)V
    .locals 1

    .line 333
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$lvnGvThFo7-HeGkbFqhwU9KCtaQ;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$lvnGvThFo7-HeGkbFqhwU9KCtaQ;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTileSpecs(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public unmarkTileAsAutoAdded(Ljava/lang/String;)V
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->unmarkTileAsAutoAdded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
