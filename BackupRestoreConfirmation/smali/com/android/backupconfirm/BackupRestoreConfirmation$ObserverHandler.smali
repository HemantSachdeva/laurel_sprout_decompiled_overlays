.class Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;
.super Landroid/os/Handler;
.source "BackupRestoreConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/backupconfirm/BackupRestoreConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObserverHandler"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;


# direct methods
.method constructor <init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;Landroid/content/Context;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->mContext:Landroid/content/Context;

    const/4 p0, 0x0

    .line 87
    iput-boolean p0, p1, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    iget-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->mContext:Landroid/content/Context;

    const v0, 0x7f030011

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 123
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 117
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->mContext:Landroid/content/Context;

    const p1, 0x7f030012

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->mContext:Landroid/content/Context;

    const p1, 0x7f030013

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->mContext:Landroid/content/Context;

    const v0, 0x7f03000f

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 106
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 100
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->mContext:Landroid/content/Context;

    const p1, 0x7f030010

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
