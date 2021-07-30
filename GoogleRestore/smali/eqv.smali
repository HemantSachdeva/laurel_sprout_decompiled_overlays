.class final Leqv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lero;


# direct methods
.method public constructor <init>(Lero;)V
    .locals 0

    iput-object p1, p0, Leqv;->a:Lero;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Leqv;->a:Lero;

    iget-object v1, v0, Lero;->f:Ljava/util/List;

    iget-object v0, v0, Lero;->m:Ljava/lang/String;

    .line 1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Leqv;->a:Lero;

    .line 2
    invoke-virtual {v0}, Lero;->c()V

    return-void
.end method
