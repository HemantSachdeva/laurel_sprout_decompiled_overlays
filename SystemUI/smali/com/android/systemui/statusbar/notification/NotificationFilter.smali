.class public Lcom/android/systemui/statusbar/notification/NotificationFilter;
.super Ljava/lang/Object;
.source "NotificationFilter.java"


# instance fields
.field private mEnvironment:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

.field private mFsc:Lcom/android/systemui/ForegroundServiceController;

.field private final mIsMediaFlagEnabled:Ljava/lang/Boolean;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/media/MediaFeatureFlag;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 64
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaFeatureFlag;->getEnabled()Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mIsMediaFlagEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method private static checkUidPermission(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)I
    .locals 0

    .line 169
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private getEnvironment()Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mEnvironment:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    if-nez v0, :cond_0

    .line 69
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mEnvironment:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mEnvironment:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    return-object p0
.end method

.method private getFsc()Lcom/android/systemui/ForegroundServiceController;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    if-nez v0, :cond_0

    .line 83
    const-class v0, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    return-object p0
.end method

.method private getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    if-nez v0, :cond_0

    .line 90
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method

.method static showNotificationEvenIfUnprovisioned(Landroid/content/pm/IPackageManager;Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 162
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    const-string v1, "android.permission.NOTIFICATION_DURING_SETUP"

    .line 161
    invoke-static {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->checkUidPermission(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.allowDuringSetup"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 155
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->showNotificationEvenIfUnprovisioned(Landroid/content/pm/IPackageManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    .line 100
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getEnvironment()Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;->isDeviceProvisioned()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 102
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getEnvironment()Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v2

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressAmbient()Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationList()Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 125
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    .line 129
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getFsc()Lcom/android/systemui/ForegroundServiceController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/ForegroundServiceController;->isDisclosureNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getFsc()Lcom/android/systemui/ForegroundServiceController;

    move-result-object p1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/ForegroundServiceController;->isDisclosureNeededForUser(I)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    .line 134
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getFsc()Lcom/android/systemui/ForegroundServiceController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/ForegroundServiceController;->isSystemAlertNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 135
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.foregroundApps"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 137
    array-length v3, p1

    if-lt v3, v2, :cond_8

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getFsc()Lcom/android/systemui/ForegroundServiceController;

    move-result-object v3

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    aget-object p1, p1, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/systemui/ForegroundServiceController;->isSystemAlertWarningNeeded(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    .line 144
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mIsMediaFlagEnabled:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v0}, Lcom/android/systemui/media/MediaDataManagerKt;->isMediaNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v2

    :cond_9
    return v1
.end method
