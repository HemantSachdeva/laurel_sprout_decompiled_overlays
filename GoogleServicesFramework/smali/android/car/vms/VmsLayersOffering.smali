.class public final Landroid/car/vms/VmsLayersOffering;
.super Ljava/lang/Object;
.source "VmsLayersOffering.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/vms/VmsLayersOffering;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/car/vms/VmsLayerDependency;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublisherId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Landroid/car/vms/VmsLayersOffering$1;

    invoke-direct {v0}, Landroid/car/vms/VmsLayersOffering$1;-><init>()V

    sput-object v0, Landroid/car/vms/VmsLayersOffering;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-direct {p0, p1}, Landroid/car/vms/VmsLayersOffering;->unparcelDependencies(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 184
    iput-object v0, p0, Landroid/car/vms/VmsLayersOffering;->mDependencies:Ljava/util/Set;

    .line 185
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 187
    iput p1, p0, Landroid/car/vms/VmsLayersOffering;->mPublisherId:I

    .line 189
    invoke-direct {p0}, Landroid/car/vms/VmsLayersOffering;->onConstructed()V

    return-void
.end method

.method private onConstructed()V
    .locals 1

    .line 56
    iget-object v0, p0, Landroid/car/vms/VmsLayersOffering;->mDependencies:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/car/vms/VmsLayersOffering;->mDependencies:Ljava/util/Set;

    return-void
.end method

.method private parcelDependencies(Landroid/os/Parcel;I)V
    .locals 0

    .line 60
    new-instance p2, Landroid/util/ArraySet;

    iget-object p0, p0, Landroid/car/vms/VmsLayersOffering;->mDependencies:Ljava/util/Set;

    invoke-direct {p2, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    return-void
.end method

.method private unparcelDependencies(Landroid/os/Parcel;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Landroid/car/vms/VmsLayerDependency;",
            ">;"
        }
    .end annotation

    .line 65
    const-class p0, Landroid/car/vms/VmsLayerDependency;

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

    .line 139
    const-class v2, Landroid/car/vms/VmsLayersOffering;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    check-cast p1, Landroid/car/vms/VmsLayersOffering;

    .line 143
    iget-object v2, p0, Landroid/car/vms/VmsLayersOffering;->mDependencies:Ljava/util/Set;

    iget-object v3, p1, Landroid/car/vms/VmsLayersOffering;->mDependencies:Ljava/util/Set;

    .line 144
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Landroid/car/vms/VmsLayersOffering;->mPublisherId:I

    iget p1, p1, Landroid/car/vms/VmsLayersOffering;->mPublisherId:I

    if-ne p0, p1, :cond_2

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

    .line 155
    iget-object v0, p0, Landroid/car/vms/VmsLayersOffering;->mDependencies:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 156
    iget p0, p0, Landroid/car/vms/VmsLayersOffering;->mPublisherId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmsLayersOffering { dependencies = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/vms/VmsLayersOffering;->mDependencies:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", publisherId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/car/vms/VmsLayersOffering;->mPublisherId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/car/vms/VmsLayersOffering;->parcelDependencies(Landroid/os/Parcel;I)V

    .line 167
    iget p0, p0, Landroid/car/vms/VmsLayersOffering;->mPublisherId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
