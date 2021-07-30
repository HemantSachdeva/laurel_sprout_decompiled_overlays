.class final Leck;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lecp;

.field final synthetic b:Lega;


# direct methods
.method public constructor <init>(Lecp;Lega;)V
    .locals 0

    iput-object p1, p0, Leck;->a:Lecp;

    iput-object p2, p0, Leck;->b:Lega;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Leck;->a:Lecp;

    iget-object v0, v0, Lecp;->a:Lebe;

    iget-object v1, p0, Leck;->b:Lega;

    .line 1
    invoke-interface {v0, v1}, Lebe;->a(Lega;)V

    return-void
.end method
