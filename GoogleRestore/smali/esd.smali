.class public final Lesd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:Lesc;

.field public e:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lesb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lesi;

    invoke-direct {v0, p1}, Lesi;-><init>(Lesb;)V

    iput-object v0, p0, Lesd;->d:Lesc;

    const/16 p1, 0x20

    new-array p1, p1, [B

    iput-object p1, p0, Lesd;->e:[B

    return-void
.end method
