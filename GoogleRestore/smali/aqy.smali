.class public final synthetic Laqy;
.super Ljava/lang/Object;

# interfaces
.implements Lard;


# instance fields
.field private final a:Landroid/accounts/Account;

.field private final b:[B

.field private final c:[B

.field private final d:[B

.field private final e:[B

.field private final f:[B

.field private final g:I

.field private final h:[B

.field private final i:Landroid/content/ComponentName;

.field private final j:Laqw;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;[B[B[B[B[BI[BLandroid/content/ComponentName;Laqw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqy;->a:Landroid/accounts/Account;

    iput-object p2, p0, Laqy;->b:[B

    iput-object p3, p0, Laqy;->c:[B

    iput-object p4, p0, Laqy;->d:[B

    iput-object p5, p0, Laqy;->e:[B

    iput-object p6, p0, Laqy;->f:[B

    iput p7, p0, Laqy;->g:I

    iput-object p8, p0, Laqy;->h:[B

    iput-object p9, p0, Laqy;->i:Landroid/content/ComponentName;

    iput-object p10, p0, Laqy;->j:Laqw;

    return-void
.end method


# virtual methods
.method public final a(Laux;)V
    .locals 11

    iget-object v0, p0, Laqy;->a:Landroid/accounts/Account;

    iget-object v1, p0, Laqy;->b:[B

    iget-object v2, p0, Laqy;->c:[B

    iget-object v3, p0, Laqy;->d:[B

    iget-object v4, p0, Laqy;->e:[B

    iget-object v5, p0, Laqy;->f:[B

    iget v6, p0, Laqy;->g:I

    iget-object v7, p0, Laqy;->h:[B

    iget-object v8, p0, Laqy;->i:Landroid/content/ComponentName;

    iget-object v9, p0, Laqy;->j:Laqw;

    sget-object v10, Lara;->a:Laqd;

    iget-object v9, v9, Laqw;->e:Lava;

    invoke-virtual {p1}, Lact;->h()Landroid/os/Parcel;

    move-result-object v10

    invoke-static {v10, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {v10, v8}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v10, v9}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v10}, Lact;->c(ILandroid/os/Parcel;)V

    return-void
.end method
