.class public final Lafb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:I


# direct methods
.method public constructor <init>(I[BI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Laso;->a(I)Laso;

    move-result-object v0

    sget-object v1, Laso;->b:Laso;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Laso;->c:Laso;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    nop

    .line 1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid hashing algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v2, v0}, Lcrj;->a(ZLjava/lang/Object;)V

    iput p1, p0, Lafb;->a:I

    .line 3
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lafb;->b:[B

    iput p3, p0, Lafb;->c:I

    return-void
.end method
