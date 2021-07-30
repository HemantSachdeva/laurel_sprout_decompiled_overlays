.class Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupRestoreConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/backupconfirm/BackupRestoreConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;Landroid/os/Handler;)V
    .locals 0

    .line 344
    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEndBackup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onEndRestore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartBackup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStartRestore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTimeout()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method
