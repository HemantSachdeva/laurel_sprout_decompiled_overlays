.class final Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "DetailDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/DetailDialog;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/DetailDialog;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/android/systemui/controls/ui/DetailDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$2;->$this_apply:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$2;->$this_apply:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
