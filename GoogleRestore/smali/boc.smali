.class public final Lboc;
.super Lbiy;
.source "PG"

# interfaces
.implements Lbey;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbod;

    invoke-direct {v0}, Lbod;-><init>()V

    sput-object v0, Lboc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lboc;->a:Ljava/util/List;

    iput-object p2, p0, Lboc;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lboc;->a:Ljava/util/List;

    .line 2
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;ILjava/util/List;)V

    iget-object v0, p0, Lboc;->b:Ljava/lang/String;

    .line 3
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    invoke-static {p1, p2}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
