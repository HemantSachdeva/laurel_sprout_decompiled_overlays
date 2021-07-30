.class public final Landroid/car/content/pm/AppBlockingPackageInfo;
.super Ljava/lang/Object;
.source "AppBlockingPackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/content/pm/AppBlockingPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final activities:[Ljava/lang/String;

.field public final flags:I

.field public final maxRevisionCode:I

.field public final minRevisionCode:I

.field public final packageName:Ljava/lang/String;

.field public final signatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Landroid/car/content/pm/AppBlockingPackageInfo$1;

    invoke-direct {v0}, Landroid/car/content/pm/AppBlockingPackageInfo$1;-><init>()V

    sput-object v0, Landroid/car/content/pm/AppBlockingPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->flags:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->minRevisionCode:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    .line 104
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->activities:[Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Landroid/car/content/pm/AppBlockingPackageInfo;->verify()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 183
    :cond_1
    const-class v2, Landroid/car/content/pm/AppBlockingPackageInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 186
    :cond_2
    check-cast p1, Landroid/car/content/pm/AppBlockingPackageInfo;

    .line 187
    iget-object v2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->activities:[Ljava/lang/String;

    iget-object v3, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->activities:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 190
    :cond_3
    iget v2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->flags:I

    iget v3, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->flags:I

    if-eq v2, v3, :cond_4

    return v1

    .line 193
    :cond_4
    iget v2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    iget v3, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    if-eq v2, v3, :cond_5

    return v1

    .line 196
    :cond_5
    iget v2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->minRevisionCode:I

    iget v3, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->minRevisionCode:I

    if-eq v2, v3, :cond_6

    return v1

    .line 199
    :cond_6
    iget-object v2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 200
    iget-object v2, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    .line 203
    :cond_7
    iget-object v3, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 206
    :cond_8
    iget-object p0, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object p1, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 166
    iget-object v0, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->activities:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 167
    iget v2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->flags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 168
    iget v2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 169
    iget v2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->minRevisionCode:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 170
    iget-object v2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 171
    iget-object p0, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppBlockingPackageInfo [packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minRevisionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->minRevisionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxRevisionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 216
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->activities:[Ljava/lang/String;

    .line 217
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verify()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_1

    iget p0, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->flags:I

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only system package with FLAG_SYSTEM_APP can have null signatures"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 116
    iget-object p2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget p2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget p2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->minRevisionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget p2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object p2, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 121
    iget-object p0, p0, Landroid/car/content/pm/AppBlockingPackageInfo;->activities:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
