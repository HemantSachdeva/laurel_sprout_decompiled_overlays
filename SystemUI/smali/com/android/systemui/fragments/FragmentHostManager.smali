.class public Lcom/android/systemui/fragments/FragmentHostManager;
.super Ljava/lang/Object;
.source "FragmentHostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;,
        Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;,
        Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
    }
.end annotation


# instance fields
.field private final mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private final mContext:Landroid/content/Context;

.field private mFragments:Landroid/app/FragmentController;

.field private final mHandler:Landroid/os/Handler;

.field private mLifecycleCallbacks:Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mManager:Lcom/android/systemui/fragments/FragmentService;

.field private final mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;

.field private final mRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    .line 55
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v1, -0x3ffffcfc    # -2.000184f

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 60
    new-instance v0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;-><init>(Lcom/android/systemui/fragments/FragmentHostManager;)V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mContext:Landroid/content/Context;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mManager:Lcom/android/systemui/fragments/FragmentService;

    .line 68
    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mRootView:Landroid/view/View;

    .line 69
    iget-object p1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    const/4 p1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->createFragmentHost(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fragments/FragmentHostManager;Landroid/app/Fragment;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->onFragmentViewCreated(Landroid/app/Fragment;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/fragments/FragmentHostManager;Landroid/app/Fragment;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->onFragmentViewDestroyed(Landroid/app/Fragment;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/fragments/FragmentHostManager;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/fragments/FragmentHostManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/fragments/FragmentHostManager;)Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/fragments/FragmentHostManager;I)Landroid/view/View;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/fragments/FragmentHostManager;)Lcom/android/systemui/fragments/FragmentService;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mManager:Lcom/android/systemui/fragments/FragmentService;

    return-object p0
.end method

.method private createFragmentHost(Landroid/os/Parcelable;)V
    .locals 4

    .line 74
    new-instance v0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;

    invoke-direct {v0, p0}, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;-><init>(Lcom/android/systemui/fragments/FragmentHostManager;)V

    invoke-static {v0}, Landroid/app/FragmentController;->createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    .line 76
    new-instance v0, Lcom/android/systemui/fragments/FragmentHostManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fragments/FragmentHostManager$1;-><init>(Lcom/android/systemui/fragments/FragmentHostManager;)V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mLifecycleCallbacks:Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mLifecycleCallbacks:Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p1}, Landroid/app/FragmentController;->dispatchCreate()V

    .line 100
    iget-object p1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p1}, Landroid/app/FragmentController;->dispatchStart()V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/FragmentController;->dispatchResume()V

    return-void
.end method

.method private destroyFragmentHost()Landroid/os/Parcelable;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchPause()V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->dispatchStop()V

    .line 108
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->dispatchDestroy()V

    .line 109
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mLifecycleCallbacks:Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0}, Landroid/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;)V

    return-object v0
.end method

.method private dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 170
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 1

    .line 206
    :try_start_0
    const-class v0, Lcom/android/systemui/fragments/FragmentService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 209
    throw p0
.end method

.method static synthetic lambda$onFragmentViewCreated$0(Ljava/lang/String;Landroid/app/Fragment;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V
    .locals 0

    .line 140
    invoke-interface {p2, p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;->onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method

.method static synthetic lambda$onFragmentViewDestroyed$1(Ljava/lang/String;Landroid/app/Fragment;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V
    .locals 0

    .line 149
    invoke-interface {p2, p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;->onFragmentViewDestroyed(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method

.method private onFragmentViewCreated(Landroid/app/Fragment;)V
    .locals 2

    .line 136
    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 140
    new-instance v1, Lcom/android/systemui/fragments/-$$Lambda$FragmentHostManager$OsWXqtcfRJZBAvEEeN8CG6EN5T4;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/fragments/-$$Lambda$FragmentHostManager$OsWXqtcfRJZBAvEEeN8CG6EN5T4;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private onFragmentViewDestroyed(Landroid/app/Fragment;)V
    .locals 2

    .line 145
    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 149
    new-instance v1, Lcom/android/systemui/fragments/-$$Lambda$FragmentHostManager$AcJHY99nHc-JEzu3q8ny-wMOZ4E;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/fragments/-$$Lambda$FragmentHostManager$AcJHY99nHc-JEzu3q8ny-wMOZ4E;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public static removeAndDestroy(Landroid/view/View;)V
    .locals 1

    .line 214
    const-class v0, Lcom/android/systemui/fragments/FragmentService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/fragments/FragmentService;->removeAndDestroy(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    invoke-interface {p2, p1, v0}, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;->onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V

    :cond_1
    return-object p0
.end method

.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;

    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method destroy()V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/FragmentController;->dispatchDestroy()V

    return-void
.end method

.method getExtensionManager()Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;

    return-object p0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->reloadFragments()V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void
.end method

.method public reloadFragments()V
    .locals 1

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->destroyFragmentHost()Landroid/os/Parcelable;

    move-result-object v0

    .line 221
    invoke-direct {p0, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->createFragmentHost(Landroid/os/Parcelable;)V

    return-void
.end method

.method public removeTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
