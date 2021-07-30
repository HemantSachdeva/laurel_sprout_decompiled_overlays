.class public abstract Ldxp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final c:Ljava/util/BitSet;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/BitSet;

    .line 1
    const/16 v1, 0x7f

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 2
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 3
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x30

    :goto_0
    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_1

    :cond_1
    sput-object v0, Ldxp;->c:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "name"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ldxp;->d:Ljava/lang/String;

    .line 8
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "token must have at least 1 tchar"

    invoke-static {v0, v2}, Lcrj;->a(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 12
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eqz p2, :cond_1

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x3a

    :cond_1
    sget-object v4, Ldxp;->c:Ljava/util/BitSet;

    .line 13
    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 13
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v0

    aput-object p1, v2, v1

    const-string p1, "Invalid character \'%s\' in key name \'%s\'"

    invoke-static {p1, v2}, Lcrq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    iput-object p1, p0, Ldxp;->a:Ljava/lang/String;

    .line 14
    sget-object p2, Lcqp;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Ldxp;->b:[B

    return-void
.end method

.method public static a(Ljava/lang/String;Ldxn;)Ldxp;
    .locals 1

    new-instance v0, Ldxm;

    .line 20
    invoke-direct {v0, p0, p1}, Ldxm;-><init>(Ljava/lang/String;Ldxn;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lees;)Ldxp;
    .locals 2

    new-instance v0, Ldxo;

    .line 21
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ldxo;-><init>(Ljava/lang/String;Lees;[B)V

    return-object v0
.end method

.method static a(Ljava/lang/String;ZLdxs;)Ldxp;
    .locals 1

    new-instance v0, Ldxr;

    .line 22
    invoke-direct {v0, p0, p1, p2}, Ldxr;-><init>(Ljava/lang/String;ZLdxs;)V

    return-object v0
.end method


# virtual methods
.method public abstract a([B)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/lang/Object;)[B
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Ldxp;

    iget-object v0, p0, Ldxp;->a:Ljava/lang/String;

    iget-object p1, p1, Ldxp;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 16
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ldxp;->a:Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ldxp;->a:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Key{name=\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
