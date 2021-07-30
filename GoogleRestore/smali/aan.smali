.class public final Laan;
.super Lact;
.source "PG"

# interfaces
.implements Laap;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.android.vending.setup.IPlaySetupServiceV2"

    invoke-direct {p0, p1, v0}, Lact;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 48
    invoke-static {v0, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 49
    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 50
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final a(Landroid/os/ResultReceiver;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 31
    invoke-static {v0, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 32
    invoke-static {v0, p2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 33
    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 34
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 24
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 8
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 13
    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 14
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final a()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Landroid/os/ResultReceiver;)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 53
    invoke-static {v0, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 54
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a([Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 45
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 46
    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 37
    invoke-static {v0, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 38
    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 39
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 19
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final b(Landroid/os/ResultReceiver;)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 42
    invoke-static {v0, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 43
    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 26
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 27
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lacv;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
