.class public final Landroid/car/user/UserRemovalResult;
.super Ljava/lang/Object;
.source "UserRemovalResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/user/UserRemovalResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 224
    new-instance v0, Landroid/car/user/UserRemovalResult$1;

    invoke-direct {v0}, Landroid/car/user/UserRemovalResult$1;-><init>()V

    sput-object v0, Landroid/car/user/UserRemovalResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 218
    iput p1, p0, Landroid/car/user/UserRemovalResult;->mStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserRemovalResult { status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/car/user/UserRemovalResult;->mStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 202
    iget p0, p0, Landroid/car/user/UserRemovalResult;->mStatus:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
