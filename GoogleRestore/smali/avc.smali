.class public final Lavc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Lauv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lavb;

    invoke-direct {v0}, Lavb;-><init>()V

    sput-object v0, Lavc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {}, Ldjr;->b()Ldjr;

    move-result-object v0

    .line 2
    sget-object v1, Lauv;->b:Lauv;

    .line 3
    invoke-static {v1, p1, v0}, Ldkd;->a(Ldkd;[BLdjr;)Ldkd;

    move-result-object p1

    check-cast p1, Lauv;
    :try_end_0
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p1, p0, Lavc;->a:Lauv;

    return-void

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lauv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavc;->a:Lauv;

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

    iget-object p2, p0, Lavc;->a:Lauv;

    .line 4
    invoke-virtual {p2}, Ldhi;->b()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
