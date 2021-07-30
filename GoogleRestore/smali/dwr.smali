.class public final Ldwr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Lcxd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ldwr;->a:Ljava/nio/charset/Charset;

    .line 2
    sget-object v0, Ldxt;->b:Lcxd;

    sput-object v0, Ldwr;->b:Lcxd;

    return-void
.end method

.method public static a(Ljava/lang/String;Ldwq;)Ldxp;
    .locals 3

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    nop

    :goto_0
    invoke-static {p0, v1, p1}, Ldxp;->a(Ljava/lang/String;ZLdxs;)Ldxp;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([[B)Ldxt;
    .locals 2

    .line 5
    new-instance v0, Ldxt;

    .line 6
    array-length v1, p0

    shr-int/lit8 v1, v1, 0x1

    .line 7
    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Ldxt;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ldxt;)[[B
    .locals 4

    invoke-virtual {p0}, Ldxt;->b()I

    move-result v0

    .line 8
    new-array v0, v0, [[B

    iget-object v1, p0, Ldxt;->c:[Ljava/lang/Object;

    .line 9
    instance-of v2, v1, [[B

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ldxt;->b()I

    move-result p0

    .line 12
    invoke-static {v1, v3, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    nop

    :goto_0
    iget v1, p0, Ldxt;->d:I

    if-ge v3, v1, :cond_1

    add-int v1, v3, v3

    .line 10
    invoke-virtual {p0, v3}, Ldxt;->a(I)[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 11
    invoke-virtual {p0, v3}, Ldxt;->b(I)[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    return-object v0
.end method
