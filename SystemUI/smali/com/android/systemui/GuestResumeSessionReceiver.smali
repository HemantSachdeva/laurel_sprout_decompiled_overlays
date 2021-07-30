.class public Lcom/android/systemui/GuestResumeSessionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GuestResumeSessionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
    }
.end annotation


# static fields
.field private static m_pDialog:Landroid/app/ProgressDialog;


# instance fields
.field private mNewSessionDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/android/systemui/GuestResumeSessionReceiver;->wipeGuestSession(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100()Landroid/app/ProgressDialog;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/systemui/GuestResumeSessionReceiver;->m_pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 43
    sput-object p0, Lcom/android/systemui/GuestResumeSessionReceiver;->m_pDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private cancelDialog()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private static wipeGuestSession(Landroid/content/Context;I)V
    .locals 5

    const-string v0, "GuestResumeSessionReceiver"

    const-string v1, "user"

    .line 104
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 107
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const-string v4, "User requesting to start a new session ("

    if-eq v3, p1, :cond_0

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not current user ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 117
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not a guest"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_1
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t mark the guest for deletion for user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_2
    iget-object p1, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_3

    :try_start_1
    const-string p0, "Could not create new guest, switching back to system user"

    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 134
    iget p0, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, p0}, Landroid/os/UserManager;->removeUser(I)Z

    .line 135
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    return-void

    .line 138
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 139
    iget p0, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, p0}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string p0, "Couldn\'t wipe session because ActivityManager or WindowManager is dead"

    .line 141
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p0, "Couldn\'t wipe session because ActivityManager is dead"

    .line 109
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/GuestResumeSessionReceiver;->cancelDialog()V

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    .line 69
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " sent to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GuestResumeSessionReceiver"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " without EXTRA_USER_HANDLE"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v1, 0x0

    const-string v2, "systemui.guest_has_logged_in"

    .line 86
    invoke-static {p2, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    new-instance p2, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    .line 90
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    .line 92
    invoke-static {p2, v2, p0, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    nop

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public register(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 3

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method
