.class public Lcom/android/systemui/globalactions/GlobalActionsImpl;
.super Ljava/lang/Object;
.source "GlobalActionsImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/GlobalActions;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabled:Z

.field private mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field private final mGlobalActionsDialogLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mWalletPluginProvider:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<",
            "Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Ldagger/Lazy;Lcom/android/systemui/statusbar/BlurUtils;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog;",
            ">;",
            "Lcom/android/systemui/statusbar/BlurUtils;",
            ")V"
        }
    .end annotation

    .line 64
    const-class v0, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActionsDialogLazy:Ldagger/Lazy;

    .line 67
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 68
    const-class p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 70
    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 71
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 72
    const-class p1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    .line 73
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object p1

    .line 74
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    .line 75
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mWalletPluginProvider:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    return-void
.end method

.method private getReasonMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "recovery-update"

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const p1, 0x10406d4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "recovery"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const p1, 0x10406d0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRebootMessage(ZLjava/lang/String;)I
    .locals 1

    if-eqz p2, :cond_0

    const-string p0, "recovery-update"

    .line 167
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x10406d3

    return p0

    :cond_0
    const p0, 0x10406cf

    if-eqz p2, :cond_1

    const-string v0, "recovery"

    .line 169
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return p0

    :cond_1
    if-eqz p1, :cond_2

    return p0

    :cond_2
    const p0, 0x1040761

    return p0
.end method

.method private synthetic lambda$showShutdownUi$0(Lcom/android/internal/colorextraction/drawable/ScrimDrawable;Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 105
    iget-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x89

    .line 106
    invoke-virtual {p1, p3}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setAlpha(I)V

    .line 107
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 108
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)I

    move-result p0

    .line 107
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/BlurUtils;->applyBlur(Landroid/view/ViewRootImpl;I)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$dimen;->shutdown_scrim_behind_alpha:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    .line 112
    invoke-virtual {p1, p0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setAlpha(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->destroy()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    :cond_0
    return-void
.end method

.method public disable(IIIZ)V
    .locals 0

    and-int/lit8 p2, p3, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 192
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    if-ne p1, p3, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-ne p2, p1, :cond_1

    goto :goto_1

    .line 193
    :cond_1
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz p2, :cond_2

    .line 194
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-eqz p0, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->dismissDialog()V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic lambda$showShutdownUi$0$GlobalActionsImpl(Lcom/android/internal/colorextraction/drawable/ScrimDrawable;Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsImpl;->lambda$showShutdownUi$0(Lcom/android/internal/colorextraction/drawable/ScrimDrawable;Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 2

    .line 89
    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz p1, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActionsDialogLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 92
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mWalletPluginProvider:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    .line 93
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    .line 91
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showOrHideDialog(ZZLcom/android/systemui/plugins/GlobalActionsPanelPlugin;)V

    .line 94
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    return-void
.end method

.method public showShutdownUi(ZLjava/lang/String;)V
    .locals 5

    .line 99
    new-instance v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    invoke-direct {v0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;-><init>()V

    .line 101
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_GlobalActions:I

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 104
    new-instance v2, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsImpl$FGsviRHv4VNB5P1rRHu2A1JPouY;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsImpl$FGsviRHv4VNB5P1rRHu2A1JPouY;-><init>(Lcom/android/systemui/globalactions/GlobalActionsImpl;Lcom/android/internal/colorextraction/drawable/ScrimDrawable;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 117
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    .line 118
    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 119
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v4, v4, 0x700

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 123
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 124
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 125
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 126
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, 0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v3, 0x7e4

    .line 127
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 128
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v3, 0x2

    .line 129
    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    const v3, 0x10d0120

    .line 130
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 137
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    sget v0, Lcom/android/systemui/R$style;->Animation_ShutdownUi:I

    invoke-virtual {v2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    const v0, 0x1090105

    .line 140
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 141
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    const v2, 0x102000d

    .line 146
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 147
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const v2, 0x1020014

    .line 149
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x1020015

    .line 150
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 152
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsImpl;->getRebootMessage(ZLjava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    invoke-direct {p0, p2}, Lcom/android/systemui/globalactions/GlobalActionsImpl;->getReasonMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
