.class public final Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "NavigationBarTransitions.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;
    }
.end annotation


# instance fields
.field private final mAllowAutoDimWallpaperNotVisible:Z

.field private mAutoDim:Z

.field private mDarkIntensityListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mLightsOut:Z

.field private mNavBarMode:I

.field private mNavButtons:Landroid/view/View;

.field private final mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private final mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

.field private mWallpaperVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 3

    .line 82
    sget v0, Lcom/android/systemui/R$drawable;->nav_background:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavBarMode:I

    .line 70
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 84
    new-instance v1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 85
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;Lcom/android/systemui/statusbar/CommandQueue;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 86
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_navigation_bar_enable_auto_dim_no_visible_wallpaper:I

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAllowAutoDimWallpaperNotVisible:Z

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    .line 90
    const-class p1, Landroid/view/IWindowManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/IWindowManager;

    .line 92
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

    invoke-interface {p1, p2, v0}, Landroid/view/IWindowManager;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisible:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$XJcD0ZRW4UO2juvu7uZcSTj_ILk;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$XJcD0ZRW4UO2juvu7uZcSTj_ILk;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 104
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    sget p2, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZ)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    return-void
.end method

.method private applyLightsOut(ZZ)V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method private applyLightsOut(ZZZ)V
    .locals 1

    if-nez p3, :cond_0

    .line 161
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    if-ne p1, p3, :cond_0

    return-void

    .line 163
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    .line 164
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    if-nez p3, :cond_1

    return-void

    .line 167
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 170
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result p3

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p3, v0

    if-eqz p1, :cond_2

    const v0, 0x3f19999a    # 0.6f

    add-float/2addr p3, v0

    goto :goto_0

    :cond_2
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    if-nez p2, :cond_3

    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const/16 p1, 0x5dc

    goto :goto_1

    :cond_4
    const/16 p1, 0xfa

    .line 177
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 178
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long p1, p1

    .line 179
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    sget p2, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDarkIntensityListener(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;)F
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result p0

    return p0
.end method

.method public applyDarkIntensity(F)V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getButtonDispatchers()Landroid/util/SparseArray;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    .line 192
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setDarkIntensity(F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setDarkIntensity(F)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;

    .line 196
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;->onDarkIntensity(F)V

    goto :goto_1

    .line 198
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 199
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 117
    const-class v0, Landroid/view/IWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/view/IWindowManager;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    return-object p0
.end method

.method public getTintAnimationDuration()I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavBarMode:I

    invoke-static {v0, p0}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x6a4

    const/16 v0, 0x190

    .line 206
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x78

    return p0
.end method

.method public init()V
    .locals 3

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IIZ)V

    const/4 v0, 0x1

    .line 112
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    return-void
.end method

.method protected isLightsOut(I)Z
    .locals 1

    .line 140
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAllowAutoDimWallpaperNotVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisible:Z

    if-nez p0, :cond_0

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic lambda$new$0$NavigationBarTransitions(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavBarMode:I

    return-void
.end method

.method protected onTransition(IIZ)V
    .locals 0

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    const/4 p1, 0x0

    .line 151
    invoke-direct {p0, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onBarTransition(I)V

    return-void
.end method

.method public reapplyDarkIntensity()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyDarkIntensity(F)V

    return-void
.end method

.method public removeDarkIntensityListener(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAutoDim(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavBarMode:I

    invoke-static {v0, v1}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 130
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    return-void
.end method

.method setBackgroundFrame(Landroid/graphics/Rect;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method
