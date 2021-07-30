.class public abstract Lbkn;
.super Lacu;
.source "PG"

# interfaces
.implements Lbko;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.flags.IFlagProvider"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lbko;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    const-string v0, "com.google.android.gms.flags.IFlagProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lbko;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lbko;

    return-object v0

    :cond_1
    new-instance v0, Lbkm;

    .line 5
    invoke-direct {v0, p0}, Lbkm;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 34
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9
    invoke-virtual {p0, p1, v1, p2}, Lbkn;->getStringFlagValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 11
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 15
    invoke-virtual {p0, p1, v1, v2, p2}, Lbkn;->getLongFlagValue(Ljava/lang/String;JI)J

    move-result-wide p1

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 21
    invoke-virtual {p0, p1, v1, p2}, Lbkn;->getIntFlagValue(Ljava/lang/String;II)I

    move-result p1

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p2}, Lacv;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 27
    invoke-virtual {p0, p1, v1, p2}, Lbkn;->getBooleanFlagValue(Ljava/lang/String;ZI)Z

    move-result p1

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    invoke-static {p3, p1}, Lacv;->a(Landroid/os/Parcel;Z)V

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    .line 36
    :cond_5
    nop

    .line 31
    const-string p2, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 32
    instance-of v1, p2, Lbjr;

    if-eqz v1, :cond_6

    .line 33
    move-object p1, p2

    check-cast p1, Lbjr;

    goto :goto_0

    :cond_6
    new-instance p2, Lbjp;

    .line 34
    invoke-direct {p2, p1}, Lbjp;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 35
    :goto_0
    invoke-virtual {p0, p1}, Lbkn;->init(Lbjr;)V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    :goto_1
    return v0
.end method
