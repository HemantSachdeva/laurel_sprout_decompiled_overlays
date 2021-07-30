.class public final Lbmx;
.super Lbha;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbmx;->a:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Lbha;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lbem;Lbpl;)V
    .locals 2

    check-cast p1, Lbnb;

    new-instance v0, Lbmw;

    invoke-direct {v0, p2}, Lbmw;-><init>(Lbpl;)V

    invoke-virtual {p1}, Lbhl;->s()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbna;

    iget-object p2, p0, Lbmx;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lact;->h()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p2, 0x4b1

    invoke-virtual {p1, p2, v1}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method
