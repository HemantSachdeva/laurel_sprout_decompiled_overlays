.class public final Lafc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lafc;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2

    .line 2
    invoke-static {p0}, Lcqv;->a(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3
    const-string v1, "password must not be null or empty"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    .line 4
    sget-object v0, Lcqp;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)[B
    .locals 2

    .line 5
    invoke-static {p0}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "pattern must not be empty"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    .line 6
    invoke-static {p0}, Lbjf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcqp;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method
