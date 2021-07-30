.class public final Lbkm;
.super Lact;
.source "PG"

# interfaces
.implements Lbko;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.flags.IFlagProvider"

    invoke-direct {p0, p1, v0}, Lact;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBooleanFlagValue(Ljava/lang/String;ZI)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object p3

    .line 3
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-static {p3, p2}, Lacv;->a(Landroid/os/Parcel;Z)V

    .line 5
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    const/4 p1, 0x2

    invoke-virtual {p0, p1, p3}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lacv;->a(Landroid/os/Parcel;)Z

    move-result p2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public final getIntFlagValue(Ljava/lang/String;II)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final getLongFlagValue(Ljava/lang/String;JI)J
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final getStringFlagValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final init(Lbjr;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 11
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method
