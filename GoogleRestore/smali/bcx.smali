.class public final Lbcx;
.super Lbha;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbha;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lbem;Lbpl;)V
    .locals 1

    check-cast p1, Lbcz;

    new-instance v0, Lbda;

    invoke-direct {v0, p2}, Lbda;-><init>(Lbpl;)V

    invoke-virtual {p1}, Lbhl;->s()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbdb;

    invoke-virtual {p1}, Lact;->h()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method
