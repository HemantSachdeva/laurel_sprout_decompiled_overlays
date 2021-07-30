.class public final Landroid/car/user/UserCreationResult;
.super Ljava/lang/Object;
.source "UserCreationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/user/UserCreationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorMessage:Ljava/lang/String;

.field private final mStatus:I

.field private final mUser:Landroid/content/pm/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 295
    new-instance v0, Landroid/car/user/UserCreationResult$1;

    invoke-direct {v0}, Landroid/car/user/UserCreationResult$1;-><init>()V

    sput-object v0, Landroid/car/user/UserCreationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 269
    :cond_0
    sget-object v2, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    :goto_0
    const/4 v4, 0x4

    and-int/2addr v0, v4

    if-nez v0, :cond_1

    goto :goto_1

    .line 270
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 272
    :goto_1
    iput v1, p0, Landroid/car/user/UserCreationResult;->mStatus:I

    const/4 p1, 0x1

    if-eq v1, p1, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    const/4 v6, 0x5

    if-ne v1, v6, :cond_2

    goto :goto_2

    .line 279
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/car/user/UserCreationResult;->mStatus:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but must be one of: STATUS_SUCCESSFUL("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_ANDROID_FAILURE("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_HAL_FAILURE("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_HAL_INTERNAL_FAILURE("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_INVALID_REQUEST("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_3
    :goto_2
    iput-object v2, p0, Landroid/car/user/UserCreationResult;->mUser:Landroid/content/pm/UserInfo;

    .line 289
    iput-object v3, p0, Landroid/car/user/UserCreationResult;->mErrorMessage:Ljava/lang/String;

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

    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

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
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Landroid/car/user/UserCreationResult;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 209
    iget p0, p0, Landroid/car/user/UserCreationResult;->mStatus:I

    return p0
.end method

.method public getUser()Landroid/content/pm/UserInfo;
    .locals 0

    .line 217
    iget-object p0, p0, Landroid/car/user/UserCreationResult;->mUser:Landroid/content/pm/UserInfo;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 1

    .line 104
    iget p0, p0, Landroid/car/user/UserCreationResult;->mStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserCreationResult { status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/user/UserCreationResult;->mStatus:I

    .line 235
    invoke-static {v1}, Landroid/car/user/UserCreationResult;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/user/UserCreationResult;->mUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/car/user/UserCreationResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 248
    iget-object v0, p0, Landroid/car/user/UserCreationResult;->mUser:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 249
    :goto_0
    iget-object v1, p0, Landroid/car/user/UserCreationResult;->mErrorMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 250
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 251
    iget v0, p0, Landroid/car/user/UserCreationResult;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v0, p0, Landroid/car/user/UserCreationResult;->mUser:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 253
    :cond_2
    iget-object p0, p0, Landroid/car/user/UserCreationResult;->mErrorMessage:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
