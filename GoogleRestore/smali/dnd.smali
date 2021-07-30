.class public final Ldnd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private volatile a:[B

.field private volatile b:Ldlj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldnc;

    invoke-direct {v0}, Ldnc;-><init>()V

    sput-object v0, Ldnd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([BLdlj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    const-string v1, "Must have a message or bytes"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Ldnd;->a:[B

    iput-object p2, p0, Ldnd;->b:Ldlj;

    return-void
.end method


# virtual methods
.method public final a(Ldlj;Ldjr;)Ldlj;
    .locals 1

    :try_start_0
    iget-object v0, p0, Ldnd;->b:Ldlj;

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Ldlj;->V()Ldli;

    move-result-object p1

    iget-object v0, p0, Ldnd;->a:[B

    invoke-interface {p1, v0, p2}, Ldli;->a([BLdjr;)V

    invoke-interface {p1}, Ldli;->h()Ldlj;

    move-result-object p1

    iput-object p1, p0, Ldnd;->b:Ldlj;

    :cond_0
    iget-object p1, p0, Ldnd;->b:Ldlj;
    :try_end_0
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    return-object p1

    .line 2
    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Ldnd;->a:[B

    if-nez p2, :cond_0

    iget-object p2, p0, Ldnd;->b:Ldlj;

    .line 4
    invoke-interface {p2}, Ldlj;->h()I

    move-result p2

    new-array p2, p2, [B

    :try_start_0
    iget-object v0, p0, Ldnd;->b:Ldlj;

    .line 5
    invoke-static {p2}, Ldij;->a([B)Ldij;

    move-result-object v1

    invoke-interface {v0, v1}, Ldlj;->a(Ldij;)V

    iput-object p2, p0, Ldnd;->a:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    .line 6
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_0
    :goto_0
    iget-object p2, p0, Ldnd;->a:[B

    .line 7
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Ldnd;->a:[B

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
