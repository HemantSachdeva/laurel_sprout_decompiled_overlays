.class Lcom/android/car/ui/core/CheckCarUiComponents;
.super Ljava/lang/Object;
.source "CheckCarUiComponents.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/core/CheckCarUiComponents$Predicate;,
        Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsScreenVisible:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/car/ui/core/CheckCarUiComponents;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/ui/core/CheckCarUiComponents;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/car/ui/core/CheckCarUiComponents$1;

    invoke-direct {v0, p0}, Lcom/android/car/ui/core/CheckCarUiComponents$1;-><init>(Lcom/android/car/ui/core/CheckCarUiComponents;)V

    iput-object v0, p0, Lcom/android/car/ui/core/CheckCarUiComponents;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.car.ui.intent.CHECK_CAR_UI_COMPONENTS"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcom/android/car/ui/core/CheckCarUiComponents;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/ui/core/CheckCarUiComponents;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/car/ui/core/CheckCarUiComponents;->mIsScreenVisible:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/car/ui/core/CheckCarUiComponents;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/car/ui/core/CheckCarUiComponents;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/car/ui/core/CheckCarUiComponents;Landroid/view/View;Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/core/CheckCarUiComponents;->checkForCarUiComponents(Landroid/view/View;Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/car/ui/core/CheckCarUiComponents;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/android/car/ui/core/CheckCarUiComponents;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private checkForCarUiComponents(Landroid/view/View;Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;)V
    .locals 0

    .line 126
    new-instance p0, Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$u3xGutb3VgNGu17dA7lErOZHnt8;

    invoke-direct {p0, p2}, Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$u3xGutb3VgNGu17dA7lErOZHnt8;-><init>(Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;)V

    invoke-static {p1, p0}, Lcom/android/car/ui/core/CheckCarUiComponents;->viewHasChildMatching(Landroid/view/View;Lcom/android/car/ui/core/CheckCarUiComponents$Predicate;)Z

    return-void
.end method

.method private static isAndroidXRecyclerView(Landroid/view/View;)Z
    .locals 1

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCarUiBaseLayoutToolbar(Landroid/view/View;)Z
    .locals 1

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarUiBaseLayoutToolbar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCarUiListItem(Landroid/view/View;)Z
    .locals 1

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "carUiListItem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCarUiPreference(Landroid/view/View;)Z
    .locals 1

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "carUiPreference"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCarUiRecyclerView(Landroid/view/View;)Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "carUiRecyclerView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCarUiToolbar(Landroid/view/View;)Z
    .locals 2

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carUiToolbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarUiBaseLayoutToolbar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$LQ0QJ1uqNsfWejQq2fxWuLySBiU(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/car/ui/core/CheckCarUiComponents;->isCarUiListItem(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$NVhRkAsVZLAico2oOqC8mqdd93I(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/car/ui/core/CheckCarUiComponents;->isCarUiPreference(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$checkForCarUiComponents$0(Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;Landroid/view/View;)Z
    .locals 3

    .line 127
    invoke-static {p1}, Lcom/android/car/ui/core/CheckCarUiComponents;->isCarUiRecyclerView(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 128
    iput-boolean v2, p0, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsUsingCarUiRecyclerView:Z

    .line 130
    sget-object v0, Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$NVhRkAsVZLAico2oOqC8mqdd93I;->INSTANCE:Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$NVhRkAsVZLAico2oOqC8mqdd93I;

    invoke-static {p1, v0}, Lcom/android/car/ui/core/CheckCarUiComponents;->viewHasChildMatching(Landroid/view/View;Lcom/android/car/ui/core/CheckCarUiComponents$Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iput-boolean v2, p0, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsUsingCarUiPreference:Z

    return v1

    .line 135
    :cond_0
    sget-object v0, Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$LQ0QJ1uqNsfWejQq2fxWuLySBiU;->INSTANCE:Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$LQ0QJ1uqNsfWejQq2fxWuLySBiU;

    invoke-static {p1, v0}, Lcom/android/car/ui/core/CheckCarUiComponents;->viewHasChildMatching(Landroid/view/View;Lcom/android/car/ui/core/CheckCarUiComponents$Predicate;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsCarUiRecyclerViewUsingListItem:Z

    return v1

    .line 140
    :cond_1
    invoke-static {p1}, Lcom/android/car/ui/core/CheckCarUiComponents;->isAndroidXRecyclerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iput-boolean v2, p0, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsUsingAndroidXRecyclerView:Z

    .line 144
    :cond_2
    invoke-static {p1}, Lcom/android/car/ui/core/CheckCarUiComponents;->isCarUiToolbar(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    iput-boolean v2, p0, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsUsingCarUiToolbar:Z

    .line 148
    :cond_3
    invoke-static {p1}, Lcom/android/car/ui/core/CheckCarUiComponents;->isCarUiBaseLayoutToolbar(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 149
    iput-boolean v2, p0, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsUsingCarUiBaseLayoutToolbar:Z

    :cond_4
    return v1
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 198
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static viewHasChildMatching(Landroid/view/View;Lcom/android/car/ui/core/CheckCarUiComponents$Predicate;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/car/ui/core/CheckCarUiComponents$Predicate<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 159
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/car/ui/core/CheckCarUiComponents$Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 162
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    move v1, v0

    .line 163
    :goto_0
    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 164
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/car/ui/core/CheckCarUiComponents;->viewHasChildMatching(Landroid/view/View;Lcom/android/car/ui/core/CheckCarUiComponents$Predicate;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/car/ui/core/CheckCarUiComponents;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/ui/utils/CarUiUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/android/car/ui/core/CheckCarUiComponents;->mRootView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/android/car/ui/core/CheckCarUiComponents;->mIsScreenVisible:Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/core/CheckCarUiComponents;->mRootView:Landroid/view/View;

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/android/car/ui/core/CheckCarUiComponents;->mIsScreenVisible:Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
