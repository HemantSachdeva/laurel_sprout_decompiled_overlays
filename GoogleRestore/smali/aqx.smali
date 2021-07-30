.class public final synthetic Laqx;
.super Ljava/lang/Object;

# interfaces
.implements Lard;


# instance fields
.field private final a:Landroid/accounts/Account;

.field private final b:[B

.field private final c:[B

.field private final d:[B

.field private final e:Landroid/content/ComponentName;

.field private final f:Laqw;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;[B[B[BLandroid/content/ComponentName;Laqw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqx;->a:Landroid/accounts/Account;

    iput-object p2, p0, Laqx;->b:[B

    iput-object p3, p0, Laqx;->c:[B

    iput-object p4, p0, Laqx;->d:[B

    iput-object p5, p0, Laqx;->e:Landroid/content/ComponentName;

    iput-object p6, p0, Laqx;->f:Laqw;

    return-void
.end method


# virtual methods
.method public final a(Laux;)V
    .locals 7

    iget-object v0, p0, Laqx;->a:Landroid/accounts/Account;

    iget-object v1, p0, Laqx;->b:[B

    iget-object v2, p0, Laqx;->c:[B

    iget-object v3, p0, Laqx;->d:[B

    iget-object v4, p0, Laqx;->e:Landroid/content/ComponentName;

    iget-object v5, p0, Laqx;->f:Laqw;

    sget-object v6, Lara;->a:Laqd;

    iget-object v5, v5, Laqw;->e:Lava;

    invoke-virtual {p1}, Lact;->h()Landroid/os/Parcel;

    move-result-object v6

    invoke-static {v6, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {v6, v4}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v6, v5}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v6}, Lact;->c(ILandroid/os/Parcel;)V

    return-void
.end method
