.class public Lcom/android/systemui/statusbar/phone/AutoHideController;
.super Ljava/lang/Object;
.source "AutoHideController.java"


# instance fields
.field private final mAutoHide:Ljava/lang/Runnable;

.field private mAutoHideSuspended:Z

.field private mDisplayId:I

.field private final mHandler:Landroid/os/Handler;

.field private mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

.field private mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$sJYAhc6qJ_sO_ZdtlpSd2BPK504;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$sJYAhc6qJ_sO_ZdtlpSd2BPK504;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    return-void
.end method

.method private cancelAutoHide()V
    .locals 1

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCheckBarModesRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$Dw54NegELGCFcbvVgChoOa9gkLA;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$Dw54NegELGCFcbvVgChoOa9gkLA;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$FON87SM6b4--2jIBTAjBTcUbKIM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$FON87SM6b4--2jIBTAjBTcUbKIM;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private hideTransientBars()V
    .locals 2

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->hideTransientBars(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AutoHideController"

    const-string v1, "Cannot get WindowManager"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->hide()V

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p0, :cond_1

    .line 88
    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->hide()V

    :cond_1
    return-void
.end method

.method private isAnyTransientBarShown()Z
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$getCheckBarModesRunnable$1()V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->synchronizeState()V

    return-void
.end method

.method private synthetic lambda$getCheckBarModesRunnable$2()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->synchronizeState()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hideTransientBars()V

    :cond_0
    return-void
.end method

.method private scheduleAutoHide()V
    .locals 3

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x8ca

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private userAutoHide()V
    .locals 3

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method checkUserAutoHide(Landroid/view/MotionEvent;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_1

    .line 147
    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->shouldHideOnTouch()Z

    move-result v0

    and-int/2addr p1, v0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_2

    .line 150
    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->shouldHideOnTouch()Z

    move-result v0

    and-int/2addr p1, v0

    :cond_2
    if-eqz p1, :cond_3

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->userAutoHide()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$getCheckBarModesRunnable$1$AutoHideController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->lambda$getCheckBarModesRunnable$1()V

    return-void
.end method

.method public synthetic lambda$getCheckBarModesRunnable$2$AutoHideController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->lambda$getCheckBarModesRunnable$2()V

    return-void
.end method

.method public synthetic lambda$new$0$AutoHideController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->lambda$new$0()V

    return-void
.end method

.method resumeSuspendedAutoHide()V
    .locals 3

    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->scheduleAutoHide()V

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setNavigationBar(Lcom/android/systemui/statusbar/AutoHideUiElement;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/AutoHideUiElement;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    return-void
.end method

.method suspendAutoHide()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    return-void
.end method

.method public touchAutoHide()V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->scheduleAutoHide()V

    goto :goto_0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    :goto_0
    return-void
.end method
