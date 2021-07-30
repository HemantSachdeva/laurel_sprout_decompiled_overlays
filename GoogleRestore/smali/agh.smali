.class final synthetic Lagh;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Supplier;


# instance fields
.field private final a:Lagm;


# direct methods
.method public constructor <init>(Lagm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lagh;->a:Lagm;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lagh;->a:Lagm;

    iget-object v1, v0, Lagm;->k:Lbmy;

    iget-object v0, v0, Lagm;->n:Ljava/lang/String;

    new-instance v2, Lbmx;

    invoke-direct {v2, v0}, Lbmx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lbes;->a(Lbha;)Lbpi;

    move-result-object v0

    return-object v0
.end method
