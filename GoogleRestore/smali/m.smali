.class final Lm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:Li;

.field final b:Lk;


# direct methods
.method public constructor <init>(Lvx;Li;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lo;->a(Ljava/lang/Object;)Lk;

    move-result-object p1

    iput-object p1, p0, Lm;->b:Lk;

    iput-object p2, p0, Lm;->a:Li;

    return-void
.end method


# virtual methods
.method final a(Ll;Lh;)V
    .locals 2

    .line 2
    invoke-static {p2}, Lj;->b(Lh;)Li;

    move-result-object v0

    iget-object v1, p0, Lm;->a:Li;

    .line 3
    invoke-static {v1, v0}, Lj;->a(Li;Li;)Li;

    move-result-object v1

    iput-object v1, p0, Lm;->a:Li;

    iget-object v1, p0, Lm;->b:Lk;

    .line 4
    invoke-interface {v1, p1, p2}, Lk;->a(Ll;Lh;)V

    iput-object v0, p0, Lm;->a:Li;

    return-void
.end method
