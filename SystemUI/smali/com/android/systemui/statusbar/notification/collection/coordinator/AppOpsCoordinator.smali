.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;
.super Ljava/lang/Object;
.source "AppOpsCoordinator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field private final mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

.field private final mForegroundLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

.field private final mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

.field private final mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$1;

    const-string v1, "AppOpsCoordinator"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    .line 181
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 68
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 69
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)Lcom/android/systemui/ForegroundServiceController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    return-object p0
.end method

.method private findNotificationEntryWithKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 2

    .line 248
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 249
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleAppOpsChanged(IILjava/lang/String;Z)V
    .locals 5

    .line 220
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 222
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 226
    invoke-virtual {v1, v0, p3}, Lcom/android/systemui/ForegroundServiceController;->getStandardLayoutKeys(ILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    move v2, v1

    .line 229
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 230
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->findNotificationEntryWithKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 232
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    if-ne p2, v4, :cond_1

    .line 233
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p4, :cond_0

    .line 235
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 237
    :cond_0
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    or-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 242
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList()V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$-g1CviyimAy6Lv0tcSLFbIg1yos(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->onAppOpsChanged(IILjava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onAppOpsChanged$0(IILjava/lang/String;Z)V
    .locals 0

    .line 208
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->handleAppOpsChanged(IILjava/lang/String;Z)V

    return-void
.end method

.method private onAppOpsChanged(IILjava/lang/String;Z)V
    .locals 8

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/-$$Lambda$AppOpsCoordinator$CPW_3xjRRxO_V4fyqQUDt5CLJDM;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/-$$Lambda$AppOpsCoordinator$CPW_3xjRRxO_V4fyqQUDt5CLJDM;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;IILjava/lang/String;Z)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    .line 80
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 83
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v0, Lcom/android/systemui/ForegroundServiceController;->APP_OPS:[I

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/-$$Lambda$AppOpsCoordinator$-g1CviyimAy6Lv0tcSLFbIg1yos;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/-$$Lambda$AppOpsCoordinator$-g1CviyimAy6Lv0tcSLFbIg1yos;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)V

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/appops/AppOpsController;->addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    return-void
.end method

.method public synthetic lambda$onAppOpsChanged$0$AppOpsCoordinator(IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->lambda$onAppOpsChanged$0(IILjava/lang/String;Z)V

    return-void
.end method
