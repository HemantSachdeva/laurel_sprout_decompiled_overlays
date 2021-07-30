.class public final Lcom/google/android/gtalkservice/Presence;
.super Ljava/lang/Object;
.source "Presence.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/Presence$Show;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gtalkservice/Presence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowInvisibility:Z

.field private mAvailable:Z

.field private mCapabilities:I

.field private mDefaultStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDndStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInvisible:Z

.field private mShow:Lcom/google/android/gtalkservice/Presence$Show;

.field private mStatus:Ljava/lang/String;

.field private mStatusListContentsMax:I

.field private mStatusListMax:I

.field private mStatusMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/Presence;-><init>()V

    .line 536
    new-instance v0, Lcom/google/android/gtalkservice/Presence$1;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/Presence$1;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 71
    sget-object v0, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setStatusMax(I)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setStatusListMax(I)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setStatusListContentsMax(I)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setAllowInvisibility(Z)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setAvailable(Z)V

    .line 104
    const-class v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/gtalkservice/Presence;->setInvisible(Z)Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/Presence;->setCapabilities(I)V

    return-void
.end method

.method public constructor <init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    .line 84
    iput-object p2, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    .line 85
    iput-object p3, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    .line 89
    iput p4, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    return-void
.end method


# virtual methods
.method public allowInvisibility()Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCapabilities()I
    .locals 0

    .line 419
    iget p0, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    return p0
.end method

.method public getStatusListContentsMax()I
    .locals 0

    .line 186
    iget p0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    return p0
.end method

.method public getStatusListMax()I
    .locals 0

    .line 166
    iget p0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    return p0
.end method

.method public getStatusMax()I
    .locals 0

    .line 146
    iget p0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 228
    iget-boolean p0, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    return p0
.end method

.method public isInvisible()Z
    .locals 0

    .line 248
    iget-boolean p0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    return p0
.end method

.method public setAllowInvisibility(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    return-void
.end method

.method public setAvailable(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    return-void
.end method

.method public setCapabilities(I)V
    .locals 0

    .line 428
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    return-void
.end method

.method public setInvisible(Z)Z
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->allowInvisibility()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setShow(Lcom/google/android/gtalkservice/Presence$Show;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    return-void
.end method

.method public setStatusListContentsMax(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    return-void
.end method

.method public setStatusListMax(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    return-void
.end method

.method public setStatusMax(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 549
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "UNAVAILABLE"

    return-object p0

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->isInvisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "INVISIBLE"

    return-object p0

    .line 557
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 559
    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    if-ne v1, v2, :cond_2

    const-string v1, "AVAILABLE(x)"

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 562
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :goto_0
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const-string v1, " pmuc-v1"

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_3
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const-string v1, " voice-v1"

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_4
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    const-string v1, " video-v1"

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_5
    iget p0, p0, Lcom/google/android/gtalkservice/Presence;->mCapabilities:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_6

    const-string p0, " camera-v1"

    .line 575
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 517
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusMax()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusListMax()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusListContentsMax()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->allowInvisibility()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-boolean p2, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget-object p2, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-object p2, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-boolean p2, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget-object p2, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 528
    iget-object p2, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 529
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getCapabilities()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
