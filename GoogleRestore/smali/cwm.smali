.class abstract Lcwm;
.super Lcwo;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcwo;-><init>()V

    .line 1
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcwm;->a([BI)V

    return-void
.end method

.method protected a([BI)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
