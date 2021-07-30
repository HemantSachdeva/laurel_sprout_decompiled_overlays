.class Lcom/android/systemui/assist/AssistManager$3;
.super Ljava/lang/Object;
.source "AssistManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 167
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {p1}, Lcom/android/systemui/assist/AssistManager;->access$200(Lcom/android/systemui/assist/AssistManager;)Lcom/android/settingslib/applications/InterestingConfigChanges;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {p1}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {p1}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistOrbContainer;->isShowing()Z

    move-result p1

    .line 173
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistManager;->access$300(Lcom/android/systemui/assist/AssistManager;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v2}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move p1, v0

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object v2, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$layout;->assist_orb:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-static {v1, v2}, Lcom/android/systemui/assist/AssistManager;->access$102(Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/assist/AssistOrbContainer;)Lcom/android/systemui/assist/AssistOrbContainer;

    .line 178
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v1

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistManager;->access$400(Lcom/android/systemui/assist/AssistManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v2}, Lcom/android/systemui/assist/AssistManager;->access$300(Lcom/android/systemui/assist/AssistManager;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v3}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_2

    .line 185
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V

    :cond_2
    return-void
.end method
