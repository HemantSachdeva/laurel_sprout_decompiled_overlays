.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultRightButton"
.end annotation


# instance fields
.field private mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    new-instance p1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    invoke-direct {p1}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;)V
    .locals 0

    .line 819
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method


# virtual methods
.method public getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;
    .locals 4

    .line 825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraAllowedByAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 826
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 827
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$2000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 828
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 829
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, v3, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$2100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->ic_camera_alt_24dp:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    .line 831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 832
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$2200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_camera_button:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    .line 833
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$2300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    .line 839
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$2300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    .line 840
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$2400()Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object p0
.end method
