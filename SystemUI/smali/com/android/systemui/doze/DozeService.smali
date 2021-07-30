.class public Lcom/android/systemui/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Service;
.implements Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/dreams/DreamService;",
        "Lcom/android/systemui/doze/DozeMachine$Service;",
        "Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/DozeServicePlugin;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final mDozeFactory:Lcom/android/systemui/doze/DozeFactory;

.field private mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

.field private mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

.field private mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DozeService"

    const/4 v1, 0x3

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeFactory;Lcom/android/systemui/shared/plugins/PluginManager;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 47
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setDebug(Z)V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozeFactory:Lcom/android/systemui/doze/DozeFactory;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/systemui/doze/DozeMachine;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 54
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setWindowless(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/DozeServicePlugin;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeFactory:Lcom/android/systemui/doze/DozeFactory;

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/DozeFactory;->assembleMachine(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 67
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDestroy()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->destroy()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 90
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->startDozing()V

    .line 91
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    if-eqz p0, :cond_0

    .line 92
    invoke-interface {p0}, Lcom/android/systemui/plugins/DozeServicePlugin;->onDreamingStarted()V

    :cond_0
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 100
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeService"

    const-string v1, "request to finish in onDreamingStopped"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 105
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    if-eqz p0, :cond_1

    .line 106
    invoke-interface {p0}, Lcom/android/systemui/plugins/DozeServicePlugin;->onDreamingStopped()V

    :cond_1
    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/DozeServicePlugin;Landroid/content/Context;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    .line 75
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/DozeServicePlugin;->setDozeRequester(Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/systemui/plugins/DozeServicePlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/doze/DozeService;->onPluginConnected(Lcom/android/systemui/plugins/DozeServicePlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/DozeServicePlugin;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    if-eqz p1, :cond_0

    .line 81
    invoke-interface {p1}, Lcom/android/systemui/plugins/DozeServicePlugin;->onDreamingStopped()V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    :cond_0
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/systemui/plugins/DozeServicePlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeService;->onPluginDisconnected(Lcom/android/systemui/plugins/DozeServicePlugin;)V

    return-void
.end method

.method public onRequestHideDoze()V
    .locals 1

    .line 134
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    if-eqz p0, :cond_0

    .line 135
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

.method public onRequestShowDoze()V
    .locals 1

    .line 127
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    if-eqz p0, :cond_0

    .line 128
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

.method public requestWakeUp()V
    .locals 4

    .line 120
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string v3, "com.android.systemui:NODOZE"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method
