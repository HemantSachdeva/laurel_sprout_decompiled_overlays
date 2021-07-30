.class public final Landroid/car/vms/VmsAssociatedLayer;
.super Ljava/lang/Object;
.source "VmsAssociatedLayer.java"

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
            "Landroid/car/vms/VmsAssociatedLayer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mProviderIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVmsLayer:Landroid/car/vms/VmsLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 202
    new-instance v0, Landroid/car/vms/VmsAssociatedLayer$1;

    invoke-direct {v0}, Landroid/car/vms/VmsAssociatedLayer$1;-><init>()V

    sput-object v0, Landroid/car/vms/VmsAssociatedLayer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget-object v0, Landroid/car/vms/VmsLayer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/vms/VmsLayer;

    .line 189
    invoke-direct {p0, p1}, Landroid/car/vms/VmsAssociatedLayer;->unparcelProviderIds(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p1

    .line 191
    iput-object v0, p0, Landroid/car/vms/VmsAssociatedLayer;->mVmsLayer:Landroid/car/vms/VmsLayer;

    .line 192
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 194
    iput-object p1, p0, Landroid/car/vms/VmsAssociatedLayer;->mProviderIds:Ljava/util/Set;

    .line 195
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v2, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 198
    invoke-direct {p0}, Landroid/car/vms/VmsAssociatedLayer;->onConstructed()V

    return-void
.end method

.method private onConstructed()V
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/car/vms/VmsAssociatedLayer;->mProviderIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/car/vms/VmsAssociatedLayer;->mProviderIds:Ljava/util/Set;

    return-void
.end method

.method private parcelProviderIds(Landroid/os/Parcel;I)V
    .locals 0

    .line 54
    new-instance p2, Landroid/util/ArraySet;

    iget-object p0, p0, Landroid/car/vms/VmsAssociatedLayer;->mProviderIds:Ljava/util/Set;

    invoke-direct {p2, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    return-void
.end method

.method private unparcelProviderIds(Landroid/os/Parcel;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 59
    const-class p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
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

    .line 146
    const-class v2, Landroid/car/vms/VmsAssociatedLayer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    check-cast p1, Landroid/car/vms/VmsAssociatedLayer;

    .line 150
    iget-object v2, p0, Landroid/car/vms/VmsAssociatedLayer;->mVmsLayer:Landroid/car/vms/VmsLayer;

    iget-object v3, p1, Landroid/car/vms/VmsAssociatedLayer;->mVmsLayer:Landroid/car/vms/VmsLayer;

    .line 151
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/car/vms/VmsAssociatedLayer;->mProviderIds:Ljava/util/Set;

    iget-object p1, p1, Landroid/car/vms/VmsAssociatedLayer;->mProviderIds:Ljava/util/Set;

    .line 152
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

    .line 162
    iget-object v0, p0, Landroid/car/vms/VmsAssociatedLayer;->mVmsLayer:Landroid/car/vms/VmsLayer;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 163
    iget-object p0, p0, Landroid/car/vms/VmsAssociatedLayer;->mProviderIds:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmsAssociatedLayer { vmsLayer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/vms/VmsAssociatedLayer;->mVmsLayer:Landroid/car/vms/VmsLayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", providerIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/car/vms/VmsAssociatedLayer;->mProviderIds:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/car/vms/VmsAssociatedLayer;->mVmsLayer:Landroid/car/vms/VmsLayer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/car/vms/VmsAssociatedLayer;->parcelProviderIds(Landroid/os/Parcel;I)V

    return-void
.end method
