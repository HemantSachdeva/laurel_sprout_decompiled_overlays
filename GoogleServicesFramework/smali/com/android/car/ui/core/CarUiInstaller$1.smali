.class Lcom/android/car/ui/core/CarUiInstaller$1;
.super Ljava/lang/Object;
.source "CarUiInstaller.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/ui/core/CarUiInstaller;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mInsets:Lcom/android/car/ui/baselayout/Insets;

.field private mIsActivityStartedForFirstTime:Z


# direct methods
.method constructor <init>(Lcom/android/car/ui/core/CarUiInstaller;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->mIsActivityStartedForFirstTime:Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/car/ui/core/CarUiInstaller;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1}, Lcom/android/car/ui/core/BaseLayoutController;->build(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string v0, "build"

    .line 78
    invoke-static {v0, p1}, Lcom/android/car/ui/core/CarUiInstaller;->access$000(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    if-eqz p2, :cond_1

    const-string p1, "CAR_UI_INSET_LEFT"

    .line 82
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "CAR_UI_INSET_TOP"

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "CAR_UI_INSET_RIGHT"

    .line 84
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "CAR_UI_INSET_BOTTOM"

    .line 85
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 86
    new-instance v2, Lcom/android/car/ui/baselayout/Insets;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/android/car/ui/baselayout/Insets;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    :cond_1
    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->mIsActivityStartedForFirstTime:Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-class v0, Lcom/android/car/ui/core/CarUiInstaller;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 134
    invoke-static {p1}, Lcom/android/car/ui/core/BaseLayoutController;->destroy(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string p0, "destroy"

    .line 136
    invoke-static {p0, p1}, Lcom/android/car/ui/core/CarUiInstaller;->access$000(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 2

    .line 94
    invoke-static {p1}, Lcom/android/car/ui/core/CarUi;->getBaseLayoutController(Landroid/app/Activity;)Lcom/android/car/ui/core/BaseLayoutController;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->mIsActivityStartedForFirstTime:Z

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1, v0}, Lcom/android/car/ui/core/BaseLayoutController;->dispatchNewInsets(Lcom/android/car/ui/baselayout/Insets;)V

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->mIsActivityStartedForFirstTime:Z

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 120
    invoke-static {p1}, Lcom/android/car/ui/core/CarUi;->getBaseLayoutController(Landroid/app/Activity;)Lcom/android/car/ui/core/BaseLayoutController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/car/ui/core/BaseLayoutController;->getInsets()Lcom/android/car/ui/baselayout/Insets;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Lcom/android/car/ui/baselayout/Insets;->getLeft()I

    move-result p1

    const-string v0, "CAR_UI_INSET_LEFT"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/car/ui/baselayout/Insets;->getTop()I

    move-result p1

    const-string v0, "CAR_UI_INSET_TOP"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/car/ui/baselayout/Insets;->getRight()I

    move-result p1

    const-string v0, "CAR_UI_INSET_RIGHT"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/car/ui/baselayout/Insets;->getBottom()I

    move-result p0

    const-string p1, "CAR_UI_INSET_BOTTOM"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
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
