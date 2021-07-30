.class public Landroid/car/vms/VmsRegistrationInfo;
.super Ljava/lang/Object;
.source "VmsRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/vms/VmsRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailableLayers:Landroid/car/vms/VmsAvailableLayers;

.field private mSubscriptionState:Landroid/car/vms/VmsSubscriptionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Landroid/car/vms/VmsRegistrationInfo$1;

    invoke-direct {v0}, Landroid/car/vms/VmsRegistrationInfo$1;-><init>()V

    sput-object v0, Landroid/car/vms/VmsRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget-object v0, Landroid/car/vms/VmsAvailableLayers;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/vms/VmsAvailableLayers;

    .line 130
    sget-object v1, Landroid/car/vms/VmsSubscriptionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/vms/VmsSubscriptionState;

    .line 132
    iput-object v0, p0, Landroid/car/vms/VmsRegistrationInfo;->mAvailableLayers:Landroid/car/vms/VmsAvailableLayers;

    .line 133
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 135
    iput-object p1, p0, Landroid/car/vms/VmsRegistrationInfo;->mSubscriptionState:Landroid/car/vms/VmsSubscriptionState;

    .line 136
    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

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

    if-eqz p1, :cond_3

    .line 87
    const-class v2, Landroid/car/vms/VmsRegistrationInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    check-cast p1, Landroid/car/vms/VmsRegistrationInfo;

    .line 91
    iget-object v2, p0, Landroid/car/vms/VmsRegistrationInfo;->mAvailableLayers:Landroid/car/vms/VmsAvailableLayers;

    iget-object v3, p1, Landroid/car/vms/VmsRegistrationInfo;->mAvailableLayers:Landroid/car/vms/VmsAvailableLayers;

    .line 92
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/car/vms/VmsRegistrationInfo;->mSubscriptionState:Landroid/car/vms/VmsSubscriptionState;

    iget-object p1, p1, Landroid/car/vms/VmsRegistrationInfo;->mSubscriptionState:Landroid/car/vms/VmsSubscriptionState;

    .line 93
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 103
    iget-object v0, p0, Landroid/car/vms/VmsRegistrationInfo;->mAvailableLayers:Landroid/car/vms/VmsAvailableLayers;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 104
    iget-object p0, p0, Landroid/car/vms/VmsRegistrationInfo;->mSubscriptionState:Landroid/car/vms/VmsSubscriptionState;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/car/vms/VmsRegistrationInfo;->mAvailableLayers:Landroid/car/vms/VmsAvailableLayers;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 115
    iget-object p0, p0, Landroid/car/vms/VmsRegistrationInfo;->mSubscriptionState:Landroid/car/vms/VmsSubscriptionState;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
