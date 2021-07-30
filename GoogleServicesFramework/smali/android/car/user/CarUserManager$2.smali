.class Landroid/car/user/CarUserManager$2;
.super Lcom/android/internal/infra/AndroidFuture;
.source "CarUserManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AndroidFuture<",
        "Landroid/car/user/UserCreationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/user/CarUserManager;

.field final synthetic val$flags:I

.field final synthetic val$uid:I

.field final synthetic val$userType:Ljava/lang/String;


# virtual methods
.method protected onCompleted(Landroid/car/user/UserCreationResult;Ljava/lang/Throwable;)V
    .locals 4

    if-eqz p1, :cond_0

    const v0, 0x24aa5

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 261
    iget v3, p0, Landroid/car/user/CarUserManager$2;->val$uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 262
    invoke-virtual {p1}, Landroid/car/user/UserCreationResult;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/car/user/UserCreationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 261
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 263
    invoke-virtual {p1}, Landroid/car/user/UserCreationResult;->getUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 264
    invoke-virtual {p1}, Landroid/car/user/UserCreationResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Landroid/car/user/CarUserManager$2;->this$0:Landroid/car/user/CarUserManager;

    invoke-static {v1, v0}, Landroid/car/user/CarUserManager;->access$100(Landroid/car/user/CarUserManager;Landroid/content/pm/UserInfo;)V

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {}, Landroid/car/user/CarUserManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/car/user/CarUserManager$2;->val$userType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/car/user/CarUserManager$2;->val$flags:I

    invoke-static {v2}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected bridge synthetic onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 257
    check-cast p1, Landroid/car/user/UserCreationResult;

    invoke-virtual {p0, p1, p2}, Landroid/car/user/CarUserManager$2;->onCompleted(Landroid/car/user/UserCreationResult;Ljava/lang/Throwable;)V

    return-void
.end method
