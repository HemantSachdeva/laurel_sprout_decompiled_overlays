.class final synthetic Laqz;
.super Ljava/lang/Object;

# interfaces
.implements Lard;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Laqw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Laqw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqz;->a:Ljava/lang/String;

    iput-object p2, p0, Laqz;->b:Laqw;

    return-void
.end method


# virtual methods
.method public final a(Laux;)V
    .locals 3

    iget-object v0, p0, Laqz;->a:Ljava/lang/String;

    iget-object v1, p0, Laqz;->b:Laqw;

    sget-object v2, Lara;->a:Laqd;

    iget-object v1, v1, Laqw;->e:Lava;

    invoke-virtual {p1}, Lact;->h()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Lact;->c(ILandroid/os/Parcel;)V

    return-void
.end method
