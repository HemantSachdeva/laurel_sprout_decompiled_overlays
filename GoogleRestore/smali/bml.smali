.class public final synthetic Lbml;
.super Ljava/lang/Object;

# interfaces
.implements Lbgs;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbml;->a:Ljava/lang/String;

    iput p2, p0, Lbml;->b:I

    iput-object p3, p0, Lbml;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lbml;->a:Ljava/lang/String;

    iget v1, p0, Lbml;->b:I

    iget-object v2, p0, Lbml;->c:[Ljava/lang/String;

    check-cast p1, Lbmq;

    new-instance v3, Lbmo;

    check-cast p2, Lbpl;

    invoke-direct {v3, p2}, Lbmo;-><init>(Lbpl;)V

    invoke-virtual {p1}, Lbhl;->s()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbmp;

    invoke-virtual {p1}, Lact;->h()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, v3}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method
