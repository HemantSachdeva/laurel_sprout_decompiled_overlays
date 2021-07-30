.class public final Laak;
.super Lact;
.source "PG"

# interfaces
.implements Laam;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.android.vending.setup.IPlaySetupService"

    invoke-direct {p0, p1, v0}, Lact;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    .line 12
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 13
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 14
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 29
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 23
    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 24
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 9
    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 10
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final a(Ljava/lang/String;[Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 38
    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 42
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final c()Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lacv;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final d()V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 44
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final e()Landroid/os/Bundle;
    .locals 2

    .line 16
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 17
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 18
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final f()V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 40
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final g()Landroid/os/Bundle;
    .locals 2

    .line 31
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 32
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 33
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
