.class public final Lave;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lauw;

.field public final b:Ldkn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lavd;

    invoke-direct {v0}, Lavd;-><init>()V

    sput-object v0, Lave;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {}, Ldjr;->b()Ldjr;

    move-result-object v1

    .line 2
    sget-object v2, Lauw;->b:Lauw;

    .line 3
    invoke-static {v2, p1, v1}, Ldkd;->a(Ldkd;[BLdjr;)Ldkd;

    move-result-object p1

    check-cast p1, Lauw;
    :try_end_0
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lave;->a:Lauw;

    iput-object v0, p0, Lave;->b:Ldkn;

    return-void

    :catch_0
    move-exception p1

    iput-object v0, p0, Lave;->a:Lauw;

    iput-object p1, p0, Lave;->b:Ldkn;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lave;->a:Lauw;

    .line 4
    invoke-virtual {p2}, Ldhi;->b()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
