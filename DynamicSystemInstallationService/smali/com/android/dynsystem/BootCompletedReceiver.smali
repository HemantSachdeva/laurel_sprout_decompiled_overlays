.class public Lcom/android/dynsystem/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BootCompletedReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private featureFlagEnabled()Z
    .locals 2

    .line 63
    const-string v0, "persist.sys.fflag.override.settings_dynamic_system"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    return-void

    .line 46
    :cond_0
    nop

    .line 47
    const-string v1, "dynamic_system"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/image/DynamicSystemManager;

    .line 49
    .local v1, "dynSystem":Landroid/os/image/DynamicSystemManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/image/DynamicSystemManager;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 51
    .local v2, "isInUse":Z
    :goto_0
    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/dynsystem/BootCompletedReceiver;->featureFlagEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 52
    return-void

    .line 55
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/dynsystem/DynamicSystemInstallationService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v3, "startServiceIntent":Landroid/content/Intent;
    const-string v4, "android.os.image.action.NOTIFY_IF_IN_USE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 60
    return-void
.end method
