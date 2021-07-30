.class Lcom/android/car/ui/core/BaseLayoutController;
.super Ljava/lang/Object;
.source "BaseLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;
    }
.end annotation


# static fields
.field private static final sBaseLayoutMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/android/car/ui/core/BaseLayoutController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInsetsUpdater:Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/car/ui/core/BaseLayoutController;->sBaseLayoutMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-direct {p0, p1}, Lcom/android/car/ui/core/BaseLayoutController;->installBaseLayout(Landroid/app/Activity;)V

    return-void
.end method

.method static build(Landroid/app/Activity;)V
    .locals 2

    .line 77
    sget v0, Lcom/android/car/ui/R$attr;->carUiBaseLayout:I

    invoke-static {p0, v0}, Lcom/android/car/ui/core/BaseLayoutController;->getThemeBoolean(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/android/car/ui/core/BaseLayoutController;->sBaseLayoutMap:Ljava/util/Map;

    new-instance v1, Lcom/android/car/ui/core/BaseLayoutController;

    invoke-direct {v1, p0}, Lcom/android/car/ui/core/BaseLayoutController;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static destroy(Landroid/app/Activity;)V
    .locals 1

    .line 87
    sget-object v0, Lcom/android/car/ui/core/BaseLayoutController;->sBaseLayoutMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static getBaseLayout(Landroid/app/Activity;)Lcom/android/car/ui/core/BaseLayoutController;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/car/ui/core/BaseLayoutController;->sBaseLayoutMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/core/BaseLayoutController;

    return-object p0
.end method

.method private static getThemeBoolean(Landroid/app/Activity;I)Z
    .locals 2

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 168
    :try_start_0
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    throw p1
.end method

.method private installBaseLayout(Landroid/app/Activity;)V
    .locals 7

    .line 119
    sget v0, Lcom/android/car/ui/R$attr;->carUiToolbar:I

    invoke-static {p1, v0}, Lcom/android/car/ui/core/BaseLayoutController;->getThemeBoolean(Landroid/app/Activity;I)Z

    move-result v0

    .line 120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-gt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 125
    sget v3, Lcom/android/car/ui/R$layout;->car_ui_base_layout_toolbar_legacy:I

    goto :goto_1

    .line 126
    :cond_1
    sget v3, Lcom/android/car/ui/R$layout;->car_ui_base_layout_toolbar:I

    goto :goto_1

    .line 128
    :cond_2
    sget v3, Lcom/android/car/ui/R$layout;->car_ui_base_layout:I

    .line 131
    :goto_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    .line 132
    invoke-virtual {v4, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 136
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    .line 135
    invoke-static {v3, v4}, Lcom/android/car/ui/utils/CarUiUtils;->findViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 137
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 139
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 143
    sget v4, Lcom/android/car/ui/R$id;->content:I

    invoke-static {v2, v4}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 144
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 150
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar:I

    invoke-static {v2, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/ToolbarController;

    goto :goto_2

    .line 152
    :cond_3
    new-instance v0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-direct {v0, v2}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;-><init>(Landroid/view/View;)V

    .line 156
    :cond_4
    :goto_2
    new-instance v0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;

    invoke-direct {v0, p1, v2, v3}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController;->mInsetsUpdater:Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;

    .line 157
    invoke-virtual {v0}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->installListeners()V

    return-void
.end method


# virtual methods
.method dispatchNewInsets(Lcom/android/car/ui/baselayout/Insets;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/car/ui/core/BaseLayoutController;->mInsetsUpdater:Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->dispatchNewInsets(Lcom/android/car/ui/baselayout/Insets;)V

    return-void
.end method

.method getInsets()Lcom/android/car/ui/baselayout/Insets;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/car/ui/core/BaseLayoutController;->mInsetsUpdater:Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;

    invoke-virtual {p0}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getInsets()Lcom/android/car/ui/baselayout/Insets;

    move-result-object p0

    return-object p0
.end method
