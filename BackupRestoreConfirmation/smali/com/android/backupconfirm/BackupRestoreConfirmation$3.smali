.class Lcom/android/backupconfirm/BackupRestoreConfirmation$3;
.super Ljava/lang/Object;
.source "BackupRestoreConfirmation.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/backupconfirm/BackupRestoreConfirmation;->monitorEncryptionPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;


# direct methods
.method constructor <init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$3;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$3;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAllowButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mEncPassword:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
