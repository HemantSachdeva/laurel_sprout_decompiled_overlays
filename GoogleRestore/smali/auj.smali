.class public final synthetic Lauj;
.super Ljava/lang/Object;

# interfaces
.implements Lbgs;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lauj;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lauj;->a:Ljava/lang/String;

    check-cast p1, Laum;

    sget-object v1, Laul;->a:Lbeo;

    invoke-virtual {p1}, Lbhl;->s()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Laun;

    invoke-virtual {p1}, Lact;->h()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lacv;->a(Landroid/os/Parcel;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v1}, Lact;->b(ILandroid/os/Parcel;)V

    check-cast p2, Lbpl;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lbpl;->a(Ljava/lang/Object;)V

    return-void
.end method
