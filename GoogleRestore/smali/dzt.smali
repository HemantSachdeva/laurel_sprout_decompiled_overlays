.class public final Ldzt;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(I)Ldzs;
    .locals 1

    .line 1
    const/high16 v0, 0x100000

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    new-instance v0, Ldzs;

    .line 2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v0, p0}, Ldzs;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
