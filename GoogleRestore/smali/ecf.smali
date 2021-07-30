.class final Lecf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lebe;

.field final synthetic b:Lecq;


# direct methods
.method public constructor <init>(Lecq;Lebe;)V
    .locals 0

    iput-object p1, p0, Lecf;->b:Lecq;

    iput-object p2, p0, Lecf;->a:Lebe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lecf;->b:Lecq;

    iget-object v0, v0, Lecq;->d:Lebc;

    iget-object v1, p0, Lecf;->a:Lebe;

    .line 1
    invoke-interface {v0, v1}, Lebc;->a(Lebe;)V

    return-void
.end method
