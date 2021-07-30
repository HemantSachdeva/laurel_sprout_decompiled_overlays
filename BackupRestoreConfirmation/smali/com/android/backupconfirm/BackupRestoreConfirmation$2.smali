.class Lcom/android/backupconfirm/BackupRestoreConfirmation$2;
.super Ljava/lang/Object;
.source "BackupRestoreConfirmation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/backupconfirm/BackupRestoreConfirmation;->setViews(Landroid/content/Intent;Landroid/os/Bundle;)V
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

    .line 234
    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$2;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 237
    iget-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$2;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget v0, p1, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mToken:I

    iget-object v1, p1, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->sendAcknowledgement(IZLandroid/app/backup/IFullBackupRestoreObserver;)V

    .line 238
    iget-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$2;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget-object p1, p1, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAllowButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    iget-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$2;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget-object p1, p1, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDenyButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$2;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
