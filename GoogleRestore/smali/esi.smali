.class public final Lesi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lesc;


# static fields
.field private static final f:Ljava/util/Hashtable;


# instance fields
.field public final a:Lesb;

.field public b:Lesj;

.field public c:Lesj;

.field public final d:[B

.field public final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    .line 1
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lesi;->f:Ljava/util/Hashtable;

    .line 2
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    const-string v2, "GOST3411"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5
    const-string v2, "MD2"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    const-string v2, "MD4"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v2, "MD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v2, "RIPEMD128"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v2, "RIPEMD160"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v2, "SHA-1"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v2, "SHA-224"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v2, "SHA-256"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 15
    const-string v3, "SHA-384"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v3, "SHA-512"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v2, "Tiger"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v2, "Whirlpool"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lesb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lesi;->a:Lesb;

    const/16 p1, 0x40

    new-array p1, p1, [B

    iput-object p1, p0, Lesi;->d:[B

    const/16 p1, 0x60

    new-array p1, p1, [B

    iput-object p1, p0, Lesi;->e:[B

    return-void
.end method

.method public static a([BB)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 28
    aget-byte v1, p0, v0

    xor-int/2addr v1, p1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 5

    iget-object v0, p0, Lesi;->a:Lesb;

    iget-object v1, p0, Lesi;->e:[B

    .line 19
    const/16 v2, 0x40

    invoke-interface {v0, v1, v2}, Lesb;->a([BI)V

    iget-object v0, p0, Lesi;->c:Lesj;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lesi;->a:Lesb;

    .line 20
    invoke-interface {v3, v0}, Lesj;->a(Lesj;)V

    iget-object v0, p0, Lesi;->a:Lesb;

    iget-object v3, p0, Lesi;->e:[B

    const/16 v4, 0x20

    .line 21
    invoke-interface {v0, v3, v2, v4}, Lesb;->a([BII)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lesi;->a:Lesb;

    iget-object v3, p0, Lesi;->e:[B

    array-length v4, v3

    .line 22
    invoke-interface {v0, v3, v1, v4}, Lesb;->a([BII)V

    .line 21
    :goto_0
    iget-object v0, p0, Lesi;->a:Lesb;

    .line 23
    invoke-interface {v0, p1, v1}, Lesb;->a([BI)V

    :goto_1
    iget-object p1, p0, Lesi;->e:[B

    array-length v0, p1

    if-ge v2, v0, :cond_1

    .line 24
    aput-byte v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lesi;->b:Lesj;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lesi;->a:Lesb;

    .line 25
    invoke-interface {v0, p1}, Lesj;->a(Lesj;)V

    return-void

    :cond_2
    iget-object p1, p0, Lesi;->a:Lesb;

    iget-object v0, p0, Lesi;->d:[B

    array-length v2, v0

    .line 26
    invoke-interface {p1, v0, v1, v2}, Lesb;->a([BII)V

    return-void
.end method

.method public final a([BI)V
    .locals 2

    iget-object v0, p0, Lesi;->a:Lesb;

    .line 27
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lesb;->a([BII)V

    return-void
.end method
