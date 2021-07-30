.class Landroid/car/user/CarUserManager$3;
.super Lcom/android/internal/infra/AndroidFuture;
.source "CarUserManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AndroidFuture<",
        "Landroid/car/user/UserIdentificationAssociationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$types:[I

.field final synthetic val$values:[I


# virtual methods
.method protected onCompleted(Landroid/car/user/UserIdentificationAssociationResponse;Ljava/lang/Throwable;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 492
    invoke-virtual {p1}, Landroid/car/user/UserIdentificationAssociationResponse;->getValues()[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 495
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 496
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 497
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x24aa3

    .line 499
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1

    .line 503
    :cond_1
    invoke-static {}, Landroid/car/user/CarUserManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserIdentificationAssociation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/car/user/CarUserManager$3;->val$types:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/car/user/CarUserManager$3;->val$values:[I

    .line 504
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected bridge synthetic onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 487
    check-cast p1, Landroid/car/user/UserIdentificationAssociationResponse;

    invoke-virtual {p0, p1, p2}, Landroid/car/user/CarUserManager$3;->onCompleted(Landroid/car/user/UserIdentificationAssociationResponse;Ljava/lang/Throwable;)V

    return-void
.end method
