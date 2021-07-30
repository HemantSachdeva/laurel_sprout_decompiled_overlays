.class public final synthetic Laha;
.super Ljava/lang/Object;

# interfaces
.implements Lbpa;


# instance fields
.field private final a:Lahc;


# direct methods
.method public constructor <init>(Lahc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laha;->a:Lahc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 6

    iget-object v0, p0, Laha;->a:Lahc;

    sget-object v1, Lahc;->a:Lacw;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Restore device and SIM contacts failed after retries."

    invoke-virtual {v1, v4, v3}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lahc;->d:Lacy;

    sget-object v3, Laxj;->c:Laxj;

    sget-object v4, Laxl;->c:Laxl;

    instance-of v5, p1, Lbep;

    if-eqz v5, :cond_0

    check-cast p1, Lbep;

    invoke-virtual {p1}, Lbep;->a()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v1, v3, v4, p1}, Lacy;->a(Laxj;Laxl;I)V

    invoke-static {}, Lahc;->a()V

    iget-object p1, v0, Lahc;->b:Lahb;

    invoke-interface {p1, v2}, Lahb;->b(Z)V

    return-void
.end method
