.class public final Lbiu;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Landroid/os/IBinder;

.field public final c:Lbds;

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbiv;

    invoke-direct {v0}, Lbiv;-><init>()V

    sput-object v0, Lbiu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lbds;ZZ)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput p1, p0, Lbiu;->a:I

    iput-object p2, p0, Lbiu;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lbiu;->c:Lbds;

    iput-boolean p4, p0, Lbiu;->d:Z

    iput-boolean p5, p0, Lbiu;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lbik;
    .locals 3

    iget-object v0, p0, Lbiu;->b:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    const-string v1, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 6
    instance-of v2, v1, Lbik;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Lbik;

    goto :goto_0

    :cond_1
    new-instance v1, Lbik;

    .line 8
    invoke-direct {v1, v0}, Lbik;-><init>(Landroid/os/IBinder;)V

    .line 7
    :goto_0
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lbiu;

    if-nez v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lbiu;

    iget-object v2, p0, Lbiu;->c:Lbds;

    iget-object v3, p1, Lbiu;->c:Lbds;

    .line 3
    invoke-virtual {v2, v3}, Lbds;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p0}, Lbiu;->a()Lbik;

    move-result-object v2

    invoke-virtual {p1}, Lbiu;->a()Lbik;

    move-result-object p1

    invoke-static {v2, p1}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 9
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lbiu;->a:I

    .line 10
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lbiu;->b:Landroid/os/IBinder;

    .line 11
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object v1, p0, Lbiu;->c:Lbds;

    .line 12
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lbiu;->d:Z

    .line 13
    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lbiu;->e:Z

    .line 14
    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    .line 15
    invoke-static {p1, v0}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
