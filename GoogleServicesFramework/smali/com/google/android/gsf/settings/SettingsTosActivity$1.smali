.class Lcom/google/android/gsf/settings/SettingsTosActivity$1;
.super Ljava/lang/Object;
.source "SettingsTosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/settings/SettingsTosActivity;->makeTosDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/settings/SettingsTosActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/settings/SettingsTosActivity;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/google/android/gsf/settings/SettingsTosActivity$1;->this$0:Lcom/google/android/gsf/settings/SettingsTosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/google/android/gsf/settings/SettingsTosActivity$1;->this$0:Lcom/google/android/gsf/settings/SettingsTosActivity;

    invoke-static {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->access$000(Lcom/google/android/gsf/settings/SettingsTosActivity;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/google/android/common/GoogleWebContentHelper;->handleKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
