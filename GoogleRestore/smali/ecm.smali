.class final Lecm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldxt;

.field final synthetic b:Lecp;


# direct methods
.method public constructor <init>(Lecp;Ldxt;)V
    .locals 0

    iput-object p1, p0, Lecm;->b:Lecp;

    iput-object p2, p0, Lecm;->a:Ldxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lecm;->b:Lecp;

    iget-object v0, v0, Lecp;->a:Lebe;

    iget-object v1, p0, Lecm;->a:Ldxt;

    .line 1
    invoke-interface {v0, v1}, Lebe;->a(Ldxt;)V

    return-void
.end method
