.class final Lbmv;
.super Lbha;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbmv;->a:Ljava/lang/String;

    iput-object p2, p0, Lbmv;->d:Ljava/lang/String;

    iput-object p3, p0, Lbmv;->e:Ljava/lang/String;

    iput-object p4, p0, Lbmv;->f:[Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Lbha;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lbem;Lbpl;)V
    .locals 5

    check-cast p1, Lbnb;

    new-instance v0, Lbmu;

    invoke-direct {v0, p2}, Lbmu;-><init>(Lbpl;)V

    invoke-virtual {p1}, Lbhl;->s()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbna;

    iget-object p2, p0, Lbmv;->a:Ljava/lang/String;

    iget-object v1, p0, Lbmv;->d:Ljava/lang/String;

    iget-object v2, p0, Lbmv;->e:Ljava/lang/String;

    iget-object v3, p0, Lbmv;->f:[Ljava/lang/String;

    invoke-virtual {p1}, Lact;->h()Landroid/os/Parcel;

    move-result-object v4

    invoke-static {v4, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v4, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/16 p2, 0x44e

    invoke-virtual {p1, p2, v4}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method
