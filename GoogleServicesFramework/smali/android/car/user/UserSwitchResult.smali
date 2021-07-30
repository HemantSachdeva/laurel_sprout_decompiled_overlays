.class public final Landroid/car/user/UserSwitchResult;
.super Ljava/lang/Object;
.source "UserSwitchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/user/UserSwitchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorMessage:Ljava/lang/String;

.field private final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 327
    new-instance v0, Landroid/car/user/UserSwitchResult$1;

    invoke-direct {v0}, Landroid/car/user/UserSwitchResult$1;-><init>()V

    sput-object v0, Landroid/car/user/UserSwitchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 11

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 297
    :goto_0
    iput v1, p0, Landroid/car/user/UserSwitchResult;->mStatus:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v5, 0x5

    if-eq v1, v5, :cond_2

    const/16 v6, 0x65

    if-eq v1, v6, :cond_2

    const/16 v7, 0x66

    if-eq v1, v7, :cond_2

    const/16 v8, 0x67

    if-eq v1, v8, :cond_2

    const/16 v9, 0x68

    if-ne v1, v9, :cond_1

    goto :goto_1

    .line 308
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "status was "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/car/user/UserSwitchResult;->mStatus:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but must be one of: STATUS_SUCCESSFUL("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_ANDROID_FAILURE("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_HAL_FAILURE("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_HAL_INTERNAL_FAILURE("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_INVALID_REQUEST("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_OK_USER_ALREADY_IN_FOREGROUND("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_TARGET_USER_ALREADY_BEING_SWITCHED_TO("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_TARGET_USER_ABANDONED_DUE_TO_A_NEW_REQUEST("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_NOT_SWITCHABLE("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_2
    :goto_1
    iput-object p1, p0, Landroid/car/user/UserSwitchResult;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static statusToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 175
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "STATUS_NOT_SWITCHABLE"

    return-object p0

    :pswitch_1
    const-string p0, "STATUS_TARGET_USER_ABANDONED_DUE_TO_A_NEW_REQUEST"

    return-object p0

    :pswitch_2
    const-string p0, "STATUS_TARGET_USER_ALREADY_BEING_SWITCHED_TO"

    return-object p0

    :pswitch_3
    const-string p0, "STATUS_OK_USER_ALREADY_IN_FOREGROUND"

    return-object p0

    :cond_0
    const-string p0, "STATUS_INVALID_REQUEST"

    return-object p0

    :cond_1
    const-string p0, "STATUS_HAL_INTERNAL_FAILURE"

    return-object p0

    :cond_2
    const-string p0, "STATUS_HAL_FAILURE"

    return-object p0

    :cond_3
    const-string p0, "STATUS_ANDROID_FAILURE"

    return-object p0

    :cond_4
    const-string p0, "STATUS_SUCCESSFUL"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 254
    iget-object p0, p0, Landroid/car/user/UserSwitchResult;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 246
    iget p0, p0, Landroid/car/user/UserSwitchResult;->mStatus:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserSwitchResult { status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/user/UserSwitchResult;->mStatus:I

    .line 264
    invoke-static {v1}, Landroid/car/user/UserSwitchResult;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/car/user/UserSwitchResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 276
    iget-object p2, p0, Landroid/car/user/UserSwitchResult;->mErrorMessage:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    int-to-byte p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 277
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 278
    iget p2, p0, Landroid/car/user/UserSwitchResult;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object p0, p0, Landroid/car/user/UserSwitchResult;->mErrorMessage:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
