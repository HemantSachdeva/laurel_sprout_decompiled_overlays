.class public final Lbjf;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Parcel;)I
    .locals 1

    .line 11
    const/16 v0, 0x4f45

    invoke-static {p0, v0}, Lbjf;->b(Landroid/os/Parcel;I)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 6
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 7
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lafk;

    iget v4, v3, Lafk;->a:I

    mul-int/lit8 v4, v4, 0x3

    iget v3, v3, Lafk;->b:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x31

    int-to-byte v3, v4

    .line 9
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 10
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0xb

    .line 81
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Labb;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Labb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/os/Parcel;I)V
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/lit8 v1, p1, -0x4

    .line 16
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p1, v0, p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;II)V
    .locals 0

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;IJ)V
    .locals 1

    .line 43
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lbjf;->a(Landroid/os/Parcel;II)V

    .line 44
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Bundle;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-static {p0, p1}, Lbjf;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 22
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 23
    invoke-static {p0, p1}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/IBinder;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {p0, p1}, Lbjf;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 34
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 35
    invoke-static {p0, p1}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-static {p0, p1}, Lbjf;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 48
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    invoke-static {p0, p1}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Integer;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 41
    invoke-static {p0, p1, v0}, Lbjf;->a(Landroid/os/Parcel;II)V

    .line 42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Long;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 45
    invoke-static {p0, p1, v0}, Lbjf;->a(Landroid/os/Parcel;II)V

    .line 46
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 50
    invoke-static {p0, p1, p2}, Lbjf;->a(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 51
    :cond_1
    invoke-static {p0, p1}, Lbjf;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 52
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static {p0, p1}, Lbjf;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 58
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 59
    invoke-static {p0, p1}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;IZ)V
    .locals 1

    .line 19
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lbjf;->a(Landroid/os/Parcel;II)V

    .line 20
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;I[BZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 24
    invoke-static {p0, p1, p2}, Lbjf;->a(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 25
    :cond_1
    invoke-static {p0, p1}, Lbjf;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 26
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 27
    invoke-static {p0, p1}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;I[I)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {p0, p1}, Lbjf;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 39
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 40
    invoke-static {p0, p1}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {p0, p1}, Lbjf;->b(Landroid/os/Parcel;I)I

    move-result p1

    array-length v0, p2

    .line 61
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 62
    aget-object v3, p2, v2

    if-nez v3, :cond_1

    .line 63
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 64
    :cond_1
    invoke-static {p0, v3, p3}, Lbjf;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 63
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {p0, p1}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;I[Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-static {p0, p1}, Lbjf;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 55
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 56
    invoke-static {p0, p1}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;I[[B)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-static {p0, p1}, Lbjf;->b(Landroid/os/Parcel;I)I

    move-result p1

    array-length v0, p2

    .line 29
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 30
    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p0, p1}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method

.method private static a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 67
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 69
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 71
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p1, v1

    .line 72
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static b(Landroid/os/Parcel;I)I
    .locals 1

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/os/Parcel;II)V
    .locals 1

    .line 36
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lbjf;->a(Landroid/os/Parcel;II)V

    .line 37
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static b(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-static {p0, p1}, Lbjf;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 75
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 77
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-nez v3, :cond_1

    .line 78
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    nop

    .line 79
    invoke-static {p0, v3, v1}, Lbjf;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 78
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {p0, p1}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
