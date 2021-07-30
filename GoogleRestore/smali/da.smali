.class final Lda;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ll;


# instance fields
.field public a:Lj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lda;->a:Lj;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lda;->a:Lj;

    if-nez v0, :cond_0

    new-instance v0, Lj;

    .line 3
    invoke-direct {v0, p0}, Lj;-><init>(Ll;)V

    iput-object v0, p0, Lda;->a:Lj;

    :cond_0
    return-void
.end method

.method final a(Lh;)V
    .locals 1

    iget-object v0, p0, Lda;->a:Lj;

    .line 2
    invoke-virtual {v0, p1}, Lj;->a(Lh;)V

    return-void
.end method

.method public final ab()Lj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lda;->a()V

    iget-object v0, p0, Lda;->a:Lj;

    return-object v0
.end method
