.class public final Landroid/car/user/UserIdentificationAssociationResponse;
.super Ljava/lang/Object;
.source "UserIdentificationAssociationResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/user/UserIdentificationAssociationResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorMessage:Ljava/lang/String;

.field private final mSuccess:Z

.field private final mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 219
    new-instance v0, Landroid/car/user/UserIdentificationAssociationResponse$1;

    invoke-direct {v0}, Landroid/car/user/UserIdentificationAssociationResponse$1;-><init>()V

    sput-object v0, Landroid/car/user/UserIdentificationAssociationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    goto :goto_2

    .line 209
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 211
    :goto_2
    iput-boolean v1, p0, Landroid/car/user/UserIdentificationAssociationResponse;->mSuccess:Z

    .line 212
    iput-object v2, p0, Landroid/car/user/UserIdentificationAssociationResponse;->mErrorMessage:Ljava/lang/String;

    .line 213
    iput-object v3, p0, Landroid/car/user/UserIdentificationAssociationResponse;->mValues:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getValues()[I
    .locals 0

    .line 164
    iget-object p0, p0, Landroid/car/user/UserIdentificationAssociationResponse;->mValues:[I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserIdentificationAssociationResponse { success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/car/user/UserIdentificationAssociationResponse;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/user/UserIdentificationAssociationResponse;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", values = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/car/user/UserIdentificationAssociationResponse;->mValues:[I

    .line 176
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 187
    iget-boolean p2, p0, Landroid/car/user/UserIdentificationAssociationResponse;->mSuccess:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    int-to-byte p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 188
    :goto_0
    iget-object v0, p0, Landroid/car/user/UserIdentificationAssociationResponse;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    or-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    .line 189
    :cond_1
    iget-object v0, p0, Landroid/car/user/UserIdentificationAssociationResponse;->mValues:[I

    if-eqz v0, :cond_2

    or-int/lit8 p2, p2, 0x4

    int-to-byte p2, p2

    .line 190
    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 191
    iget-object p2, p0, Landroid/car/user/UserIdentificationAssociationResponse;->mErrorMessage:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    :cond_3
    iget-object p0, p0, Landroid/car/user/UserIdentificationAssociationResponse;->mValues:[I

    if-eqz p0, :cond_4

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_4
    return-void
.end method
