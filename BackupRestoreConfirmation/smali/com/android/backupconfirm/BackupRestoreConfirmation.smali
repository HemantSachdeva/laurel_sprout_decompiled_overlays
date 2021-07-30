.class public Lcom/android/backupconfirm/BackupRestoreConfirmation;
.super Landroid/app/Activity;
.source "BackupRestoreConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;,
        Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;
    }
.end annotation


# instance fields
.field mAction:Ljava/lang/String;

.field mAllowButton:Landroid/widget/Button;

.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mCurPassword:Landroid/widget/TextView;

.field mDenyButton:Landroid/widget/Button;

.field mDidAcknowledge:Z

.field mEncPassword:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field mIsEncrypted:Z

.field mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

.field mStatusView:Landroid/widget/TextView;

.field mStorageManager:Landroid/os/storage/IStorageManager;

.field mToken:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private monitorEncryptionPassword()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAllowButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mEncPassword:Landroid/widget/TextView;

    new-instance v1, Lcom/android/backupconfirm/BackupRestoreConfirmation$3;

    invoke-direct {v1, p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation$3;-><init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private setTokenOrFinish(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "conftoken"

    const/4 v1, -0x1

    .line 175
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mToken:I

    if-eqz p2, :cond_0

    const-string v0, "token"

    .line 179
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mToken:I

    .line 182
    :cond_0
    iget p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mToken:I

    if-gez p1, :cond_1

    const-string p1, "BackupRestoreConfirmation"

    const-string p2, "Backup/restore confirmation requested but no token passed!"

    .line 183
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private setViews(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 5

    .line 192
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAction:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v0, "action"

    .line 196
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAction:Ljava/lang/String;

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAction:Ljava/lang/String;

    const-string v0, "fullback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/high16 v0, 0x7f020000

    if-eqz p1, :cond_1

    const p1, 0x7f030003

    move v1, v0

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAction:Ljava/lang/String;

    const-string v1, "fullrest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f020001

    const v1, 0x7f03000d

    move v4, v1

    move v1, p1

    move p1, v4

    .line 213
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 214
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f010005

    .line 217
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mStatusView:Landroid/widget/TextView;

    const/high16 p1, 0x7f010000

    .line 218
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAllowButton:Landroid/widget/Button;

    const p1, 0x7f010001

    .line 219
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDenyButton:Landroid/widget/Button;

    const p1, 0x7f010006

    .line 221
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mCurPassword:Landroid/widget/TextView;

    const p1, 0x7f010003

    .line 222
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mEncPassword:Landroid/widget/TextView;

    const p1, 0x7f010007

    .line 223
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 225
    iget-object v2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAllowButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/backupconfirm/BackupRestoreConfirmation$1;

    invoke-direct {v3, p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation$1;-><init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDenyButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/backupconfirm/BackupRestoreConfirmation$2;

    invoke-direct {v3, p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation$2;-><init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    const-string v3, "did_acknowledge"

    .line 246
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    .line 247
    iget-object v2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAllowButton:Landroid/widget/Button;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 248
    iget-object p2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDenyButton:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->deviceIsEncrypted()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mIsEncrypted:Z

    .line 254
    invoke-virtual {p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->haveBackupPassword()Z

    move-result p2

    if-nez p2, :cond_4

    const/16 p2, 0x8

    .line 255
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mCurPassword:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne v1, v0, :cond_4

    const p1, 0x7f010004

    .line 258
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 259
    iget-boolean p2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mIsEncrypted:Z

    if-eqz p2, :cond_3

    const p2, 0x7f030005

    .line 260
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 261
    invoke-direct {p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->monitorEncryptionPassword()V

    goto :goto_1

    :cond_3
    const p0, 0x7f030004

    .line 263
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string p1, "BackupRestoreConfirmation"

    const-string p2, "Backup/restore confirmation activity launched with invalid action!"

    .line 208
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method deviceIsEncrypted()Z
    .locals 3

    const/4 v0, 0x1

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getEncryptionState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 319
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to communicate with storagemanager service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BackupRestoreConfirmation"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method haveBackupPassword()Z
    .locals 0

    .line 331
    :try_start_0
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {p0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 141
    invoke-direct {p0, v0, p1}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->setTokenOrFinish(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "backup"

    .line 146
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mBackupManager:Landroid/app/backup/IBackupManager;

    const-string v1, "mount"

    .line 147
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 149
    new-instance v1, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;-><init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mHandler:Landroid/os/Handler;

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 152
    new-instance v1, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    iget-object v2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;-><init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    goto :goto_0

    .line 154
    :cond_1
    check-cast v1, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    iput-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    .line 155
    iget-object v2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->setHandler(Landroid/os/Handler;)V

    .line 158
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->setViews(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->setTokenOrFinish(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->setViews(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    return-object p0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 293
    iget-boolean v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    const-string v1, "did_acknowledge"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    iget v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mToken:I

    const-string v1, "token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    iget-object p0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAction:Ljava/lang/String;

    const-string v0, "action"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method sendAcknowledgement(IZLandroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 6

    .line 299
    iget-boolean p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 300
    iput-boolean p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    .line 303
    :try_start_0
    iget-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mEncPassword:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 304
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mBackupManager:Landroid/app/backup/IBackupManager;

    iget v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mToken:I

    iget-object p3, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mCurPassword:Landroid/widget/TextView;

    .line 306
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    move v2, p2

    .line 304
    invoke-interface/range {v0 .. v5}, Landroid/app/backup/IBackupManager;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
