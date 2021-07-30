.class public final Lbgz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lbgs;

.field public b:[Lbdv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbha;
    .locals 2

    iget-object v0, p0, Lbgz;->a:Lbgs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v0, v1}, Lbir;->b(ZLjava/lang/Object;)V

    new-instance v0, Lbgy;

    iget-object v1, p0, Lbgz;->b:[Lbdv;

    .line 2
    invoke-direct {v0, p0, v1}, Lbgy;-><init>(Lbgz;[Lbdv;)V

    return-object v0
.end method
