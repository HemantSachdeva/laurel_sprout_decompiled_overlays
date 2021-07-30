.class public final Legw;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Legu;

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 1
    invoke-direct {v0, v2, v1, v1}, Legu;-><init>([BII)V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Legs;
    .locals 1

    new-instance v0, Legv;

    .line 8
    invoke-direct {v0, p0}, Legv;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static a(Legs;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Legt;

    .line 2
    invoke-direct {v0, p0}, Legt;-><init>(Legs;)V

    return-object v0
.end method

.method public static a(Legs;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 3
    const-string v0, "charset"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-interface {p0}, Legs;->a()I

    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Legs;->a([BII)V

    new-instance p0, Ljava/lang/String;

    .line 7
    invoke-direct {p0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method
