.class public abstract Ldib;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ldhw;

.field public static final b:Ldib;


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldhz;

    .line 1
    sget-object v1, Ldkl;->b:[B

    invoke-direct {v0, v1}, Ldhz;-><init>([B)V

    sput-object v0, Ldib;->b:Ldib;

    .line 2
    invoke-static {}, Ldhm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ldia;

    invoke-direct {v0}, Ldia;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ldhu;

    invoke-direct {v0}, Ldhu;-><init>()V

    .line 2
    :goto_0
    sput-object v0, Ldib;->a:Ldhw;

    .line 3
    sget v0, Ldhs;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldib;->c:I

    return-void
.end method

.method static a(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    .line 5
    if-ge p1, p0, :cond_0

    .line 6
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x42

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Beginning index larger than ending index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 0
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static a(Ljava/lang/String;)Ldib;
    .locals 2

    new-instance v0, Ldhz;

    .line 10
    sget-object v1, Ldkl;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ldhz;-><init>([B)V

    return-object v0
.end method

.method public static a([B)Ldib;
    .locals 2

    array-length v0, p0

    .line 7
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ldib;->a([BII)Ldib;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Ldib;
    .locals 2

    add-int v0, p1, p2

    .line 8
    array-length v1, p0

    invoke-static {p1, v0, v1}, Ldib;->a(III)I

    new-instance v0, Ldhz;

    sget-object v1, Ldib;->a:Ldhw;

    .line 9
    invoke-interface {v1, p0, p1, p2}, Ldhw;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ldhz;-><init>([B)V

    return-object v0
.end method

.method static b([B)Ldib;
    .locals 1

    new-instance v0, Ldhz;

    .line 22
    invoke-direct {v0, p0}, Ldhz;-><init>([B)V

    return-object v0
.end method

.method static b([BII)Ldib;
    .locals 1

    new-instance v0, Ldhv;

    .line 23
    invoke-direct {v0, p0, p1, p2}, Ldhv;-><init>([BII)V

    return-object v0
.end method

.method static d(I)Ldhx;
    .locals 1

    new-instance v0, Ldhx;

    .line 12
    invoke-direct {v0, p0}, Ldhx;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)B
.end method

.method public abstract a()I
.end method

.method protected abstract a(II)I
.end method

.method protected abstract a(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract a(Ldhr;)V
.end method

.method protected abstract a([BI)V
.end method

.method public abstract b(I)B
.end method

.method public abstract c(I)Ldib;
.end method

.method public abstract c()Z
.end method

.method public abstract d()Ldie;
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Ldib;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final f()[B
    .locals 2

    invoke-virtual {p0}, Ldib;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 13
    sget-object v0, Ldkl;->b:[B

    return-object v0

    .line 14
    :cond_0
    new-array v1, v0, [B

    .line 15
    invoke-virtual {p0, v1, v0}, Ldib;->a([BI)V

    return-object v1
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 20
    sget-object v0, Ldkl;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ldib;->a()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Ldib;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 20
    :goto_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Ldib;->c:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldib;->a()I

    move-result v0

    .line 11
    invoke-virtual {p0, v0, v0}, Ldib;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Ldib;->c:I

    :cond_1
    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Ldht;

    invoke-direct {v0, p0}, Ldht;-><init>(Ldib;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 16
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ldib;->a()I

    move-result v2

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ldib;->a()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_0

    .line 19
    invoke-static {p0}, Ldmg;->a(Ldib;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 16
    :cond_0
    const/16 v2, 0x2f

    .line 19
    invoke-virtual {p0, v2}, Ldib;->c(I)Ldib;

    move-result-object v2

    invoke-static {v2}, Ldmg;->a(Ldib;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 16
    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
