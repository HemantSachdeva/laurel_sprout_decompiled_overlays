.class final Lcfg;
.super Lcfo;
.source "PG"


# instance fields
.field final synthetic a:Lcfh;


# direct methods
.method public constructor <init>(Lcfh;)V
    .locals 0

    iput-object p1, p0, Lcfg;->a:Lcfh;

    invoke-direct {p0}, Lcfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcfg;->a:Lcfh;

    iget-object v0, v0, Lcfh;->ad:Ljava/util/LinkedHashSet;

    .line 1
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcfo;

    .line 2
    invoke-virtual {v1, p1}, Lcfo;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
