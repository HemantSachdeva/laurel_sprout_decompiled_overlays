.class public final Lbhr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    invoke-static {p1}, Lbja;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Lbja;->a(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    invoke-static {p1, v4}, Lbja;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v5, Lbhs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v4, v5}, Lbja;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lbhs;

    goto :goto_0

    :cond_1
    invoke-static {p1, v4}, Lbja;->d(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :cond_2
    sget-object v2, Lbdv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v4, v2}, Lbja;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lbdv;

    goto :goto_0

    :cond_3
    invoke-static {p1, v4}, Lbja;->j(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {p1, v0}, Lbja;->p(Landroid/os/Parcel;I)V

    new-instance p1, Lbhq;

    invoke-direct {p1, v1, v2, v3}, Lbhq;-><init>(Landroid/os/Bundle;[Lbdv;I)V

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lbhq;

    return-object p1
.end method
