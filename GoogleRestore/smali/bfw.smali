.class final Lbfw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbox;


# instance fields
.field final synthetic a:Lbpl;

.field final synthetic b:Lbfx;


# direct methods
.method public constructor <init>(Lbfx;Lbpl;)V
    .locals 0

    iput-object p1, p0, Lbfw;->b:Lbfx;

    iput-object p2, p0, Lbfw;->a:Lbpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbpi;)V
    .locals 1

    iget-object p1, p0, Lbfw;->b:Lbfx;

    iget-object p1, p1, Lbfx;->b:Ljava/util/Map;

    iget-object v0, p0, Lbfw;->a:Lbpl;

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
