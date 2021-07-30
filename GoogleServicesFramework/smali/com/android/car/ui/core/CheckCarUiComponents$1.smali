.class Lcom/android/car/ui/core/CheckCarUiComponents$1;
.super Landroid/content/BroadcastReceiver;
.source "CheckCarUiComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/core/CheckCarUiComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/ui/core/CheckCarUiComponents;


# direct methods
.method constructor <init>(Lcom/android/car/ui/core/CheckCarUiComponents;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/car/ui/core/CheckCarUiComponents$1;->this$0:Lcom/android/car/ui/core/CheckCarUiComponents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 52
    iget-object p2, p0, Lcom/android/car/ui/core/CheckCarUiComponents$1;->this$0:Lcom/android/car/ui/core/CheckCarUiComponents;

    invoke-static {p2}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$000(Lcom/android/car/ui/core/CheckCarUiComponents;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance p2, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;-><init>(Lcom/android/car/ui/core/CheckCarUiComponents$1;)V

    .line 57
    iget-object p0, p0, Lcom/android/car/ui/core/CheckCarUiComponents$1;->this$0:Lcom/android/car/ui/core/CheckCarUiComponents;

    invoke-static {p0}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$200(Lcom/android/car/ui/core/CheckCarUiComponents;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$300(Lcom/android/car/ui/core/CheckCarUiComponents;Landroid/view/View;Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;)V

    .line 58
    iget-boolean p0, p2, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsUsingCarUiRecyclerView:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p2, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsCarUiRecyclerViewUsingListItem:Z

    if-nez p0, :cond_1

    .line 60
    invoke-static {}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarUiListItem are not used within CarUiRecyclerView: "

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CarUiListItem are not used within CarUiRecyclerView"

    .line 61
    invoke-static {p1, p0}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$500(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    :cond_1
    iget-boolean p0, p2, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsUsingAndroidXRecyclerView:Z

    if-eqz p0, :cond_2

    .line 64
    invoke-static {}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarUiRecyclerView not used: "

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CarUiRecycler is not used"

    .line 65
    invoke-static {p1, p0}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$500(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    :cond_2
    iget-boolean p0, p2, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsUsingCarUiToolbar:Z

    if-nez p0, :cond_3

    .line 68
    invoke-static {}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarUiToolbar is not used: "

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CarUiToolbar is not used"

    .line 69
    invoke-static {p1, p0}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$500(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    :cond_3
    iget-boolean p0, p2, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsUsingCarUiBaseLayoutToolbar:Z

    if-nez p0, :cond_4

    iget-boolean p0, p2, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsUsingCarUiToolbar:Z

    if-eqz p0, :cond_4

    .line 73
    invoke-static {}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarUiBaseLayoutToolbar is not used: "

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CarUiBaseLayoutToolbar is not used"

    .line 74
    invoke-static {p1, p0}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$500(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    :cond_4
    iget-boolean p0, p2, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsUsingCarUiRecyclerViewForPreference:Z

    if-eqz p0, :cond_5

    iget-boolean p0, p2, Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;->mIsUsingCarUiPreference:Z

    if-nez p0, :cond_5

    .line 78
    invoke-static {}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p2, "CarUiPreference is not used: "

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CarUiPreference is not used"

    .line 79
    invoke-static {p1, p0}, Lcom/android/car/ui/core/CheckCarUiComponents;->access$500(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
