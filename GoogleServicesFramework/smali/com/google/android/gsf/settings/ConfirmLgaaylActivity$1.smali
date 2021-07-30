.class Lcom/google/android/gsf/settings/ConfirmLgaaylActivity$1;
.super Ljava/lang/Object;
.source "ConfirmLgaaylActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity$1;->this$0:Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "ConfirmLgaaylActivity"

    const/4 v0, 0x3

    .line 66
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onCancel()"

    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity$1;->this$0:Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 70
    iget-object p0, p0, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity$1;->this$0:Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
