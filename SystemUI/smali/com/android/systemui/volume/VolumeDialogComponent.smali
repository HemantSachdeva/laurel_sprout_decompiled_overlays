.class public Lcom/android/systemui/volume/VolumeDialogComponent;
.super Ljava/lang/Object;
.source "VolumeDialogComponent.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeComponent;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;


# instance fields
.field private final mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field protected final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

.field private mDialog:Lcom/android/systemui/plugins/VolumeDialog;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final mVolumeDialogCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

.field private mVolumePolicy:Landroid/media/VolumePolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 4

    .line 76
    const-class v0, Lcom/android/systemui/plugins/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v2, -0x3ffffdfc    # -2.000123f

    invoke-direct {v1, v2}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 67
    new-instance v1, Landroid/media/VolumePolicy;

    const/4 v2, 0x0

    const/16 v3, 0x190

    invoke-direct {v1, v2, v2, v2, v3}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 181
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogComponent$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogComponent$1;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 79
    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 80
    invoke-virtual {p3, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setUserActivityListener(Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;)V

    .line 82
    const-class p1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class p2, Lcom/android/systemui/plugins/VolumeDialogController;

    .line 83
    invoke-virtual {p1, p2}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 84
    const-class p1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object p1

    .line 85
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    new-instance p2, Lcom/android/systemui/volume/-$$Lambda$5eQ6FmuY0CORdNfZebXQAtrsfI4;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/-$$Lambda$5eQ6FmuY0CORdNfZebXQAtrsfI4;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    .line 86
    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    new-instance p2, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$vZvGMkdhFGTZ9hLE1BnozIW6Wb0;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$vZvGMkdhFGTZ9hLE1BnozIW6Wb0;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    .line 87
    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withCallback(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    .line 93
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->applyConfiguration()V

    .line 95
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string p2, "sysui_volume_down_silent"

    const-string p3, "sysui_volume_up_silent"

    const-string v0, "sysui_do_not_disturb"

    filled-new-array {p2, p3, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Intent;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogComponent;->startSettings(Landroid/content/Intent;)V

    return-void
.end method

.method private applyConfiguration()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 146
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->showDndTile(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/systemui/plugins/VolumeDialog;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialog;->destroy()V

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    const/16 v0, 0x7e4

    .line 92
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/plugins/VolumeDialog;->init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V

    return-void
.end method

.method private setVolumePolicy(ZZZI)V
    .locals 1

    .line 130
    new-instance v0, Landroid/media/VolumePolicy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    return-void
.end method

.method private startSettings(Landroid/content/Intent;)V
    .locals 1

    .line 177
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    return-void
.end method


# virtual methods
.method protected createDefault()Lcom/android/systemui/plugins/VolumeDialog;
    .locals 2

    .line 100
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportant(IZ)V

    .line 102
    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->setAutomute(Z)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setSilentMode(Z)V

    return-object v0
.end method

.method public dismissNow()V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->dismiss()V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$new$0$VolumeDialogComponent(Lcom/android/systemui/plugins/VolumeDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogComponent;->lambda$new$0(Lcom/android/systemui/plugins/VolumeDialog;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v1, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    .line 110
    iget-boolean v2, v0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    .line 111
    iget-boolean v0, v0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    const-string v3, "sysui_volume_down_silent"

    .line 113
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 115
    invoke-static {p2, v4}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_0
    const-string v3, "sysui_volume_up_silent"

    .line 116
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-static {p2, v4}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_1
    const-string v3, "sysui_do_not_disturb"

    .line 119
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    invoke-static {p2, v4}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result v0

    .line 124
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget p1, p1, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    return-void
.end method

.method public onUserActivity()V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    return-void
.end method

.method public register()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->register()V

    .line 169
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/DndTile;->setCombinedIcon(Landroid/content/Context;Z)V

    return-void
.end method

.method setEnableDialogs(ZZ)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setEnableDialogs(ZZ)V

    return-void
.end method
