.class final Lck;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lba;

.field final synthetic b:Lue;

.field final synthetic c:Lbr;


# direct methods
.method public constructor <init>(Lbr;Lba;Lue;)V
    .locals 0

    iput-object p1, p0, Lck;->c:Lbr;

    iput-object p2, p0, Lck;->a:Lba;

    iput-object p3, p0, Lck;->b:Lue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lck;->c:Lbr;

    iget-object v1, p0, Lck;->a:Lba;

    iget-object v2, p0, Lck;->b:Lue;

    .line 1
    invoke-virtual {v0, v1, v2}, Lbr;->b(Lba;Lue;)V

    return-void
.end method
