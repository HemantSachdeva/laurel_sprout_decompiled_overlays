.class Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity$1;
.super Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;
.source "AutomotiveWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity$1;->this$0:Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;

    invoke-direct {p0}, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Ljava/lang/String;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity$1;->this$0:Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;

    invoke-static {v0}, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;->access$000(Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity$1;->this$0:Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;

    const v1, 0x7f090143

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object p0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity$1;->this$0:Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const p1, 0x7f0f004f

    .line 55
    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onUriBlocked(Landroid/net/Uri;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/android/car/ui/AlertDialogBuilder;

    iget-object p0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity$1;->this$0:Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;

    invoke-direct {v0, p0}, Lcom/android/car/ui/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0f0058

    .line 62
    invoke-virtual {v0, p0}, Lcom/android/car/ui/AlertDialogBuilder;->setTitle(I)Lcom/android/car/ui/AlertDialogBuilder;

    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/car/ui/AlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/car/ui/AlertDialogBuilder;

    .line 64
    invoke-virtual {v0}, Lcom/android/car/ui/AlertDialogBuilder;->show()Landroid/app/AlertDialog;

    return-void
.end method
